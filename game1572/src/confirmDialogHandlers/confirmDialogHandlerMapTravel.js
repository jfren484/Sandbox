import * as gameConstants from '../gameConstants';
import * as gameMethods from '../gameMethods';
import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerMapTravel extends confirmDialogHandler {
    phaseLogic(data) {
        const result = super.phaseLogic(data);

        if (this.G.map.adjacentTravelCandidates.length === 0) {
            this.G.travelDirection = gameConstants.hexDirections.none;
            gameMethods.addToJournalCurrentDay(this.G, 'No hexes available as travel destinations');

            result.endGamePhase = true;
        }

        return result;
    }
}