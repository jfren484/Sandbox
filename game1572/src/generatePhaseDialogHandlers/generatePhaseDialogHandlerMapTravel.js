import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';
import { mapHelper } from '../mapHelper';

export class generatePhaseDialogHandlerMapTravel extends generatePhaseDialogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        new mapHelper(this.G).getAdjacentTravelCandidates();

        if (this.G.map.adjacentTravelCandidates.length === 0) {
            result.resultDescription = 'Not enough Movement Progress to Travel';
            result.skip = true;
        } else {
            result.resultDescription = 'Choose hex to Travel to; click current hex to skip travel phase and remain in the same hex.';
        }

        return result;
    }
}