import { generatePhaseDialogHandlerEarlyPhases } from './generatePhaseDialogHandlerEarlyPhases';
import { mapHelper } from '../mapHelper';

export class generatePhaseDialogHandlerMapping extends generatePhaseDialogHandlerEarlyPhases {
    earlyPhaseLogic(result) {
        new mapHelper(this.G).getAdjacentUnmapped();

        if (this.G.map.selectableHexes.length === 0) {
            result.resultDescription = 'No unmapped adjacent hexes';
            result.skip = true;
        }
    }
}