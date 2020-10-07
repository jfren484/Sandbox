import * as gameConstants from '../gameConstants';
import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';
import { generatePhaseDialogHandlerCartographerTrail } from './generatePhaseDialogHandlerCartographerTrail';
import { generatePhaseDialogHandlerEarlyPhases } from './generatePhaseDialogHandlerEarlyPhases';
import { generatePhaseDialogHandlerEatRations } from './generatePhaseDialogHandlerEatRations';
import { generatePhaseDialogHandlerHunting } from './generatePhaseDialogHandlerHunting';
import { generatePhaseDialogHandlerInterests } from './generatePhaseDialogHandlerInterests';
import { generatePhaseDialogHandlerJournalEntry } from './generatePhaseDialogHandlerJournalEntry';
import { generatePhaseDialogHandlerMapping } from './generatePhaseDialogHandlerMapping';
import { generatePhaseDialogHandlerMapTravel } from './generatePhaseDialogHandlerMapTravel';
import { generatePhaseDialogHandlerMoraleAdjustment } from './generatePhaseDialogHandlerMoraleAdjustment';
import { generatePhaseDialogHandlerNativeContact } from './generatePhaseDialogHandlerNativeContact';
import { generatePhaseDialogHandlerTrackDay } from './generatePhaseDialogHandlerTrackDay';

export class generatePhaseDialogHandlerFactory {
    static createGeneratePhaseDialogHandler(G) {
        let handler;

        switch (G.phase.index) {
            case gameConstants.gamePhases.planning.index:
                handler = new generatePhaseDialogHandler(G);
                break;

            case gameConstants.gamePhases.mapping.index:
                handler = new generatePhaseDialogHandlerMapping(G);
                break;

            case gameConstants.gamePhases.movement.index:
            case gameConstants.gamePhases.exploring.index:
                handler = new generatePhaseDialogHandlerEarlyPhases(G);
                break;

            case gameConstants.gamePhases.nativeContact.index:
                handler = new generatePhaseDialogHandlerNativeContact(G);
                break;

            case gameConstants.gamePhases.hunting.index:
                handler = new generatePhaseDialogHandlerHunting(G);
                break;

            case gameConstants.gamePhases.interests.index:
                handler = new generatePhaseDialogHandlerInterests(G);
                break;

            case gameConstants.gamePhases.eatRations.index:
                handler = new generatePhaseDialogHandlerEatRations(G);
                break;

            case gameConstants.gamePhases.mapTravel.index:
                handler = new generatePhaseDialogHandlerMapTravel(G);
                break;

            case gameConstants.gamePhases.moraleAdjustment.index:
                handler = new generatePhaseDialogHandlerMoraleAdjustment(G);
                break;

            case gameConstants.gamePhases.trackDay.index:
                handler = new generatePhaseDialogHandlerTrackDay(G);
                break;

            case gameConstants.gamePhases.journalEntry.index:
                handler = new generatePhaseDialogHandlerJournalEntry(G);
                break;

            case gameConstants.gamePhases.cartographerTrail.index:
                handler = new generatePhaseDialogHandlerCartographerTrail(G);
                break;

            default:
                break;
        }

        return handler;
    }
}