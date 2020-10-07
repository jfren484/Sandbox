import * as gameMethods from '../gameMethods';

export class generatePhaseDialogHandler {
    constructor(G) {
        this.G = G;
        this.currentHex = G.map.hexes[G.map.currentLocationKey];
    }

    generatePhaseDialog() {
        const result = this.phaseLogic();

        if (result.skip) {
            result.resultDescription += '; skipping phase.';
        }

        this.G.diegoMendozaBonus = 0;
        this.G.phaseComment = result.resultDescription;
        this.G.dialog = {
            title: gameMethods.formatPhaseLabel(this.G),
            text: this.G.phase.instructions,
            content: result.resultDescription,
            specialAction: result.specialAction,
            input: result.input
        };
    }

    phaseLogic() {
        return {
            resultDescription: '',
            specialAction: undefined,
            input: undefined,
            skip: false
        };
    }
}