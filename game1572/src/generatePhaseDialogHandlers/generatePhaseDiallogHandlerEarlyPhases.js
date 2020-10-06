import { generatePhaseDiallogHandler } from './generatePhaseDiallogHandler';

export class generatePhaseDiallogHandlerEarlyPhases extends generatePhaseDiallogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        const diceAssigned = this.G.planningDiceAssigned[this.G.phase.index];

        if (diceAssigned === 0) {
            this.G.phaseComment = 'No dice assigned to ' + this.G.phase.label;
            result.skip = true;
        } else {
            this.G.phaseComment = 'Dice assigned: ' + diceAssigned;

            if (diceAssigned > 1) {
                this.G.phaseComment += ', bonus to roll: +' + (diceAssigned - 1);
            }

            const terrainAdj = this.currentHex.terrainType.diceRollAdjustments[this.G.phase.index];
            if (terrainAdj) {
                this.G.phaseComment += '; terrain ' + (terrainAdj > 0 ? 'bonus' : 'penalty') + ': ' + (terrainAdj > 0 ? '+' : '') + terrainAdj;
            }

            const friendlyVillages = this.G.phase.friendlyVillagesHelp ? currentHex.friendlyVillages : 0;
            if (friendlyVillages) {
                this.G.phaseComment += '; friendly village' + (friendlyVillages > 1 ? 's' : '') + ': +' + friendlyVillages;
            }

            this.earlyPhaseLogic(result);

            if (this.G.phase.index === gameConstants.gamePhases.hunting.index && this.G.expeditionType.huntingBonus) {
                this.G.phaseComment += '; Botany Expedion bonus: +' + this.G.expeditionType.huntingBonus;
            }

            if (this.G.phase.index === gameConstants.gamePhases.nativeContact.index && currentHex.advancedCiv) {
                this.G.phaseComment += '; Advanced Civilization (only 1 die rolled)'
            }
        }

        return result;
    }

    earlyPhaseLogic(result) {}
}