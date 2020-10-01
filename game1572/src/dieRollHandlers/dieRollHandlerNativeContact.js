import * as dieRollHandler from './dieRollHandler';
import * as gameConstants from '../gameConstants';

class dieRollHandlerHNativeContact extends dieRollHandler {
	constructor(G) {
		super(G);
    }

    addAdvancedCivilization(confirmed) {
        if (confirmed) {
            this.currentHex.advancedCiv = true;

            for (let i = 0; i < this.currentHex.connections.length; ++i) {
                const dist1Hex = this.G.map.hexes[this.currentHex.connections[i].hexKey];
                for (let i = 0; i < dist1Hex.connections.length; ++i) {
                    this.G.map.hexes[dist1Hex.connections[i].hexKey].advancedCiv = true;
                }

                if (!dist1Hex.advancedCiv) {
                    dist1Hex.advancedCiv = true;
                }
            }
        }

        return '+Advanced Civilization';
    }

	phaseLogic(confirmed) {
		let result = super.phaseLogic(confirmed);
		let resultDescriptions = [];

		switch (result.totalRoll) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                resultDescriptions.push(this.addAdvancedCivilization(confirmed));
                break;

            case 5:
                resultDescriptions.push(this.setFeveredAndLowerMorale(confirmed));
                break;

            case 6:
            case 7:
            case 8:
                resultDescriptions.push(this.addVillage(confirmed));
                break;

            case 9:
                resultDescriptions.push(this.addTrail(confirmed, result));
                break;

            case 10:
                resultDescriptions.push(this.addFood(1, confirmed));

                if (confirmed && !data.currentHex.terrainType.noVillages) {
                    ++data.currentHex.friendlyVillages;
                }

                resultDescriptions.push(data.currentHex.terrainType.noVillages
                    ? '(Village results discarded)'
                    : '+Village(Friendly)');
                break;

            case 11:
            case 12:
            default:
                const inner = [
                    this.addMuskets(1, confirmed),
                    this.addFood(1, confirmed),
                    this.addMorale(1, confirmed)
                ].join(', ');
                resultDescriptions.push('Cache (' + inner + ')');

                if (confirmed) {
                    if (confirmed && !data.currentHex.terrainType.noVillages) {
                        ++data.currentHex.friendlyVillages;
                    }
                }

                resultDescriptions.push(data.currentHex.terrainType.noVillages
                    ? '(Village results discarded)'
                    : '+Village(Friendly)');
                break;
		}

		result.resultDescription += resultDescriptions.join(', ');

		return result;
	}
}