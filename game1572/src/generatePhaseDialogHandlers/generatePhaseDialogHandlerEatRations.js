import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';

export class generatePhaseDialogHandlerEatRations extends generatePhaseDialogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        if (this.currentHex.migration) {
            result.resultDescription = 'Migration: No Food Consumed';
            if (this.G.counters.muskets.value > 0) {
                result.resultDescription += '; You may expend 1 musket to fill your Food reserves to 6.';
                result.specialAction = 'Hunt Migration with Musket';
            }
        } else {
            if (this.G.counters.food.value > 0) {
                result.resultDescription = 'Food -1';
            } else {
                result.resultDescription = 'No Food! Conquistadors -1';

                if (this.G.counters.conquistadors.value === 0) {
                    result.resultDescription += ', all Conquistadors have been lost';
                }
            }
        }

        return result;
    }
}