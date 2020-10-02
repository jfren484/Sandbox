/* eslint-disable no-unused-vars */

import * as gameConstants from './gameConstants';
import { dieRollHandlerExploring } from './dieRollHandlers/dieRollHandlerExploring';
import { dieRollHandlerHunting } from './dieRollHandlers/dieRollHandlerHunting';
import { dieRollHandlerInterests } from './dieRollHandlers/dieRollHandlerInterests';
import { dieRollHandlerMapping } from './dieRollHandlers/dieRollHandlerMapping';
import { dieRollHandlerMovement } from './dieRollHandlers/dieRollHandlerMovement';
import { dieRollHandlerNativeContact } from './dieRollHandlers/dieRollHandlerNativeContact';

export function acceptRoll(G, ctx) {
    const currentPhase = G.phase.key;

    const result = handlePhaseRoll(G, true);

    if (result.trailPending) {
        if (getAvailableTrailLocations(G)) {
            ctx.events.setStage(currentPhase + 'ChooseTrailLocation');
        } else {
            addToJournal(G.journalCurrentDay, 'No trail locations available');
            ctx.events.setStage(currentPhase + 'End');
        }
    } else if (result.lagosDeOroPending) {
        getLagosDeOroFirstLocations(G);
        ctx.events.setStage(currentPhase + 'ChooseLagosDeOro1');
    } else if (result.wonderPending) {
        ctx.events.setStage(currentPhase + 'DescribeWonder');
    } else {
        ctx.events.setStage(currentPhase + 'End');
    }
}

export function addConquistadorInPlanning(G) {
	if (G.diceTrayPlanning.dice.count < 4) {
		return;
	}

	const required = 4;
	const val = G.diceTrayPlanning.dice[2].value;
    if (val !== 1 && G.diceTrayPlanning.dice.filter(d6 => d6.value === val).length >= required) {
        updateCounter(G.counters.conquistadors, 1);
		G.diceTrayPlanning.dice = G.diceTrayPlanning.dice.filter(d6 => d6.value !== val);

        addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + '; +Conquistador (' + (5 - G.diceTrayPlanning.dice.length) + ' ' + val + 's)');

		// TODO: this will use all 5 dice if there is a 5-of-a-kind. the user should be able to choose whether to use all 5 or just 4 in this scenario.
	}
}

export function addToJournal(journal, entry) {
    journal.push({
        timestamp: new Date(),
        entry: entry
    });
}

export function beginPhase(G, ctx, phase, overrideStage) {
    G.phase = phase;
    generatePhaseDialog(G);

    if (overrideStage) {
        ctx.events.setStage(overrideStage);
    } else {
        ctx.events.endStage();
    }
}

export function chooseTrailLocation(G, ctx, trailKey, trailDirection) {
    G.map.availableTrailLocations = [];
    G.map.trails[trailKey] = {
        hexKey: G.map.currentLocationKey,
        direction: trailDirection
    };
    addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + '; Chose trail location: ' + trailKey);
    ctx.events.endStage();
}

export function confirmDialog(G, ctx, diceCount) {
    const currentPhase = G.phase.key;

    G.dialog = {};

    let setStage = false, endTurn = false;

    switch (G.phase.index) {
        case gameConstants.gamePhases.movement.index:
        case gameConstants.gamePhases.mapping.index:
        case gameConstants.gamePhases.exploring.index:
        case gameConstants.gamePhases.nativeContact.index:
        case gameConstants.gamePhases.hunting.index:
            if (G.planningDiceAssigned[G.phase.index] === 0) {
                setStage = true;
            } else if (G.phase.index === gameConstants.gamePhases.mapping.index && G.map.selectableHexes.length === 0) {
                addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + '; No unmapped hexes available');
                setStage = true;
            }
            break;

        case gameConstants.gamePhases.interests.index:
            if (!G.map.hexes[G.map.currentLocationKey].interestType.isPending) {
                setStage = true;
            }
            break;

        case gameConstants.gamePhases.mapTravel.index:
            if (G.map.adjacentTravelCandidates.length === 0) {
                G.travelDirection = gameConstants.hexDirections.none;
                addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + '; No hexes available as travel destinations');

                setStage = true;
            }
            break;

        case gameConstants.gamePhases.journalEntry.index:
            if (!G.expeditionType.placeTrail || G.counters.movementProgress.value < 3) {
                endTurn = true;
            }
            break;

        default:
            break;
    }

    if (endTurn) {
        ctx.events.endTurn();
    } else if (setStage) {
        ctx.events.setStage(currentPhase + 'End');
    } else {
        if (diceCount > 0) {
            setupDiceTray(G.diceTray, diceCount, formatPhaseLabel(G));
        }

        ctx.events.endStage();
    }
}

export function createLagosDeOro(G) {
    const locations = G.map.lagosDeOroLocations;
    const x = locations
        .map(hexKey => G.map.hexes[hexKey].x)
        .sort()[0];
    const y = locations
        .map(hexKey => G.map.hexes[hexKey].y)
        .sort()[0];
    const connections = locations
        .flatMap(hexKey => G.map.hexes[hexKey].connections)
        .filter(conn => !locations.includes(conn.hexKey));

    const lagos = {
        ...hexTemplate,
        key: x + ',' + y,
        x: x,
        y: y,
        connections: connections,
        interestType: locations
            .map(hexKey => G.map.hexes[hexKey].interestType)
            .find(it => it.isPending)
            ?? gameConstants.interestTypes.none,
        riverType: gameConstants.riverTypes.bodyOfWater,
        terrainType: gameConstants.terrainTypes.lagosDeOro
    };

    lagos.terrainType.suffix = locations.filter(hexKey => G.map.hexes[hexKey].x === lagos.x).length > 1
        ? ' A'
        : ' B';

    for (let hexKey in G.map.hexes) {
        const hex = G.map.hexes[hexKey];
        hex.connections
            .filter(conn => locations.includes(conn.hexKey))
            .forEach(conn => conn.hexKey = lagos.key);
    }

    delete G.map.hexes[locations[0]];
    delete G.map.hexes[locations[1]];
    delete G.map.hexes[locations[2]];

    G.map.hexes[lagos.key] = lagos;
    G.map.lagosDeOroLocations = [];
}

export function cureFever(G) {
	const onesRequired = 3 + G.expeditionType.wildAdjust;
    if (G.diceTrayPlanning.dice.filter(d6 => d6.value === 1).length >= onesRequired) {
        G.fever = false;
		G.diceTrayPlanning.dice = G.diceTrayPlanning.dice.slice(onesRequired);

        addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + '; Cured Fever with ' + onesRequired + ' 1s');
	}
}

export function formatPhaseLabel(G) {
    return 'Phase ' + G.phase.index + ': ' + G.phase.label;
}

const hexTemplate = {
    key: '0,0',
    x: 0,
    y: 0,

    advancedCiv: false,
    cataract: false,
    connections: [],
    friendlyVillages: 0,
    interestType: gameConstants.interestTypes.none,
    lagosDeOroCannotBeInitiator: false,
    lagosDeOroCannotBeTarget: false,
    riverType: undefined,
    terrainType: gameConstants.terrainTypes.unexplored,
    villages: 0,
    winGame: false
};

export function generateMapHexes() {
    let hexes = {
        '0,0.5': {
            ...hexTemplate,
            x: 0,
            y: 0.5,
            terrainType: gameConstants.terrainTypes.mountains,
            interestType: gameConstants.interestTypes.pending
        },
        '0,1.5': {
            ...hexTemplate,
            x: 0,
            y: 1.5,
            cataract: true,
            riverType: gameConstants.riverTypes.source,
            terrainType: gameConstants.terrainTypes.mountains
        },
        '0,2.5': {
            ...hexTemplate,
            x: 0,
            y: 2.5
        },
        '1,0': {
            ...hexTemplate,
            x: 1,
            y: 0
        },
        '1,1': {
            ...hexTemplate,
            x: 1,
            y: 1,
            riverType: gameConstants.riverTypes.swse
        },
        '1,2': {
            ...hexTemplate,
            x: 1,
            y: 2
        },
        '2,0.5': {
            ...hexTemplate,
            x: 2,
            y: 0.5
        },
        '2,1.5': {
            ...hexTemplate,
            x: 2,
            y: 1.5,
            riverType: gameConstants.riverTypes.nwne,
            terrainType: gameConstants.terrainTypes.mountains
        },
        '2,2.5': {
            ...hexTemplate,
            x: 2,
            y: 2.5
        },
        '3,0': {
            ...hexTemplate,
            x: 3,
            y: 0
        },
        '3,1': {
            ...hexTemplate,
            x: 3,
            y: 1,
            riverType: gameConstants.riverTypes.swse
        },
        '3,2': {
            ...hexTemplate,
            x: 3,
            y: 2
        },
        '4,0.5': {
            ...hexTemplate,
            x: 4,
            y: 0.5
        },
        '4,1.5': {
            ...hexTemplate,
            x: 4,
            y: 1.5,
            riverType: gameConstants.riverTypes.nwne
        },
        '4,2.5': {
            ...hexTemplate,
            x: 4,
            y: 2.5
        },
        '5,0': {
            ...hexTemplate,
            x: 5,
            y: 0
        },
        '5,1': {
            ...hexTemplate,
            x: 5,
            y: 1,
            riverType: gameConstants.riverTypes.swse
        },
        '5,2': {
            ...hexTemplate,
            x: 5,
            y: 2
        },
        '6,0.5': {
            ...hexTemplate,
            x: 6,
            y: 0.5,
            interestType: gameConstants.interestTypes.pending
        },
        '6,1.5': {
            ...hexTemplate,
            x: 6,
            y: 1.5,
            riverType: gameConstants.riverTypes.nwse
        },
        '6,2.5': {
            ...hexTemplate,
            x: 6,
            y: 2.5
        },
        '7,1': {
            ...hexTemplate,
            x: 7,
            y: 1
        },
        '7,2': {
            ...hexTemplate,
            x: 7,
            y: 2,
            riverType: gameConstants.riverTypes.nwne
        },
        '7,3': {
            ...hexTemplate,
            x: 7,
            y: 3
        },
        '8,0.5': {
            ...hexTemplate,
            x: 8,
            y: 0.5
        },
        '8,1.5': {
            ...hexTemplate,
            x: 8,
            y: 1.5,
            riverType: gameConstants.riverTypes.swne
        },
        '8,2.5': {
            ...hexTemplate,
            x: 8,
            y: 2.5
        },
        '9,0': {
            ...hexTemplate,
            x: 9,
            y: 0
        },
        '9,1': {
            ...hexTemplate,
            x: 9,
            y: 1,
            riverType: gameConstants.riverTypes.swse
        },
        '9,2': {
            ...hexTemplate,
            x: 9,
            y: 2
        },
        '10,0.5': {
            ...hexTemplate,
            x: 10,
            y: 0.5
        },
        '10,1.5': {
            ...hexTemplate,
            x: 10,
            y: 1.5,
            riverType: gameConstants.riverTypes.nwse
        },
        '10,2.5': {
            ...hexTemplate,
            x: 10,
            y: 2.5
        },
        '11,1': {
            ...hexTemplate,
            x: 11,
            y: 1
        },
        '11,2': {
            ...hexTemplate,
            x: 11,
            y: 2,
            riverType: gameConstants.riverTypes.nwne
        },
        '11,3': {
            ...hexTemplate,
            x: 11,
            y: 3
        },
        '12,0.5': {
            ...hexTemplate,
            x: 12,
            y: 0.5
        },
        '12,1.5': {
            ...hexTemplate,
            x: 12,
            y: 1.5,
            riverType: gameConstants.riverTypes.swse
        },
        '12,2.5': {
            ...hexTemplate,
            x: 12,
            y: 2.5
        },
        '13,1': {
            ...hexTemplate,
            x: 13,
            y: 1
        },
        '13,2': {
            ...hexTemplate,
            x: 13,
            y: 2,
            lagosDeOroCannotBeInitiator: true,
            riverType: gameConstants.riverTypes.nws
        },
        '13,3': {
            ...hexTemplate,
            x: 13,
            y: 3,
            lagosDeOroCannotBeInitiator: true,
            riverType: gameConstants.riverTypes.nse
        },
        '14,1.5': {
            ...hexTemplate,
            x: 14,
            y: 1.5
        },
        '14,2.5': {
            ...hexTemplate,
            x: 14,
            y: 2.5,
            lagosDeOroCannotBeInitiator: true
        },
        '14,3.5': {
            ...hexTemplate,
            x: 14,
            y: 3.5,
            lagosDeOroCannotBeInitiator: true,
            lagosDeOroCannotBeTarget: true,
            riverType: gameConstants.riverTypes.delta,
            winGame: true
        }
    };

    for (let hexKey in hexes) {
        const hex = hexes[hexKey];
        hex.key = hexKey;

        // Create new array (the above syntax has all hexes sharing the same arrays)
        hex.connections = [];

        // Build the connections
        for (let hexDirectionName in gameConstants.hexDirections) {
            if (hexDirectionName === gameConstants.hexDirections.none.name) {
                continue;
            }

            const hexDirection = gameConstants.hexDirections[hexDirectionName];
            const neighborHexKey = (hex.x + hexDirection.dirX) + ',' + (hex.y + hexDirection.dirY);

            if (hexes[neighborHexKey]) {
                hex.connections.push({
                    direction: hexDirectionName,
                    hexKey: neighborHexKey,
                    isDownstream: !!hex.riverType && hexDirectionName === gameConstants.riverTypesDownstreamDirections[hex.riverType]
                });
            }
        }
    }

    return hexes;
}

export function generatePhaseDialog(G) {
    G.dialog = {
        title: formatPhaseLabel(G),
        text: G.phase.instructions
    };

    if (G.phase.index === gameConstants.gamePhases.nativeContact.index && G.eclipsePredictionTurnsRemaining > 0) {
        G.dialog.content = 'Eclipse Predicted: Choose the values for each die.';

        addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + '; Eclipse');

        return;
    }

    G.phaseComment = '';
    G.diegoMendozaBonus = 0;

    const currentHex = G.map.hexes[G.map.currentLocationKey];
    let skip = false;

    switch (G.phase.index) {
        case gameConstants.gamePhases.mapping.index:
            if (G.planningDiceAssigned[G.phase.index] > 0) {
                getAdjacentUnmapped(G);
                if (G.map.selectableHexes.length === 0) {
                    G.phaseComment = 'No unmapped adjacent hexes';
                    skip = true;
                }
            }
            // fall through

        case gameConstants.gamePhases.movement.index:
        case gameConstants.gamePhases.exploring.index:
        case gameConstants.gamePhases.nativeContact.index:
        case gameConstants.gamePhases.hunting.index:
            const diceAssigned = G.planningDiceAssigned[G.phase.index];

            if (diceAssigned === 0) {
                G.phaseComment = 'No dice assigned to ' + G.phase.label;
                skip = true;
            }

            if (G.phaseComment === '') {
                G.phaseComment = 'Dice assigned: ' + diceAssigned;

                if (diceAssigned > 1) {
                    G.phaseComment += ', bonus to roll: +' + (diceAssigned - 1);
                }

                if (G.phase.index === gameConstants.gamePhases.hunting.index && G.expeditionType.huntingBonus) {
                    G.phaseComment += '; Botany Expedion bonus: +' + G.expeditionType.huntingBonus;
                }

                const terrainAdj = currentHex.terrainType.diceRollAdjustments[G.phase.index];
                if (terrainAdj) {
                    G.phaseComment += '; terrain ' + (terrainAdj > 0 ? 'bonus' : 'penalty') + ': ' + (terrainAdj > 0 ? '+' : '') + terrainAdj;
                }

                const friendlyVillages = G.phase.friendlyVillagesHelp ? currentHex.friendlyVillages : 0;
                if (friendlyVillages) {
                    G.phaseComment += '; friendly village' + (friendlyVillages > 1 ? 's' : '') + ': +' + friendlyVillages;
                }

                if (G.phase.index === gameConstants.gamePhases.nativeContact.index && currentHex.advancedCiv) {
                    G.phaseComment += '; Advanced Civilization (only 1 die rolled)'
                }
            }

            break;

        case gameConstants.gamePhases.interests.index:
            if (currentHex.interestType.id !== gameConstants.interestTypes.pending.id) {
                G.phaseComment = 'No interest to resolve';
                skip = true;
            }

            break;

        case gameConstants.gamePhases.eatRations.index:
            if (currentHex.migration) {
                G.phaseComment = 'Migration: No Food Consumed';
                if (G.counters.muskets.value > 0) {
                    G.phaseComment += '; You may expend 1 musket to fill your Food reserves to 6.';
                    G.dialog.specialAction = 'Hunt Migration with Musket';
                }
            } else {
                if (G.counters.food.value > 0) {
                    G.phaseComment = 'Food -1';
                } else {
                    G.phaseComment = 'No Food! Conquistadors -1';

                    if (G.counters.conquistadors.value === 0) {
                        G.phaseComment += ', all Conquistadors have been lost';
                    }
                }
            }

            break;

        case gameConstants.gamePhases.mapTravel.index:
            getAdjacentTravelCandidates(G);

            if (G.map.adjacentTravelCandidates.length === 0) {
                G.phaseComment = 'Not enough Movement Progress to Travel';
                skip = true;
            } else {
                G.phaseComment = 'Choose hex to Travel to; click current hex to skip travel phase and remain in the same hex.';
            }

            break;

        case gameConstants.gamePhases.moraleAdjustment.index:
            G.phaseComment = 'Travel direction: ' + G.travelDirection.name +
                '; Morale adjustment: ' + (G.travelDirection.moraleAdjustment > 0 ? '+' : '') + G.travelDirection.moraleAdjustment;
            break;

        case gameConstants.gamePhases.trackDay.index:
            G.phaseComment = 'Day: ' + (G.days + 1);
            break;

        case gameConstants.gamePhases.journalEntry.index:
            G.phaseComment = 'Daily record:\r\n' + G.journalCurrentDay.map(e => e.entry).join('\r\n');
            G.dialog.input = {
                name: 'journalEntry',
                label: 'Your summary of the day:',
                required: false,
                defaultValue: ''
            };
            break;

        case gameConstants.gamePhases.cartographerTrail.index:
            G.phaseComment = 'As a Cartography expedition, you may place a trail to an adjacent hex.';
            break;

        default:
            break;
    }

    if (skip) {
        G.phaseComment += '; skipping phase.';
    } else if (G.phase.index === gameConstants.gamePhases.mapping.index) {
        G.phaseComment += '; Choose hex to Map';
    }

    G.dialog.content = G.phaseComment;
}

export function getAdjacentTravelCandidates(G) {
    G.map.adjacentTravelCandidates = [];
    if (G.counters.movementProgress.value < 3) {
        // No chance of moving anywhere - abort
        return;
    }

    const currentHex = G.map.hexes[G.map.currentLocationKey];

    for (let i = 0; i < currentHex.connections.length; ++i) {
        const connection = currentHex.connections[i];
        const hex = G.map.hexes[connection.hexKey];

        if (!hex.terrainType.isUnexplored && (!currentHex.cataract || !connection.isDownstream)) {
            const trailKey = [connection.hexKey, G.map.currentLocationKey].sort();
            const movementCost = G.map.trails[trailKey] ? 3 : 5;

            if (G.counters.movementProgress.value >= movementCost) {
                G.map.adjacentTravelCandidates.push({
                    target: connection.hexKey,
                    hexDirection: gameConstants.hexDirections[connection.direction],
                    movementCost: movementCost,
                    isDownstream: connection.isDownstream
                });
            }
        }
    }

    if (G.map.adjacentTravelCandidates.length > 0) {
        G.map.adjacentTravelCandidates.push({
            target: G.map.currentLocationKey,
            hexDirection: gameConstants.hexDirections.none,
            movementCost: 0,
            isDownstream: false
        });
    }
}

export function getAdjacentUnmapped(G, baseHexKey = G.map.currentLocationKey) {
	G.map.selectableHexes = [];
    const baseHex = G.map.hexes[baseHexKey];

    for (let i = 0; i < baseHex.connections.length; ++i) {
        const hexKey = baseHex.connections[i].hexKey;
        const hex = G.map.hexes[hexKey];

        if (hex.terrainType.isUnexplored) {
            G.map.selectableHexes.push(hexKey);
        }
    }
}

export function getAvailableTrailLocations(G) {
    G.map.availableTrailLocations = [];
    const currentHex = G.map.hexes[G.map.currentLocationKey];

    for (let i = 0; i < currentHex.connections.length; ++i) {
        const connection = currentHex.connections[i];

        if (currentHex.cataract && connection.isDownstream) {
            continue;
        }

        const hex = G.map.hexes[connection.hexKey];
        if (hex.cataract && hex.connections.find(conn => conn.hexKey === G.map.currentLocationKey && conn.isDownstream)) {
            continue;
        }

        const trailKey = [connection.hexKey, G.map.currentLocationKey].sort();
        if (!G.map.trails[trailKey]) {
            G.map.availableTrailLocations.push({ key: trailKey, direction: gameConstants.hexDirections[connection.direction] });
        }
    }

    if (G.map.availableTrailLocations.length > 0) {
        G.phaseComment = 'Choose location for trail';
    }

    return G.map.availableTrailLocations.length > 0;
}

export function getLagosDeOroFirstLocations(G) {
    const currentHex = G.map.hexes[G.map.currentLocationKey];
    const middle = {
        x: (currentHex.x + 14.0) / 2,
        y: (currentHex.y + 3.5) / 2
    };

    let minDist = 20;
    G.map.selectableHexes = Object
        .keys(G.map.hexes)
        .filter(hexKey => G.map.hexes[hexKey].terrainType.isUnexplored)
        .map(hexKey => {
            const hex = G.map.hexes[hexKey];
            const dist = Math.sqrt((middle.x - hex.x) ** 2 + (middle.y - hex.y) ** 2);

            if (dist < minDist) {
                minDist = dist;
            }

            return {
                hexKey: hexKey,
                distance: dist
            }
        })
        .filter(hexDist => hexDist.distance === minDist)
        .map(hexDist => hexDist.hexKey);
}

export function getLagosDeOroSecondLocations(G) {
    getAdjacentUnmapped(G, G.map.lagosDeOroLocations[0]);
}

export function getLagosDeOroThirdLocations(G) {
    G.map.lagosDeOroLocations.sort();

    const a = G.map.hexes[G.map.lagosDeOroLocations[0]];
    const b = G.map.hexes[G.map.lagosDeOroLocations[1]];

    let selectableHexes;
    if (a.x === b.x) {
        const y = (a.y + b.y) / 2;
        selectableHexes = [
            (a.x - 1) + ',' + y,
            (a.x + 1) + ',' + y
        ];
    } else if (a.y < b.y) {
        selectableHexes = [
            a.x + ',' + (a.y + 1),
            b.x + ',' + (b.y - 1)
        ];
    } else {
        selectableHexes = [
            a.x + ',' + (a.y - 1),
            b.x + ',' + (b.y + 1)
        ];
    }

    G.map.selectableHexes = selectableHexes.filter(hexKey => G.map.hexes[hexKey] && G.map.hexes[hexKey].terrainType.isUnexplored);
}

export function getStage(ctx) {
	return ctx.activePlayers ? ctx.activePlayers[0] : '';
}

export function handlePhaseRoll(G, confirmed) {
    let handler;

    switch (G.phase.index) {
        case gameConstants.gamePhases.movement.index:
            handler = new dieRollHandlerMovement(G);
            break;
        case gameConstants.gamePhases.mapping.index:
            handler = new dieRollHandlerMapping(G);
            break;
        case gameConstants.gamePhases.exploring.index:
            handler = new dieRollHandlerExploring(G);
            break;
        case gameConstants.gamePhases.nativeContact.index:
            handler = new dieRollHandlerNativeContact(G);
            break;
        case gameConstants.gamePhases.hunting.index:
            handler = new dieRollHandlerHunting(G);
            break;
        case gameConstants.gamePhases.interests.index:
            handler = new dieRollHandlerInterests(G);
            break;
        default:
            break;
    }

    return handler.handlePhaseRoll(confirmed);
}

export function handlePlanningRoll(G) {
    for (let i = 2; i <= 6; ++i) {
        G.planningDiceAssigned[i] = 0;
    }

    for (let i = 0; i < G.diceTrayPlanning.dice.length; ++i) {
        ++G.planningDiceAssigned[G.diceTrayPlanning.dice[i].assignedValue];
    }

    G.diceTrayPlanning.dice = [];

    addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + ', Dice Assigned: ' + Object.keys(G.planningDiceAssigned)
        .filter(i => G.planningDiceAssigned[i] > 0)
        .map(i => gameConstants.digitWords[G.planningDiceAssigned[i]] + ' "' + i + '"' + (G.planningDiceAssigned[i] > 1 ? 's' : ''))
        .join(', '));
}

export function incrementRoll(G) {
    G.diegoMendozaBonus = 1;
    G.usedDiegoMendoza = true;
    handlePhaseRoll(G, false);
}

export function minZeroMaxSix(value) {
    return Math.max(0, Math.min(6, value));
}

export function randomD6() {
    return Math.floor(Math.random() * 6) + 1;
}

export function rollDice(diceTray, mode) {
    diceTray.dice = diceTray.dice.map(d6 => d6.locked ? d6 : { id: d6.id, value: randomD6() }).sort((a, b) => a.value - b.value);
	diceTray.mode = mode ?? gameConstants.diceTrayModes.postroll;
}

export function rollDiceForPhase2to7(G, ctx, mode) {
    rollDice(G.diceTray, mode);
    handlePhaseRoll(G, false);
    ctx.events.endStage();
}

export function rollDie(diceTray, index) {
    diceTray.dice[index].value = randomD6();
}

export function setupDiceTray(diceTray, count, title, value) {
	diceTray.mode = gameConstants.diceTrayModes.preroll;
	diceTray.title = title ?? '';
	diceTray.dice = Array(count).fill(value ?? '?').map((d6, i) => { return { id: i, value: d6 }; });
	diceTray.extraContent = '';
}

export function travelTo(G, key) {
    const travel = G.map.adjacentTravelCandidates.find(adj => adj.target === key);
    if (key !== G.map.currentLocationKey) {
        const destHex = G.map.hexes[key];
        if (G.expeditionType.trailLeadsToInterestOnTerrainChange &&
            travel.movementCost === 3 &&
            destHex.interestType.isNone &&
            destHex.terrainType !== G.map.hexes[G.map.currentLocationKey].terrainType) {
            destHex.interestType = gameConstants.interestTypes.pending;
        }

        G.map.currentLocationKey = key;

        updateCounter(G.counters.movementProgress, -travel.movementCost + (travel.isDownstream ? 1 : 0));
    }

    G.travelDirection = travel.hexDirection;
}

export function updateCounter(counter, adjValue) {
    counter.value = minZeroMaxSix(counter.value + adjValue);
}

export function useMusketToReroll(G, ctx) {
    addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + '; First ' + G.diceTray.extraContent.join("; ") + "; Used Musket");
    updateCounter(G.counters.muskets.value, -1);

    if (this.G.expeditionType.musketBonus) {
        this.G.musketBonus = this.G.expeditionType.musketBonus;
    }

    rollDiceForPhase2to7(G, ctx);
}