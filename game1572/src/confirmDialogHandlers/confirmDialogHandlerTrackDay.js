import * as gameMethods from '../gameMethods';
import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerTrackDay extends confirmDialogHandler {
    phaseLogic(data) {
        const result = super.phaseLogic(data);

        // TODO: mark days?;
        gameMethods.addToJournalCurrentDay(this.G, 'Increment Days Completed to ' + (this.G.days + 1));

        return result;
    }
}