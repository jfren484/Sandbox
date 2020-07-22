/* eslint-disable no-unused-vars */

import * as gameConstants from './gameConstants';

export function addConquistadorInPlanning(G) {
	if (G.diceTray.dice.count < 4) {
		return;
	}

	const required = 4;
	const val = G.diceTray.dice[2].value;
	if (G.diceTray.dice.filter(d6 => d6.value === val).length >= required) {
		++G.counts.conquistadors;
		G.diceTray.dice = G.diceTray.dice.filter(d6 => d6.value === val);

		// TODO: this will use all 5 dice if there is a 5-of-a-kind. the user should be able to choose whether to use all 5 or just 4 in this scenario.
	}
}

export function cureFever(G) {
	const onesRequired = 3 + G.expeditionType.wildAdjust;
	if (G.diceTray.dice.filter(d6 => d6.value === 1).length >= onesRequired) {
		G.fever = false;
		G.diceTray.dice = G.diceTray.dice.slice(onesRequired - 1);
	}
}

export function generateMap() {
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

export function getStage(ctx) {
	return ctx.activePlayers ? ctx.activePlayers[0] : '';
}

export function rollDice(G, mode) {
	G.diceTray.dice = G.diceTray.dice.map(d6 => d6.locked ? d6 : { value: Math.floor(Math.random() * 6) + 1 }).sort((a, b) => a.value - b.value);
	G.diceTray.mode = mode ?? gameConstants.diceTrayModes.postroll;
}

export function setConquistadors(G, value) {
    G.counts.conquistadors = Math.max(0, Math.min(6, value));
}

export function setFood(G, value) {
    G.counts.food = Math.max(0, Math.min(6, value));
}

export function setMorale(G, value) {
    G.counts.morale = Math.max(0, Math.min(6, value));
}

export function setMovementProgress(G, value) {
    G.counts.movementProgress = Math.max(0, Math.min(6, value));
}

export function setMuskets(G, value) {
    G.counts.muskets = Math.max(0, Math.min(6, value));
}

export function setupDiceTray(G, count) {
	G.diceTray.dice = Array(count).fill({ value: '?' });
	G.diceTray.mode = gameConstants.diceTrayModes.preroll;
}

export function startPhasePlanning(G, ctx) {
	ctx.events.setStage('planning');
}
