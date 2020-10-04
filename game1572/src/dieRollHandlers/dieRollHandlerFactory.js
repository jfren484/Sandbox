import * as gameConstants from '../gameConstants';
import { dieRollHandlerExploring } from './dieRollHandlerExploring';
import { dieRollHandlerHunting } from './dieRollHandlerHunting';
import { dieRollHandlerInterests } from './dieRollHandlerInterests';
import { dieRollHandlerMapping } from './dieRollHandlerMapping';
import { dieRollHandlerMovement } from './dieRollHandlerMovement';
import { dieRollHandlerNativeContact } from './dieRollHandlerNativeContact';

export class dieRollHandlerFactory {
    static createDieRollHandler(G) {
        let handler;

        switch (G.phase.index) {
            case gameConstants.gamePhases.movement.index:
                handler = new dieRollHandlerMovement(G);
                break;
            case gameConstants.gamePhases.mapping.index:
                handler = new dieRollHandlerMapping(G);
                break;
            case gameConstants.gamePhases.exploring.index:
                handler = new dieRollHandlerExploring(G);
                break;
            case gameConstants.gamePhases.nativeContact.index:
                handler = new dieRollHandlerNativeContact(G);
                break;
            case gameConstants.gamePhases.hunting.index:
                handler = new dieRollHandlerHunting(G);
                break;
            case gameConstants.gamePhases.interests.index:
                handler = new dieRollHandlerInterests(G);
                break;
            default:
                break;
        }

        return handler;
    }
}