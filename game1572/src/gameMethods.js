/* eslint-disable no-unused-vars */

import * as gameConstants from './gameConstants';

export function addConquistadorInPlanning(G) {
	if (G.diceTrayPlanning.dice.count < 4) {
		return;
	}

	const required = 4;
	const val = G.diceTrayPlanning.dice[2].value;
	if (G.diceTrayPlanning.dice.filter(d6 => d6.value === val).length >= required) {
		setConquistadors(G.counters.conquistadors + 1);
		G.diceTrayPlanning.dice = G.diceTrayPlanning.dice.filter(d6 => d6.value === val);

		// TODO: this will use all 5 dice if there is a 5-of-a-kind. the user should be able to choose whether to use all 5 or just 4 in this scenario.
	}
}

export function canAddCataract(G, hex) {
	if (!hex.riverType || hex.cataract) {
		return false;
	}

	// TODO: check for path along river downstream
}

export function cureFever(G) {
	const onesRequired = 3 + G.expeditionType.wildAdjust;
	if (G.diceTrayPlanning.dice.filter(d6 => d6.value === 1).length >= onesRequired) {
		G.fever = false;
		G.diceTrayPlanning.dice = G.diceTrayPlanning.dice.slice(onesRequired - 1);
	}
}

export function generateMapHexes() {
	return {
		'0, 0.5': {
			x: 0,
			y: 0.5,
			terrainType: gameConstants.terrainTypes.mountains,
			interests: []
		},
		'0, 1.5': {
			x: 0,
			y: 1.5,
            terrainType: gameConstants.terrainTypes.mountains,
            riverType: gameConstants.riverTypes.source,
			cataract: true,
			interests: []
		},
		'0, 2.5': {
			x: 0,
			y: 2.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'1, 0': {
			x: 1,
			y: 0,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'1, 1': {
			x: 1,
			y: 1,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.swse
		},
		'1, 2': {
			x: 1,
			y: 2,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'2, 0.5': {
			x: 2,
			y: 0.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'2, 1.5': {
			x: 2,
			y: 1.5,
			terrainType: gameConstants.terrainTypes.mountains,
			interests: [],
			riverType: gameConstants.riverTypes.nwne
		},
		'2, 2.5': {
			x: 2,
			y: 2.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'3, 0': {
			x: 3,
			y: 0,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'3, 1': {
			x: 3,
			y: 1,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.swse
		},
		'3, 2': {
			x: 3,
			y: 2,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'4, 0.5': {
			x: 4,
			y: 0.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'4, 1.5': {
			x: 4,
			y: 1.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.nwne
		},
		'4, 2.5': {
			x: 4,
			y: 2.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'5, 0': {
			x: 5,
			y: 0,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'5, 1': {
			x: 5,
			y: 1,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.swse
		},
		'5, 2': {
			x: 5,
			y: 2,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'6, 0.5': {
			x: 6,
			y: 0.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [gameConstants.interestTypes.pending]
		},
		'6, 1.5': {
			x: 6,
			y: 1.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.nwse
		},
		'6, 2.5': {
			x: 6,
			y: 2.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'7, 1': {
			x: 7,
			y: 1,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'7, 2': {
			x: 7,
			y: 2,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.nwne
		},
		'7, 3': {
			x: 7,
			y: 3,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'8, 0.5': {
			x: 8,
			y: 0.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'8, 1.5': {
			x: 8,
			y: 1.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.swne
		},
		'8, 2.5': {
			x: 8,
			y: 2.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'9, 0': {
			x: 9,
			y: 0,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'9, 1': {
			x: 9,
			y: 1,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.swse
		},
		'9, 2': {
			x: 9,
			y: 2,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'10, 0.5': {
			x: 10,
			y: 0.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'10, 1.5': {
			x: 10,
			y: 1.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.nwse
		},
		'10, 2.5': {
			x: 10,
			y: 2.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'11, 1': {
			x: 11,
			y: 1,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'11, 2': {
			x: 11,
			y: 2,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.nwne
		},
		'11, 3': {
			x: 11,
			y: 3,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'12, 0.5': {
			x: 12,
			y: 0.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'12, 1.5': {
			x: 12,
			y: 1.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.swse
		},
		'12, 2.5': {
			x: 12,
			y: 2.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'13, 1': {
			x: 13,
			y: 1,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'13, 2': {
			x: 13,
			y: 2,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.nws
		},
		'13, 3': {
			x: 13,
			y: 3,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.nse
		},
		'14, 1.5': {
			x: 14,
			y: 1.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'14, 2.5': {
			x: 14,
			y: 2.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: []
		},
		'14, 3.5': {
			x: 14,
			y: 3.5,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			riverType: gameConstants.riverTypes.delta,
			winGame: true
		}
	};
}

export function getAdjacentUnmapped(G) {
	G.map.adjacentUnmappedHexes = [];
	const currentHex = G.map.hexes[G.map.currentLocationKey];

	for (let hexKey in G.map.hexes) {
		if (hexKey != G.map.currentLocationKey) {
			const hex = G.map.hexes[hexKey];

			if (Math.abs(hex.x - currentHex.x) <= 1 &&
				Math.abs(hex.y - currentHex.y) <= 1 &&
				hex.terrainType.name === gameConstants.terrainTypes.unexplored.name) {
				G.map.adjacentUnmappedHexes.push(hexKey);
			}
		}
	}

	return G.map.adjacentUnmappedHexes;
}

export function getStage(ctx) {
	return ctx.activePlayers ? ctx.activePlayers[0] : '';
}

export function handleMappingRoll(G, confirmed) {
	const roll = G.diceTray.dice.reduce((acc, val) => acc + val.value, 0);
	const bonus = G.planningDiceAssigned[3] - 1;
	const value = roll + bonus;

	G.diceTray.extraContent = [
		'Roll: ' + roll + (bonus ? ', + ' + bonus + ' extra dice = ' + value : ''),
		'Result: '
	];

	const currentHex = G.map.hexes[G.map.currentLocationKey];
	const hex = G.map.hexes[G.map.target];

	switch (value) {
		case 2:
			if (confirmed) {
				hex.terrainType = gameConstants.terrainTypes.swamp;
			}

			G.diceTray.extraContent[1] += 'Swamp';
			break;

		case 3:
			if (confirmed) {
				hex.terrainType = gameConstants.terrainTypes.hills;
			}

			G.diceTray.extraContent[1] += 'Hills';
			break;

		case 4:
			if (confirmed) {
				hex.terrainType = gameConstants.terrainTypes.mountains;
			}

			G.diceTray.extraContent[1] += 'Mountains';
			break;

		case 5:
			if (confirmed) {
				hex.terrainType = gameConstants.terrainTypes.jungle;
			}

			G.diceTray.extraContent[1] += 'Jungle';
			break;

		case 6:
		case 7:
		case 8:
		case 9:
			const currentTerrainType = currentHex.terrainType;

			if (confirmed) {
				hex.terrainType = currentTerrainType;
			}

			G.diceTray.extraContent[1] += 'Same as current hex (' + currentTerrainType.name + ')';
			break;

		case 10:
			if (confirmed) {
				hex.terrainType = gameConstants.terrainTypes.forest;
			}

			G.diceTray.extraContent[1] += 'Forest';
			break;

		case 11:
			if (confirmed) {
				hex.terrainType = gameConstants.terrainTypes.lake;
			}

			G.diceTray.extraContent[1] += 'Lake';
			break;

		case 12:
		default:
			if (confirmed) {
				hex.terrainType = gameConstants.terrainTypes.plains;
			}

			G.diceTray.extraContent[1] += 'Plains';
			break;
	}

	if (G.diceTray.dice.includes(1) && canAddCataract(currentHex)) {
		if (confirmed) {
			currentHex.cataract = true;
		}

		G.diceTray.extraContent[1] += '; +Cataract';
    }

	if (confirmed) {
		G.diceTray.dice = [];
	}
}

export function handleMovementRoll(G, confirmed) {
	const roll = G.diceTray.dice.reduce((acc, val) => acc + val.value, 0);
	const bonus = G.planningDiceAssigned[2] - 1;
	const value = roll + bonus;

	G.diceTray.extraContent = [
		'Roll: ' + roll + (bonus ? ', + ' + bonus + ' extra dice = ' + value : ''),
		'Result: '
	];

	switch (value) {
		case 0:
		case 1:
		case 2:
		case 3:
			if (G.expeditionType.deathRemovesFood) {
				if (confirmed) {
					setFood(G, G.counters.food.value - 1);
				}

				G.diceTray.extraContent[1] += 'Food -1';
			} else {
				if (confirmed) {
					setConquistadors(G, G.counters.conquistadors.value - 1);
				}

				G.diceTray.extraContent[1] += 'Conquistadors -1';
			}
			break;

		case 4:
		case 5:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 1);
				G.fever = true;
			}

			G.diceTray.extraContent[1] += 'Movement +1, Fever';
			break;

		case 6:
		case 7:
		case 8:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 1);
				setMorale(G, G.counters.morale.value - 1);
			}

			G.diceTray.extraContent[1] += 'Movement +1, Morale -1';
			break;

		case 9:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 1);
			}

			G.diceTray.extraContent[1] += 'Movement +1';
			break;

		case 10:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 2);
			}

			G.diceTray.extraContent[1] += 'Movement +2';
			break;

		case 11:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 3);
			}

			G.diceTray.extraContent[1] += 'Movement +3';
			break;

		case 12:
		default:
			if (confirmed) {
				setMovementProgress(G, G.counters.movementProgress.value + 4);
			}

			G.diceTray.extraContent[1] += 'Movement +4';
			break;
	}

	if (confirmed) {
		G.diceTray.dice = [];
	}
}

export function phasePlanningFinish(G, ctx) {
	for (let i = 2; i <= 6; ++i) {
		G.planningDiceAssigned[i] = 0;
	}

	for (let i = 0; i < G.diceTrayPlanning.dice.length; ++i) {
		++G.planningDiceAssigned[G.diceTrayPlanning.dice[i].assignedValue];
	}

	G.diceTrayPlanning.dice = [];
}

export function rollDice(diceTray, mode) {
	diceTray.dice = diceTray.dice.map(d6 => d6.locked ? d6 : { id: d6.id, value: Math.floor(Math.random() * 6) + 1 }).sort((a, b) => a.value - b.value);
	diceTray.mode = mode ?? gameConstants.diceTrayModes.postroll;
}

export function setConquistadors(G, value) {
    G.counters.conquistadors.value = Math.max(0, Math.min(6, value));
}

export function setFood(G, value) {
    G.counters.food.value = Math.max(0, Math.min(6, value));
}

export function setMorale(G, value) {
	console.log('morale change');
    G.counters.morale.value = Math.max(0, Math.min(6, value));
}

export function setMovementProgress(G, value) {
	console.log('movementProgress change');
    G.counters.movementProgress.value = Math.max(0, Math.min(6, value));
}

export function setMuskets(G, value) {
    G.counters.muskets.value = Math.max(0, Math.min(6, value));
}

export function setupDiceTray(diceTray, count, title) {
	diceTray.mode = gameConstants.diceTrayModes.preroll;
	diceTray.title = title ?? '';
	diceTray.dice = Array(count).fill('?').map((d6, i) => { return { id: i, value: d6 }; });
	diceTray.extraContent = '';
}
