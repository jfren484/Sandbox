import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerEarlyPhases extends confirmDialogHandler {
    getDiceCount() {
        return 2;
    }

    phaseLogic(data) {
        const result = super.phaseLogic(data);

        if (this.G.planningDiceAssigned[this.G.phase.index] === 0) {
            result.endGamePhase = true;
        }

        return result;
    }
}