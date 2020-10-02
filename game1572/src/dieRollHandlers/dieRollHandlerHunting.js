import * as dieRollHandler from './dieRollHandler';

export class dieRollHandlerHunting extends dieRollHandler {
    getBonusForBotany() {
        return this.G.expeditionType.huntingBonus;
    }

    phaseLogic(confirmed) {
        let result = super.phaseLogic(confirmed);
        let resultDescriptions = [];

        switch (result.totalRoll) {
            case 0:
            case 1:
            case 2:
            case 3:
                resultDescriptions.push(this.addConquistadors(-1, confirmed));
                break;

            case 4:
                resultDescriptions.push(this.addMorale(-1, confirmed));
                break;

            case 5:
                resultDescriptions.push(this.addMorale(-1, confirmed));
                resultDescriptions.push(this.addFood(1, confirmed));
                break;

            case 6:
            case 7:
            case 8:
                resultDescriptions.push(this.addFood(1, confirmed));
                break;

            case 9:
            case 10:
                resultDescriptions.push(this.addFood(2, confirmed));
                break;

            case 11:
            case 12:
            default:
                resultDescriptions.push(this.addFood(2, confirmed));
                resultDescriptions.push(this.addMorale(1, confirmed));
                break;
        }

        result.resultDescription += resultDescriptions.join(', ');

        return result;
    }
}