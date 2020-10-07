import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';

export class generatePhaseDialogHandlerCartographerTrail extends generatePhaseDialogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        result.resultDescription = 'As a Cartography expedition, you may place a trail to an adjacent hex.';

        return result;
    }
}