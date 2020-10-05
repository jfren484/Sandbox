import * as gameConstants from './gameConstants';
import { dieRollHandlerFactory } from './dieRollHandlers/dieRollHandlerFactory';
import { mapHelper } from './mapHelper';

export function addToJournalCurrentDay(G, entry) {
    addToJournal(G.journalCurrentDay, formatPhaseLabel(G) + '; ' + entry);
}

export function addToJournal(journal, entry) {
    journal.push({
        timestamp: new Date(),
        entry: entry
    });
}

export function beginPhase(G, ctx) {
    G.phase = G.phase && G.phase.nextPhase
        ? G.phase.nextPhase
        : gameConstants.gamePhases.planning;

    let endTurn = false;
    if (G.phase.index === gameConstants.gamePhases.cartographerTrail.index) {
        endTurn = true;

        if (G.expeditionType.placeTrail && G.counters.movementProgress.value >= 3) {
            if (new mapHelper(G).getAvailableTrailLocations()) {
                G.phaseComment = 'Choose location for trail';
                endTurn = false;
            } else {
                addToJournalCurrentDay(G, 'No trail locations available');
            }
        }
    }

    if (!endTurn) {
        generatePhaseDialog(G);
    }

    const nativeContactIndex = gameConstants.gamePhases.nativeContact.index;
    if (G.phase.index === nativeContactIndex && G.planningDiceAssigned[nativeContactIndex] > 0 && G.eclipsePredictionTurnsRemaining > 0) {
        ctx.events.setStage('nativeContactEclipseInstructions');
    } else if (endTurn) {
        ctx.events.endTurn();
    } else {
        ctx.events.endStage();
    }
}

export function confirmDialog(G, ctx, data) {
    const currentPhase = G.phase.key;
    const currentHex = G.map.hexes[G.map.currentLocationKey];

    G.dialog = {};

    let diceCount = 0;
    switch (G.phase.index) {
        case gameConstants.gamePhases.planning.index:
            diceCount = 5;
            break;

        case gameConstants.gamePhases.movement.index:
        case gameConstants.gamePhases.exploring.index:
        case gameConstants.gamePhases.hunting.index:
        case gameConstants.gamePhases.interests.index:
            diceCount = 2;
            break;

        case gameConstants.gamePhases.nativeContact.index:
            diceCount = currentHex.advancedCiv ? 1 : 2;
            break;

        default:
            break;
    }

    let endGamePhase = false;
    switch (G.phase.index) {
        case gameConstants.gamePhases.movement.index:
        case gameConstants.gamePhases.mapping.index:
        case gameConstants.gamePhases.exploring.index:
        case gameConstants.gamePhases.nativeContact.index:
        case gameConstants.gamePhases.hunting.index:
            if (G.planningDiceAssigned[G.phase.index] === 0) {
                endGamePhase = true;
            } else if (G.phase.index === gameConstants.gamePhases.mapping.index && G.map.selectableHexes.length === 0) {
                addToJournalCurrentDay(G, 'No unmapped hexes available');
                endGamePhase = true;
            }
            break;

        case gameConstants.gamePhases.interests.index:
            if (getStage(ctx) === 'interestsDescribeWonder') {
                G.map.hexes[G.map.currentLocationKey].interestType.description = data;
                addToJournalCurrentDay(G, 'Wonder: ' + data);
            } else if (!currentHex.interestType.isPending) {
                endGamePhase = true;
            }
            break;

        case gameConstants.gamePhases.eatRations.index:
            if (G.map.hexes[G.map.currentLocationKey].migration) {
                addToJournalCurrentDay(G, 'Migration - No Food Consumed (' + G.counters.food.value + ' remaining)');
            } else if (G.counters.food.value > 0) {
                updateCounter(G.counters.food, -1);
                addToJournalCurrentDay(G, 'Food -1 (' + G.counters.food.value + ' remaining)');
            } else {
                updateCounter(G.counters.conquistadors, -1);
                addToJournalCurrentDay(G, 'No Food - Conquistadors -1 (' + G.counters.conquistadors.value + ' remaining)');
            }
            break;

        case gameConstants.gamePhases.mapTravel.index:
            if (G.map.adjacentTravelCandidates.length === 0) {
                G.travelDirection = gameConstants.hexDirections.none;
                addToJournalCurrentDay(G, 'No hexes available as travel destinations');

                endGamePhase = true;
            }
            break;

        case gameConstants.gamePhases.moraleAdjustment.index:
            updateCounter(G.counters.morale, G.travelDirection.moraleAdjustment);
            addToJournalCurrentDay(G, '' + G.phaseComment + ' (' + G.counters.morale.value + ' remaining)');

            if (G.counters.morale.value === 0) {
                updateCounter(G.counters.conquistadors, -1);
                addToJournalCurrentDay(G, 'No Morale - Conquistadors -1 (' + G.counters.conquistadors.value + ' remaining)');
            }
            break;

        case gameConstants.gamePhases.trackDay.index:
            // TODO: mark days?;
            addToJournalCurrentDay(G, 'Increment Days Completed to ' + (G.days + 1));
            break;

        case gameConstants.gamePhases.journalEntry.index:
            if (data) {
                addToJournalCurrentDay(G, 'User comment: ' + data);
            }
            break;

        case gameConstants.gamePhases.cartographerTrail.index:
            break;

        default:
            break;
    }

    if (endGamePhase) {
        ctx.events.endGamePhase(currentPhase + 'End');
    } else {
        if (diceCount > 0) {
            setupDiceTray(G.diceTray, diceCount, formatPhaseLabel(G));

            if (getStage(ctx) === 'nativeContactEclipseInstructions') {
                G.enableSelectDiceValues = true;
                G.diceTray.mode = gameConstants.diceTrayModes.postroll;
            }
        }

        ctx.events.endStage();
    }
}

export function formatPhaseLabel(G) {
    return 'Phase ' + G.phase.index + ': ' + G.phase.label;
}

export function generatePhaseDialog(G) {
    G.dialog = {
        title: formatPhaseLabel(G),
        text: G.phase.instructions
    };

    if (G.phase.index === gameConstants.gamePhases.nativeContact.index && G.eclipsePredictionTurnsRemaining > 0) {
        G.dialog.content = 'Eclipse Predicted: Choose the values for each die.';

        addToJournalCurrentDay(G, 'Eclipse');

        return;
    }

    G.phaseComment = '';
    G.diegoMendozaBonus = 0;

    const currentHex = G.map.hexes[G.map.currentLocationKey];
    let skip = false;

    switch (G.phase.index) {
        case gameConstants.gamePhases.mapping.index:
            if (G.planningDiceAssigned[G.phase.index] > 0) {
                new mapHelper(G).getAdjacentUnmapped();
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
            new mapHelper(G).getAdjacentTravelCandidates();

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

export function getStage(ctx) {
	return ctx.activePlayers ? ctx.activePlayers[0] : '';
}

export function handlePhaseRoll(G, confirmed) {
    const handler = dieRollHandlerFactory.createDieRollHandler(G);

    const result = handler.handlePhaseRoll(confirmed);

    G.diceTray.extraContent = [
        result.rollDescription,
        result.resultDescription
    ];

    return result;
}

export function randomD6() {
    return Math.floor(Math.random() * 6) + 1;
}

export function rollDice(diceTray, mode) {
    diceTray.dice = diceTray.dice.map(d6 => d6.locked ? d6 : { id: d6.id, value: randomD6() }).sort((a, b) => a.value - b.value);
	diceTray.mode = mode ?? gameConstants.diceTrayModes.postroll;
}

export function rollDiceForPhase2to7(G, ctx) {
    rollDice(G.diceTray, G.phase.canReroll ? gameConstants.diceTrayModes.rerollAll : gameConstants.diceTrayModes.postroll);
    handlePhaseRoll(G, false);
    ctx.events.endStage();
}

export function setupDiceTray(diceTray, count, title, value) {
	diceTray.mode = gameConstants.diceTrayModes.preroll;
	diceTray.title = title ?? '';
	diceTray.dice = Array(count).fill(value ?? '?').map((d6, i) => { return { id: i, value: d6 }; });
	diceTray.extraContent = '';
}

export function updateCounter(counter, adjValue) {
    counter.value = Math.max(0, Math.min(6, counter.value + adjValue));
}
