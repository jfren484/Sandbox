import * as gameConstants from '../gameConstants';
import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';

export class generatePhaseDialogHandlerInterests extends generatePhaseDialogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        if (this.currentHex.interestType.id !== gameConstants.interestTypes.pending.id) {
            result.resultDescription = 'No interest to resolve';
            result.skip = true;
        }

        return result;
    }
}