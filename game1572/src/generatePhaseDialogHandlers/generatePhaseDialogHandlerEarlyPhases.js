import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';

export class generatePhaseDialogHandlerEarlyPhases extends generatePhaseDialogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        const diceAssigned = this.G.planningDiceAssigned[this.G.phase.index];

        if (diceAssigned === 0) {
            result.resultDescription = 'No dice assigned to ' + this.G.phase.label;
            result.skip = true;
        } else {
            result.resultDescription = 'Dice assigned: ' + diceAssigned;

            if (diceAssigned > 1) {
                result.resultDescription += ', bonus to roll: +' + (diceAssigned - 1);
            }

            const terrainAdj = this.currentHex.terrainType.diceRollAdjustments[this.G.phase.index];
            if (terrainAdj) {
                result.resultDescription += '; terrain ' + (terrainAdj > 0 ? 'bonus' : 'penalty') + ': ' + (terrainAdj > 0 ? '+' : '') + terrainAdj;
            }

            const friendlyVillages = this.G.phase.friendlyVillagesHelp ? this.currentHex.friendlyVillages : 0;
            if (friendlyVillages) {
                result.resultDescription += '; friendly village' + (friendlyVillages > 1 ? 's' : '') + ': +' + friendlyVillages;
            }

            this.earlyPhaseLogic(result);
        }

        return result;
    }

    earlyPhaseLogic(result) {}
}