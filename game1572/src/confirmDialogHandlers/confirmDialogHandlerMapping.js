import * as gameMethods from '../gameMethods';
import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerMapping extends confirmDialogHandler {
    phaseLogic(data) {
        const result = super.phaseLogic(data);

        const diceAssigned = this.G.planningDiceAssigned[this.G.phase.index] > 0;
        const selectableHexes = this.G.map.selectableHexes.length > 0;

        if (diceAssigned && !selectableHexes) {
            gameMethods.addToJournalCurrentDay(this.G, 'No unmapped hexes available');
        }

        if (!diceAssigned || !selectableHexes) {
            result.endGamePhase = true;
        }

        return result;
    }
}