import * as dieRollHandler from './dieRollHandler';
import * as gameConstants from '../gameConstants';

export class dieRollHandlerMapping extends dieRollHandler {
	constructor(G) {
		super(G);
		this.targetHex = G.map.hexes[G.map.target];
	}

	addCataract(confirmed) {
		if (!this.currentHex.riverType || this.currentHex.cataract) {
			return;
		}

		const downstreamDirection = gameConstants.hexDirections[this.currentHex.connections.find(conn => conn.isDownstream).direction];

		const hexKey = (this.currentHex.x + downstreamDirection.dirX) + ',' + (this.currentHex.y + downstreamDirection.dirY);
		const trailKey = [hexKey, this.G.map.currentLocationKey].sort();
		if (this.G.map.trails[trailKey]) {
			return;
		}

		if (confirmed) {
			this.currentHex.cataract = true;
		}

		return '+Cataract';
	}

	phaseLogic(confirmed) {
		let result = super.phaseLogic(confirmed);
		let resultDescriptions = [];

		switch (result.totalRoll) {
			case 2:
				resultDescriptions.push(this.setTerrainType(gameConstants.terrainTypes.swamp, confirmed));
				break;

			case 3:
				resultDescriptions.push(this.setTerrainType(gameConstants.terrainTypes.hills, confirmed));
				break;

			case 4:
				resultDescriptions.push(this.setTerrainType(gameConstants.terrainTypes.mountains, confirmed));
				break;

			case 5:
				resultDescriptions.push(this.setTerrainType(gameConstants.terrainTypes.jungle, confirmed));
				break;

			case 6:
			case 7:
			case 8:
			case 9:
				resultDescriptions.push('Same as current hex (' + this.setTerrainType(this.currentHex.terrainType, confirmed) + ')');
				break;

			case 10:
				resultDescriptions.push(this.setTerrainType(gameConstants.terrainTypes.forest, confirmed));
				break;

			case 11:
				resultDescriptions.push(this.setTerrainType(gameConstants.terrainTypes.lake, confirmed));
				break;

			case 12:
			default:
				resultDescriptions.push(this.setTerrainType(gameConstants.terrainTypes.plains, confirmed));
				break;
		}

		if (this.G.diceTray.dice.includes(1)) {
			const desc = this.addCataract(confirmed);
			if (desc) {
				resultDescriptions.push(desc);
            }
		}

		result.resultDescription += resultDescriptions.join('; ');

		return result;
	}

	setTerrainType(terrainType, confirmed) {
		if (confirmed) {
			this.targetHex.terrainType = terrainType;
		}

		return terrainType.name;
	}
}