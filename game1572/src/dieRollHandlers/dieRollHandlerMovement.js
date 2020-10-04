import { dieRollHandler } from './dieRollHandler';

export class dieRollHandlerMovement extends dieRollHandler {
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
			case 5:
				resultDescriptions.push(this.addMovementProgress(-1, confirmed));
				resultDescriptions.push(this.setFeveredAndLowerMorale(confirmed));
				break;

			case 6:
			case 7:
			case 8:
				resultDescriptions.push(this.addMovementProgress(-1, confirmed));
				resultDescriptions.push(this.addMorale(-1, confirmed));
				break;

			case 9:
			case 10:
			case 11:
			case 12:
			default:
				resultDescriptions.push(this.addMovementProgress(Math.min(4, result.totalRoll - 8), confirmed));
				break;
        }

		result.resultDescription += resultDescriptions.join(', ');

        return result;
    }
}