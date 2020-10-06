import * as gameConstants from '../gameConstants';
import { confirmDialogHandler } from './confirmDialogHandler';
import { confirmDialogHandlerEarlyPhases } from './confirmDialogHandlerEarlyPhases';
import { confirmDialogHandlerEatRations } from './confirmDialogHandlerEatRations';
import { confirmDialogHandlerInterests } from './confirmDialogHandlerInterests';
import { confirmDialogHandlerJournalEntry } from './confirmDialogHandlerJournalEntry';
import { confirmDialogHandlerMapping } from './confirmDialogHandlerMapping';
import { confirmDialogHandlerMapTravel } from './confirmDialogHandlerMapTravel';
import { confirmDialogHandlerMoraleAdjustment } from './confirmDialogHandlerMoraleAdjustment';
import { confirmDialogHandlerPlanning } from './confirmDialogHandlerPlanning';
import { confirmDialogHandlerTrackDay } from './confirmDialogHandlerTrackDay';

export class confirmDialogHandlerFactory {
    static createConfirmDialogHandler(G, ctx) {
        let handler;

        switch (G.phase.index) {
            case gameConstants.gamePhases.planning.index:
                handler = new confirmDialogHandlerPlanning(G, ctx);
                break;

            case gameConstants.gamePhases.mapping.index:
                handler = new confirmDialogHandlerMapping(G, ctx);
                break;

            case gameConstants.gamePhases.movement.index:
            case gameConstants.gamePhases.exploring.index:
            case gameConstants.gamePhases.nativeContact.index:
            case gameConstants.gamePhases.hunting.index:
                handler = new confirmDialogHandlerEarlyPhases(G, ctx);
                break;

            case gameConstants.gamePhases.interests.index:
                handler = new confirmDialogHandlerInterests(G, ctx);
                break;

            case gameConstants.gamePhases.eatRations.index:
                handler = new confirmDialogHandlerEatRations(G, ctx);
                break;

            case gameConstants.gamePhases.mapTravel.index:
                handler = new confirmDialogHandlerMapTravel(G, ctx);
                break;

            case gameConstants.gamePhases.moraleAdjustment.index:
                handler = new confirmDialogHandlerMoraleAdjustment(G, ctx);
                break;

            case gameConstants.gamePhases.trackDay.index:
                handler = new confirmDialogHandlerTrackDay(G, ctx);
                break;

            case gameConstants.gamePhases.journalEntry.index:
                handler = new confirmDialogHandlerJournalEntry(G, ctx);
                break;

            case gameConstants.gamePhases.cartographerTrail.index:
                handler = new confirmDialogHandler(G, ctx);
                break;

            default:
                break;
        }

        return handler;
    }
}