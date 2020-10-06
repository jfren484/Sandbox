import * as gameMethods from '../gameMethods';
import { generatePhaseDiallogHandlerEarlyPhases } from './generatePhaseDiallogHandlerEarlyPhases';

export class generatePhaseDiallogHandlerMapping extends generatePhaseDiallogHandlerEarlyPhases {
    phaseLogic() {
        const result = super.phaseLogic();

        const diceAssigned = this.G.planningDiceAssigned[this.G.phase.index] > 0;
        const selectableHexes = this.G.map.selectableHexes.length > 0;

        if (diceAssigned && !selectableHexes) {
            gameMethods.addToJournalCurrentDay(this.G, 'No unmapped hexes available');
        }

        if (!diceAssigned || !selectableHexes) {
            result.endGamePhase = true;
        }

        return result;
    }

    earlyPhaseLogic(result) {
        new mapHelper(this.G).getAdjacentUnmapped();

        if (this.G.map.selectableHexes.length === 0) {
            this.G.phaseComment = 'No unmapped adjacent hexes';
            result.skip = true;
        }
    }
}