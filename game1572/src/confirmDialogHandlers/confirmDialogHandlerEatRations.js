import * as gameMethods from '../gameMethods';
import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerEatRations extends confirmDialogHandler {
    phaseLogic(data) {
        const result = super.phaseLogic(data);

        let count, journalEntryStart;
        if (this.currentHex.migration) {
            count = this.G.counters.food.value;
            journalEntryStart = 'Migration - No Food Consumed';
        } else if (this.G.counters.food.value > 0) {
            gameMethods.updateCounter(this.G.counters.food, -1);
            count = this.G.counters.food.value;
            journalEntryStart = 'Food -1';
        } else {
            gameMethods.updateCounter(this.G.counters.conquistadors, -1);
            count = this.G.counters.conquistadors.value;
            journalEntryStart = 'No Food - Conquistadors -1';
        }

        gameMethods.addToJournalCurrentDay(this.G, journalEntryStart + ' (' + count + ' remaining)');

        return result;
    }
}