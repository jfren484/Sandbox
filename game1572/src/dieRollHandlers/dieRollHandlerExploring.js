import * as dieRollHandler from './dieRollHandler';
import * as gameConstants from '../gameConstants';

class dieRollHandlerHExploring extends dieRollHandler {
	constructor(G) {
		super(G);
	}

	addInterest(confirmed) {
		if (confirmed && this.currentHex.interestType.isNone) {
			this.currentHex.interestType = gameConstants.interestTypes.pending;
		}

		return this.currentHex.interestType.isNone
			? '+Interest'
			: '(Hex already contains Interest)';
	}

	phaseLogic(confirmed) {
		let result = super.phaseLogic(confirmed);
		let resultDescriptions = [];

		switch (result.totalRoll) {
			case 0:
			case 1:
			case 2:
				resultDescriptions.push(this.removeConquistador(confirmed));
				break;

			case 3:
				resultDescriptions.push(this.setFeveredAndLowerMorale(confirmed));
				break;

			case 4:
			case 5:
				resultDescriptions.push(this.addMovementProgress(-1, confirmed));
				break;

			case 6:
			case 7:
				resultDescriptions.push(this.addVillage(confirmed));
				break;

			case 8:
				resultDescriptions.push(this.addMorale(1, confirmed));
				break;

			case 9:
				resultDescriptions.push(this.addTrail(confirmed, result));
				break;

			case 10:
			case 11:
			case 12:
			default:
				resultDescriptions.push(this.addInterest(confirmed));
				break;
		}

		result.resultDescription += resultDescriptions.join(', ');

		return result;
	}
}