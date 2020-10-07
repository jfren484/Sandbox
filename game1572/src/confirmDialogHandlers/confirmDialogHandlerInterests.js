import * as gameMethods from '../gameMethods';
import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerInterests extends confirmDialogHandler {
    getDiceCount() {
        return 2;
    }

    phaseLogic(data) {
        const result = super.phaseLogic(data);

        if (this.stage === 'interestsDescribeWonder') {
            this.currentHex.interestType.description = data;
            gameMethods.addToJournalCurrentDay(this.G, 'Wonder: ' + data);
        } else if (!this.currentHex.interestType.isPending) {
            result.endGamePhase = true;
        }

        return result;
    }
}