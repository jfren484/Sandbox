import { generatePhaseDialogHandlerEarlyPhases } from './generatePhaseDialogHandlerEarlyPhases';

export class generatePhaseDialogHandlerHunting extends generatePhaseDialogHandlerEarlyPhases {
    earlyPhaseLogic(result) {
        if (this.G.expeditionType.huntingBonus) {
            result.resultDescription += '; Botany Expedion bonus: +' + this.G.expeditionType.huntingBonus;
        }
    }
}