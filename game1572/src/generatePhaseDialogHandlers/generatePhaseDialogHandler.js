import * as gameMethods from '../gameMethods';

export class generatePhaseDialogDialogHandler {
    constructor(G) {
        this.G = G;
        this.currentHex = G.map.hexes[G.map.currentLocationKey];
    }

    generatePhaseDialog() {
        this.G.dialog = {
            title: gameMethods.formatPhaseLabel(G),
            text: this.G.phase.instructions
        };

        this.G.phaseComment = '';
        this.G.diegoMendozaBonus = 0;

        const result = this.phaseLogic();

        this.G.dialog.content = this.G.phaseComment = result.resultDescription;
    }

    phaseLogic() {
        return {
            resultDescription: '',
            skip: false
        };
    }
}