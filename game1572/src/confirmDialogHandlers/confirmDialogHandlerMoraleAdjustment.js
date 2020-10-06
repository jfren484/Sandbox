import * as gameMethods from '../gameMethods';
import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerMoraleAdjustment extends confirmDialogHandler {
    phaseLogic(data) {
        const result = super.phaseLogic(data);

        gameMethods.updateCounter(this.G.counters.morale, this.G.travelDirection.moraleAdjustment);
        gameMethods.addToJournalCurrentDay(this.G, '' + this.G.phaseComment + ' (' + this.G.counters.morale.value + ' remaining)');

        if (this.G.counters.morale.value === 0) {
            gameMethods.updateCounter(this.G.counters.conquistadors, -1);
            gameMethods.addToJournalCurrentDay(this.G, 'No Morale - Conquistadors -1 (' + this.G.counters.conquistadors.value + ' remaining)');
        }

        return result;
    }
}