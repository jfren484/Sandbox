import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';

export class generatePhaseDialogHandlerMoraleAdjustment extends generatePhaseDialogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        result.resultDescription = 'Travel direction: ' + this.G.travelDirection.name +
            '; Morale adjustment: ' + (this.G.travelDirection.moraleAdjustment > 0 ? '+' : '') + this.G.travelDirection.moraleAdjustment;

        return result;
    }
}