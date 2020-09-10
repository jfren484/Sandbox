/* eslint-disable no-unused-vars */

import * as gameConstants from './gameConstants';

export function addAdvancedCivilization(G) {
    const currentHex = G.map.hexes[G.map.currentLocationKey];
    for (let i = 0; i < currentHex.connections.length; ++i) {
        const dist1Hex = G.map.hexes[currentHex.connections[i].hexKey];
        for (let i = 0; i < dist1Hex.connections.length; ++i) {
            const dist2Hex = G.map.hexes[dist1Hex.connections[i].hexKey];
            if (!dist2Hex.advancedCiv) {
                dist2Hex.advancedCiv = true;
            }
        }

        if (!dist1Hex.advancedCiv) {
            dist1Hex.advancedCiv = true;
        }
    }
}

export function addConquistadorInPlanning(G) {
	if (G.diceTrayPlanning.dice.count < 4) {
		return;
	}

	const required = 4;
	const val = G.diceTrayPlanning.dice[2].value;
    if (val !== 1 && G.diceTrayPlanning.dice.filter(d6 => d6.value === val).length >= required) {
        setConquistadors(G, G.counters.conquistadors.value + 1);
		G.diceTrayPlanning.dice = G.diceTrayPlanning.dice.filter(d6 => d6.value !== val);

		// TODO: this will use all 5 dice if there is a 5-of-a-kind. the user should be able to choose whether to use all 5 or just 4 in this scenario.
	}
}

function canAddCataract(G) {
    const currentHex = G.map.hexes[G.map.currentLocationKey];

    if (!currentHex.riverType || currentHex.cataract) {
		return false;
	}

    const downstreamDirection = gameConstants.hexDirections[currentHex.riverType.downstream.name];

    const hexKey = (currentHex.x + downstreamDirection.dirX) + ',' + (currentHex.y + downstreamDirection.dirY);
    const trailKey = [hexKey, G.map.currentLocationKey].sort();
    if (G.map.trails[trailKey]) {
        return false;
    }

    return true;
}

export function cureFever(G) {
	const onesRequired = 3 + G.expeditionType.wildAdjust;
    if (G.diceTrayPlanning.dice.filter(d6 => d6.value === 1).length >= onesRequired) {
        setFever(G, false);
		G.diceTrayPlanning.dice = G.diceTrayPlanning.dice.slice(onesRequired);
	}
}

export function generateMapHexes() {
    const hexTemplate = {
        key: '0,0',
        x: 0,
        y: 0,

        advancedCiv: false,
        cataract: false,
        connections: [],
        friendlyVillages: 0,
        interestType: gameConstants.interestTypes.none,
        riverType: undefined,
        terrainType: gameConstants.terrainTypes.unexplored,
        villages: 0,
        winGame: false
    };

    let hexes = {
        '0,0.5': {
            ...hexTemplate,
            x: 0,
            y: 0.5,
            terrainType: gameConstants.terrainTypes.mountains
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
            riverType: gameConstants.riverTypes.nws
        },
        '13,3': {
            ...hexTemplate,
            x: 13,
            y: 3,
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
            y: 2.5
        },
        '14,3.5': {
            ...hexTemplate,
            x: 14,
            y: 3.5,
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
        for (let hexDirectionKey in gameConstants.hexDirections) {
            if (hexDirectionKey === gameConstants.hexDirections.none.name) {
                continue;
            }

            const hexDirection = gameConstants.hexDirections[hexDirectionKey];
            const neighborHexKey = (hex.x + hexDirection.dirX) + ',' + (hex.y + hexDirection.dirY);

            if (hexes[neighborHexKey]) {
                hex.connections.push({
                    direction: hexDirectionKey,
                    hexKey: neighborHexKey
                });
            }
        }
    }

    return hexes;
}

export function generatePhaseDialog(G) {
    G.phaseComment = '';
    let skip = false;

    switch (G.phase.index) {
        case gameConstants.gamePhases.mapping.index:
            if (G.map.adjacentUnmappedHexes.length === 0) {
                G.phaseComment = 'No unmapped adjacent hexes';
                skip = true;
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

                const currentHex = G.map.hexes[G.map.currentLocationKey];

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
            if (G.map.hexes[G.map.currentLocationKey].interestType !== gameConstants.interestTypes.pending) {
                G.phaseComment = 'No interest to resolve';
                skip = true;
            }

            break;

        case gameConstants.gamePhases.eatRations.index:
            if (G.counters.food.value > 0) {
                G.phaseComment = 'Food -1';
            } else {
                G.phaseComment = 'No Food! Conquistadors -1';

                if (G.counters.conquistadors.value === 0) {
                    G.phaseComment += ', all Conquistadors have been lost';
                }
            }

            break;

        case gameConstants.gamePhases.mapTravel.index:
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
            G.phaseComment = '<journal entry>';
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

    G.dialog = {
        title: 'Phase ' + G.phase.index + ': ' + G.phase.label,
        content: G.phaseComment,
        text: G.phase.instructions
    };
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

        if (hex.terrainType.name !== gameConstants.terrainTypes.unexplored.name && (!currentHex.cataract || currentHex.riverType.downstream.name !== connection.direction)) {
            const trailKey = [connection.hexKey, G.map.currentLocationKey].sort();
            const movementCost = G.map.trails[trailKey] ? 3 : 5;

            if (G.counters.movementProgress.value >= movementCost) {
                const direction = (hex.y < currentHex.y ? 'north' : hex.y > currentHex.y ? 'south' : '') +
                    (hex.x < currentHex.x ? 'west' : hex.x > currentHex.x ? 'east' : '');

                G.map.adjacentTravelCandidates.push({
                    target: connection.hexKey,
                    hexDirection: gameConstants.hexDirections[direction],
                    movementCost: movementCost,
                    downstreamTravel: !!currentHex.riverType && hex.downstream === direction
                });
            }
        }
    }

    if (G.map.adjacentTravelCandidates.length > 0) {
        G.map.adjacentTravelCandidates.push({
            target: G.map.currentLocationKey,
            hexDirection: gameConstants.hexDirections.none,
            movementCost: 0,
            downstreamTravel: false
        });
    }
}

export function getAdjacentUnmapped(G) {
	G.map.adjacentUnmappedHexes = [];
	const currentHex = G.map.hexes[G.map.currentLocationKey];

    for (let i = 0; i < currentHex.connections.length; ++i) {
        const hexKey = currentHex.connections[i].hexKey;
        const hex = G.map.hexes[hexKey];

        if (hex.terrainType.name === gameConstants.terrainTypes.unexplored.name) {
            G.map.adjacentUnmappedHexes.push(hexKey);
        }
    }
}

export function getAvailableTrailLocations(G) {
    G.map.trailPending = false;
    G.map.availableTrailLocations = [];
    const currentHex = G.map.hexes[G.map.currentLocationKey];

    for (let i = 0; i < currentHex.connections.length; ++i) {
        const connection = currentHex.connections[i];

        if (currentHex.cataract && currentHex.riverType.downstream.name === connection.direction) {
            continue;
        }

        const hex = G.map.hexes[connection.hexKey];
        if (hex.cataract && hex.riverType.downstream.reverse === connection.direction) {
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

export function getStage(ctx) {
	return ctx.activePlayers ? ctx.activePlayers[0] : '';
}

function handle_base(G) {
    const currentHex = G.map.hexes[G.map.currentLocationKey];
    const roll = G.diceTray.dice.reduce((acc, val) => acc + val.value, 0);
    const diceBonus = G.planningDiceAssigned[G.phase.index] - 1;
    const botanyBonus = G.phase.index === gameConstants.gamePhases.hunting.index && G.expeditionType.huntingBonus
        ? G.expeditionType.huntingBonus
        : 0;
    const terrainAdj = currentHex.terrainType.diceRollAdjustments[G.phase.index] ?? 0;
    const friendlyVillages = G.phase.friendlyVillagesHelp ? currentHex.friendlyVillages : 0;

    let data = {
        currentHex: currentHex,
        roll: roll,
        value: roll + diceBonus + botanyBonus + terrainAdj + friendlyVillages + G.musketBonus
    };

    const diceRollBonusDesc = diceBonus
        ? ', +' + diceBonus + ' extra dice'
        : '';
    const botanyBonusDesc = botanyBonus
        ? ', +' + botanyBonus + ' botany bonus'
        : '';
    const terrainAdjDesc = terrainAdj
        ? ', ' + (terrainAdj > 0 ? '+' : '') + terrainAdj + ' terrain ' + (terrainAdj > 0 ? 'bonus' : 'penalty') 
        : '';
    const friendlyVillagesDesc = friendlyVillages
        ? ', +' + friendlyVillages + ' friendly village' + (friendlyVillages > 1 ? 's' : '')
        : '';
    const musketBonusDesc = G.musketBonus
        ? ', +' + G.musketBonus + ' musket bonus'
        : '';
    const sumDesc = diceBonus || botanyBonus || terrainAdj || friendlyVillages || G.musketBonus
        ? ' = ' + data.value
        : '';

    G.diceTray.extraContent = [
        'Roll: ' + data.roll + diceRollBonusDesc + botanyBonusDesc + terrainAdjDesc + friendlyVillagesDesc + musketBonusDesc + sumDesc,
        'Result: '
    ];

    return data;
}

export function handleExploringRoll(G, confirmed) {
    const data = handle_base(G);

	switch (data.value) {
		case 0:
		case 1:
		case 2:
			if (confirmed) {
				if (G.expeditionType.deathRemovesFood) {
					setFood(G, G.counters.food.value - 1);
				} else {
                    setConquistadors(G, G.counters.conquistadors.value - 1);
				}
			}

			G.diceTray.extraContent[1] += G.expeditionType.deathRemovesFood ? 'Food -1' : 'Conquistador -1';
			break;

		case 3:
            if (confirmed && !G.fever && !G.expeditionType.immuneToFever && !data.currentHex.terrainType.immuneToFever) {
                setFever(G, true);
			}

            G.diceTray.extraContent[1] += G.fever
                ? '(Already Fevered)'
                : (G.expeditionType.immuneToFever || data.currentHex.terrainType.immuneToFever)
                    ? '(Immune to Fever)'
                    : '+Fever';
			break;

		case 4:
		case 5:
			if (confirmed) {
                setMovementProgress(G, G.counters.movementProgress.value - 1);
			}

			G.diceTray.extraContent[1] += 'Movement -1';
			break;

		case 6:
		case 7:
			if (confirmed) {
				if (G.expeditionType.allVillagesPeaceful) {
					++data.currentHex.friendlyVillages;
				} else {
                    ++data.currentHex.villages;
                    setMovementProgress(G, G.counters.movementProgress.value - 1);
				}
			}

            G.diceTray.extraContent[1] += '+Village ' + (G.expeditionType.allVillagesPeaceful ? '(Friendly)' : '(Movement -1)');
			break;

		case 8:
			if (confirmed) {
                setMorale(G, G.counters.morale.value + 1);
			}

			G.diceTray.extraContent[1] += 'Morale +1';
			break;

		case 9:
			if (confirmed) {
				G.map.trailPending = true;
			}

			G.diceTray.extraContent[1] += '+Trail';
			break;

		case 10:
		case 11:
		case 12:
		default:
            if (confirmed && data.currentHex.interestType.isNone) {
                data.currentHex.interestType = gameConstants.interestTypes.pending;
			}

            G.diceTray.extraContent[1] += data.currentHex.interestType.isNone ? '+Interest' : '(Hex already contains Interest)';
			break;
    }

    if (confirmed) {
        G.diceTray.dice = [];
        G.musketBonus = 0;
    }
}

export function handleInterestsRoll(G, confirmed) {
    const data = handle_base(G);
    let interest = gameConstants.interestTypes.pending;

    switch (data.value) {
        // TODO: handle switching interest to wonder after use
        case 2:
        case 3:
            interest = gameConstants.interestTypes.lagosDeOro;
            if (G.interestIds.includes(interest.id)) {
                interest = gameConstants.interestTypes.naturalWonder;
                break;
            }

            if (confirmed) {
                // TODO: Lagos De Oro
            }

            G.diceTray.extraContent[1] += 'Lagos De Oro: Draw a 3-hex lake halfway between your current location and the River Delta. ' +
                'The 3 hexes must all be adjacent to each other. Then draw a tiny island at the corner where the three hexes meet. ' +
                'The 3 hexes count as 1 hex for all purposes. You are immune to Fever while at Lagos De Oro.';
            break;

        case 4:
            interest = gameConstants.interestTypes.ruinedMission;
            if (G.interestIds.includes(interest.id)) {
                interest = gameConstants.interestTypes.naturalWonder;
                break;
            }

            if (confirmed) {
                setMuskets(G, G.counters.muskets.value + 5);
                G.map.trailPending = true;
            }

            G.diceTray.extraContent[1] += 'Ruined Mission: You find a crate of Muskets. Gain 5 Muskets. Add a Trail to any adjacent hex.';
            break;

        case 5:
            interest = gameConstants.interestTypes.migration;
            if (G.interestIds.includes(interest.id)) {
                interest = gameConstants.interestTypes.naturalWonder;
                break;
            }

            if (confirmed) {
                // TODO: Migration
            }

            G.diceTray.extraContent[1] += 'Migration: Skip the Ration Phase while in and adjacent to this hex. You may expend 1 musket to fill your Food Reserves to 6.';
            break;

        case 6:
        case 7:
        case 8:
            interest = gameConstants.interestTypes.naturalWonder;

            // Handle Wonder below
            break;

        case 9:
            interest = gameConstants.interestTypes.predictEclipse;
            if (G.interestIds.includes(interest.id)) {
                interest = gameConstants.interestTypes.naturalWonder;
                break;
            }

            if (confirmed) {
                G.eclipsePredictionTurnsRemaining = 2;
            }

            G.diceTray.extraContent[1] += 'Predict Eclipse: The next two times you roll on the Native Contact Chart, choose any result instead of rolling.';
            break;

        case 10:
            interest = gameConstants.interestTypes.princessKantyi;
            if (G.interestIds.includes(interest.id)) {
                interest = gameConstants.interestTypes.naturalWonder;
                break;
            }

            if (confirmed) {
                G.guides.princessKantyi = true;
            }

            G.diceTray.extraContent[1] += 'Princess Kantyi: Reroll 1s and 2s on either/both dice whenever rolling on the Native Contact Chart. This effect ' +
                'persists until the end of the game.';
            break;

        case 11:
        case 12:
        default:
            interest = gameConstants.interestTypes.diegoMendoza;
            if (G.interestIds.includes(interest.id)) {
                interest = gameConstants.interestTypes.naturalWonder;
                break;
            }

            if (confirmed) {
                setConquistadors(G, G.counters.conquistadors.value + 1);
                setMuskets(G, G.counters.muskets.value + 1);
                G.guides.diegoMendoza = true;
            }

            G.diceTray.extraContent[1] += 'Diego Mendoza: Gain 1 Conquistador and 1 Musket. You may add 1 to a total once per turn whenever rolling on ' +
                'Phases 2 - 7. This effect persists until the end of the game.';
            break;
    }

    if (interest.id === gameConstants.interestTypes.naturalWonder.id) {
        if (confirmed) {
            setMorale(G, G.counters.morale.value + 5);
            // TODO: Wonder
        }

        G.diceTray.extraContent[1] += 'Natural Wonder: Add 5 to you current Morale. Add 2 to your end game Victory Points if you win (for each Natural ' +
            'Wonder discovered). Describe this Natural Wonder in detail in your journal.';
    }

    if (confirmed) {
        data.currentHex.interestType = interest;
        G.interestIds.push(interest.id);
        G.diceTray.dice = [];
    }
}

export function handleHuntingRoll(G, confirmed) {
    const data = handle_base(G);

    switch (data.value) {
        case 0:
        case 1:
        case 2:
        case 3:
            if (confirmed) {
                if (G.expeditionType.deathRemovesFood) {
                    setFood(G, G.counters.food.value - 1);
                } else {
                    setConquistadors(G, G.counters.conquistadors.value - 1);
                }
            }

            G.diceTray.extraContent[1] += G.expeditionType.deathRemovesFood ? 'Food -1' : 'Conquistador -1';
            break;

        case 4:
            if (confirmed) {
                setMorale(G, G.counters.morale.value - 1);
            }

            G.diceTray.extraContent[1] += 'Morale -1';
            break;

        case 5:
            if (confirmed) {
                setFood(G, G.counters.food.value + 1);
                setMorale(G, G.counters.morale.value - 1);
            }

            G.diceTray.extraContent[1] += 'Morale -1, Food +1';
            break;

        case 6:
        case 7:
        case 8:
            if (confirmed) {
                setFood(G, G.counters.food.value + 1);
           }

            G.diceTray.extraContent[1] += 'Food +1';
            break;

        case 9:
        case 10:
            if (confirmed) {
                setFood(G, G.counters.food.value + 2);
            }

            G.diceTray.extraContent[1] += 'Food +2';
            break;

        case 11:
        case 12:
        default:
            if (confirmed) {
                setFood(G, G.counters.food.value + 2);
                setMorale(G, G.counters.morale.value + 1);
            }

            G.diceTray.extraContent[1] += 'Food +2, Morale +1';
            break;
	}

	if (confirmed) {
		G.diceTray.dice = [];
	}
}

export function handleMappingRoll(G, confirmed) {
    const data = handle_base(G);
	const targetHex = G.map.hexes[G.map.target];

    function setTerrainType(terrainType) {
        if (confirmed) {
            targetHex.terrainType = terrainType;
        }

        G.diceTray.extraContent[1] += terrainType.name;
    }

	switch (data.value) {
        case 2:
            setTerrainType(gameConstants.terrainTypes.swamp);
			break;

		case 3:
            setTerrainType(gameConstants.terrainTypes.hills);
			break;

		case 4:
            setTerrainType(gameConstants.terrainTypes.mountains);
			break;

		case 5:
            setTerrainType(gameConstants.terrainTypes.jungle);
			break;

		case 6:
		case 7:
		case 8:
		case 9:
            const currentTerrainType = data.currentHex.terrainType;

			if (confirmed) {
                targetHex.terrainType = currentTerrainType;
			}

			G.diceTray.extraContent[1] += 'Same as current hex (' + currentTerrainType.name + ')';
			break;

		case 10:
            setTerrainType(gameConstants.terrainTypes.forest);
			break;

		case 11:
            setTerrainType(gameConstants.terrainTypes.lake);
			break;

		case 12:
		default:
            setTerrainType(gameConstants.terrainTypes.plains);
			break;
	}

    if (G.diceTray.dice.includes(1) && canAddCataract(G)) {
		if (confirmed) {
			data.currentHex.cataract = true;
		}

		G.diceTray.extraContent[1] += '; +Cataract';
    }

	if (confirmed) {
		G.diceTray.dice = [];
	}
}

export function handleMovementRoll(G, confirmed) {
    const data = handle_base(G);

	switch (data.value) {
		case 0:
		case 1:
		case 2:
		case 3:
            if (confirmed) {
                if (G.expeditionType.deathRemovesFood) {
                    setFood(G, G.counters.food.value - 1);
                } else {
                    setConquistadors(G, G.counters.conquistadors.value - 1);
                }
            }

            G.diceTray.extraContent[1] += G.expeditionType.deathRemovesFood ? 'Food -1' : 'Conquistador -1';
			break;

		case 4:
		case 5:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 1);
                setFever(G, true);
			}

            G.diceTray.extraContent[1] += 'Movement +1, ' + (G.fever
                ? '(Already Fevered)'
                : (G.expeditionType.immuneToFever || data.currentHex.terrainType.immuneToFever)
                    ? '(Immune to Fever)'
                    : '+Fever');
			break;

		case 6:
		case 7:
		case 8:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 1);
				setMorale(G, G.counters.morale.value - 1);
			}

			G.diceTray.extraContent[1] += 'Movement +1, Morale -1';
			break;

		case 9:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 1);
			}

			G.diceTray.extraContent[1] += 'Movement +1';
			break;

		case 10:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 2);
			}

			G.diceTray.extraContent[1] += 'Movement +2';
			break;

		case 11:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 3);
			}

			G.diceTray.extraContent[1] += 'Movement +3';
			break;

		case 12:
		default:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 4);
			}

			G.diceTray.extraContent[1] += 'Movement +4';
			break;
    }

    if (confirmed) {
        G.diceTray.dice = [];
    }
}

export function handleNativeContactRoll(G, confirmed) {
    const data = handle_base(G);

    switch (data.value) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            if (confirmed) {
                addAdvancedCivilization(G);
            }

            G.diceTray.extraContent[1] += '+Advanced Civilization';
            break;

        case 5:
            if (confirmed && !G.fever && !G.expeditionType.immuneToFever && !data.currentHex.terrainType.immuneToFever) {
                setFever(G, true);
            }

            G.diceTray.extraContent[1] += G.fever
                ? '(Already Fevered)'
                : (G.expeditionType.immuneToFever || data.currentHex.terrainType.immuneToFever)
                    ? '(Immune to Fever)'
                    : '+Fever';
            break;

        case 6:
        case 7:
        case 8:
            if (confirmed) {
                if (G.expeditionType.allVillagesPeaceful) {
                    ++data.currentHex.friendlyVillages;
                } else {
                    ++data.currentHex.villages;
                    setMovementProgress(G, G.counters.movementProgress.value - 1);
                }
            }

            G.diceTray.extraContent[1] += '+Village ' + (G.expeditionType.allVillagesPeaceful ? '(Friendly)' : '(Movement -1)');
            break;

        case 9:
            if (confirmed) {
                G.map.trailPending = true;
            }

            G.diceTray.extraContent[1] += '+Trail';
            break;

        case 10:
            if (confirmed) {
                setFood(G, G.counters.food.value + 1);
                ++data.currentHex.friendlyVillages;
            }

            G.diceTray.extraContent[1] += 'Food +1, +Village (Friendly)';
            break;

        case 11:
        case 12:
        default:
            if (confirmed) {
                setMuskets(G, G.counters.muskets.value + 1);
                setFood(G, G.counters.food.value + 1);
                setMorale(G, G.counters.morale.value + 1);
                ++data.currentHex.friendlyVillages;
            }

            G.diceTray.extraContent[1] += 'Cache (Muskets, Food, and Morale + 1), +Village (Friendly)';
            break;
	}

	if (confirmed) {
		G.diceTray.dice = [];
	}
}

export function phasePlanningFinish(G, ctx) {
	for (let i = 2; i <= 6; ++i) {
		G.planningDiceAssigned[i] = 0;
	}

	for (let i = 0; i < G.diceTrayPlanning.dice.length; ++i) {
		++G.planningDiceAssigned[G.diceTrayPlanning.dice[i].assignedValue];
	}

	G.diceTrayPlanning.dice = [];
}

export function rollDice(diceTray, mode) {
	diceTray.dice = diceTray.dice.map(d6 => d6.locked ? d6 : { id: d6.id, value: Math.floor(Math.random() * 6) + 1 }).sort((a, b) => a.value - b.value);
	diceTray.mode = mode ?? gameConstants.diceTrayModes.postroll;
}

export function setConquistadors(G, value) {
    G.counters.conquistadors.value = Math.max(0, Math.min(6, value));
}

export function setFood(G, value) {
    G.counters.food.value = Math.max(0, Math.min(6, value));
}

export function setMorale(G, value) {
    G.counters.morale.value = Math.max(0, Math.min(6, value));
}

export function setMovementProgress(G, value) {
    G.counters.movementProgress.value = Math.max(0, Math.min(6, value));
}

export function setMuskets(G, value) {
    const newValue = Math.max(0, Math.min(6, value));

    if (newValue === G.counters.muskets.value - 1) {
        G.musketBonus = G.expeditionType.musketBonus;
    }

    G.counters.muskets.value = newValue;
}

export function setFever(G, fevered) {
    if (!fevered || (!G.fever && !G.expeditionType.immuneToFever && !G.map.hexes[G.map.currentLocationKey].terrainType.immuneToFever)) {
        G.fever = fevered;

        if (fevered) {
            setMorale(G, G.counters.morale.value - 1);
        }
    }
}

export function setupDiceTray(diceTray, count, title) {
	diceTray.mode = gameConstants.diceTrayModes.preroll;
	diceTray.title = title ?? '';
	diceTray.dice = Array(count).fill('?').map((d6, i) => { return { id: i, value: d6 }; });
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

        setMovementProgress(G, G.counters.movementProgress.value - travel.movementCost + (travel.downstreamTravel ? 1 : 0));
    }

    G.travelDirection = travel.hexDirection;
}