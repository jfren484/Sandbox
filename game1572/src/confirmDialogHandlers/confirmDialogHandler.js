import * as gameConstants from '../gameConstants';
import * as gameMethods from '../gameMethods';

export class confirmDialogHandler {
    constructor(G, ctx) {
        this.G = G;
        this.events = ctx.events;
        this.stage = gameMethods.getStage(ctx);
        this.currentHex = G.map.hexes[G.map.currentLocationKey];
    }

    confirmDialog(data) {
        this.G.dialog = {};

        const result = this.phaseLogic(data);

        if (result.endGamePhase) {
            this.events.setStage(this.G.phase.key + 'End');
        } else {
            const diceCount = this.getDiceCount();
            if (diceCount > 0) {
                gameMethods.setupDiceTray(this.getDiceTray(), diceCount, gameMethods.formatPhaseLabel(this.G));

                if (this.stage === 'nativeContactEclipseInstructions') {
                    this.G.enableSelectDiceValues = true;
                    this.G.diceTray.mode = gameConstants.diceTrayModes.postroll;
                }
            }

            this.events.endStage();
        }
    }

    getDiceCount() {
        return 0;
    }

    getDiceTray() {
        return this.G.diceTray;
    }

    phaseLogic(data) {
        return {
            endGamePhase: false
        };
    }
}