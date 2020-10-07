import * as gameConstants from './gameConstants';
import { dieRollHandlerFactory } from './dieRollHandlers/dieRollHandlerFactory';
import { generatePhaseDialogHandlerFactory } from './generatePhaseDialogHandlers/generatePhaseDialogHandlerFactory';
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
    G.phase = gameConstants.gamePhases[G.phase && G.phase.nextPhase
        ? G.phase.nextPhase
        : 'planning'];

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
        generatePhaseDialogHandlerFactory.createGeneratePhaseDialogHandler(G).generatePhaseDialog();
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

export function formatPhaseLabel(G) {
    return 'Phase ' + G.phase.index + ': ' + G.phase.label;
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
