import * as gameMethods from '../gameMethods';
import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerJournalEntry extends confirmDialogHandler {
    phaseLogic(data) {
        const result = super.phaseLogic(data);

        if (data) {
            gameMethods.addToJournalCurrentDay(this.G, 'User comment: ' + data);
        }

        return result;
    }
}