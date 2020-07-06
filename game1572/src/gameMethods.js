/* eslint-disable no-unused-vars */

import * as gameConstants from './gameConstants';

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
			cataract: true,
			interests: [],
			river: 1
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
			river: 2
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
			river: 3
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
			river: 4
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
			river: 5
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
			river: 6
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
			river: 7
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
			river: 8
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
			river: 9
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
			river: 10
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
			river: 11
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
			river: 12
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
			river: 13
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
			river: 14
		},
        '13, 3': {
			x: 13,
			y: 3,
			terrainType: gameConstants.terrainTypes.unexplored,
			interests: [],
			river: 15
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
			river: 16,
			winGame: true
		}
    };
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
