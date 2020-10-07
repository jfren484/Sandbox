import { generatePhaseDialogHandlerEarlyPhases } from './generatePhaseDialogHandlerEarlyPhases';

export class generatePhaseDialogHandlerNativeContact extends generatePhaseDialogHandlerEarlyPhases {
    earlyPhaseLogic(result) {
        if (this.currentHex.advancedCiv) {
            result.resultDescription += '; Advanced Civilization (only 1 die rolled)'
        }
    }
}