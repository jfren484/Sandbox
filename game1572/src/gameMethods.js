/* eslint-disable no-unused-vars */

import * as gameConstants from './gameConstants';

export function addConquistadorInPlanning(G) {
	if (G.diceTrayPlanning.dice.count < 4) {
		return;
	}

	const required = 4;
	const val = G.diceTrayPlanning.dice[2].value;
	if (G.diceTrayPlanning.dice.filter(d6 => d6.value === val).length >= required) {
        setConquistadors(G.counters.conquistadors.value + 1);
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
    const hexTemplate = {
        x: 0,
        y: 0,
        terrainType: gameConstants.terrainTypes.unexplored,
        riverType: undefined,
        cataract: false,
        interests: [],
        villages: 0,
        friendlyVillages: 0

        //lagosDeOro: gameConstants.terrainTypes.* | undefined,
        //advancedCiv: <bool> // TODO: ?
    };

    return {
        '0, 0.5': {
            ...hexTemplate,
            x: 0,
            y: 0.5,
            terrainType: gameConstants.terrainTypes.mountains
        },
        '0, 1.5': {
            ...hexTemplate,
            x: 0,
            y: 1.5,
            terrainType: gameConstants.terrainTypes.mountains,
            riverType: gameConstants.riverTypes.source,
            downstream: 'ne',
            cataract: true
        },
        '0, 2.5': {
            ...hexTemplate,
            x: 0,
            y: 2.5
        },
        '1, 0': {
            ...hexTemplate,
            x: 1,
            y: 0
        },
        '1, 1': {
            ...hexTemplate,
            x: 1,
            y: 1,
            riverType: gameConstants.riverTypes.swse,
            downstream: 'se'
        },
        '1, 2': {
            ...hexTemplate,
            x: 1,
            y: 2
        },
        '2, 0.5': {
            ...hexTemplate,
            x: 2,
            y: 0.5
        },
        '2, 1.5': {
            ...hexTemplate,
            x: 2,
            y: 1.5,
            terrainType: gameConstants.terrainTypes.mountains,
            riverType: gameConstants.riverTypes.nwne,
            downstream: 'ne'
        },
        '2, 2.5': {
            ...hexTemplate,
            x: 2,
            y: 2.5
        },
        '3, 0': {
            ...hexTemplate,
            x: 3,
            y: 0
        },
        '3, 1': {
            ...hexTemplate,
            x: 3,
            y: 1,
            riverType: gameConstants.riverTypes.swse,
            downstream: 'se'
        },
        '3, 2': {
            ...hexTemplate,
            x: 3,
            y: 2
        },
        '4, 0.5': {
            ...hexTemplate,
            x: 4,
            y: 0.5
        },
        '4, 1.5': {
            ...hexTemplate,
            x: 4,
            y: 1.5,
            riverType: gameConstants.riverTypes.nwne,
            downstream: 'ne'
        },
        '4, 2.5': {
            ...hexTemplate,
            x: 4,
            y: 2.5
        },
        '5, 0': {
            ...hexTemplate,
            x: 5,
            y: 0
        },
        '5, 1': {
            ...hexTemplate,
            x: 5,
            y: 1,
            riverType: gameConstants.riverTypes.swse,
            downstream: 'se'
        },
        '5, 2': {
            ...hexTemplate,
            x: 5,
            y: 2
        },
        '6, 0.5': {
            ...hexTemplate,
            x: 6,
            y: 0.5,
            interests: [gameConstants.interestTypes.pending]
        },
        '6, 1.5': {
            ...hexTemplate,
            x: 6,
            y: 1.5,
            riverType: gameConstants.riverTypes.nwse,
            downstream: 'se'
        },
        '6, 2.5': {
            ...hexTemplate,
            x: 6,
            y: 2.5
        },
        '7, 1': {
            ...hexTemplate,
            x: 7,
            y: 1
        },
        '7, 2': {
            ...hexTemplate,
            x: 7,
            y: 2,
            riverType: gameConstants.riverTypes.nwne,
            downstream: 'ne'
        },
        '7, 3': {
            ...hexTemplate,
            x: 7,
            y: 3
        },
        '8, 0.5': {
            ...hexTemplate,
            x: 8,
            y: 0.5
        },
        '8, 1.5': {
            ...hexTemplate,
            x: 8,
            y: 1.5,
            riverType: gameConstants.riverTypes.swne,
            downstream: 'ne'
        },
        '8, 2.5': {
            ...hexTemplate,
            x: 8,
            y: 2.5
        },
        '9, 0': {
            ...hexTemplate,
            x: 9,
            y: 0
        },
        '9, 1': {
            ...hexTemplate,
            x: 9,
            y: 1,
            riverType: gameConstants.riverTypes.swse,
            downstream: 'se'
        },
        '9, 2': {
            ...hexTemplate,
            x: 9,
            y: 2
        },
        '10, 0.5': {
            ...hexTemplate,
            x: 10,
            y: 0.5
        },
        '10, 1.5': {
            ...hexTemplate,
            x: 10,
            y: 1.5,
            riverType: gameConstants.riverTypes.nwse,
            downstream: 'se'
        },
        '10, 2.5': {
            ...hexTemplate,
            x: 10,
            y: 2.5
        },
        '11, 1': {
            ...hexTemplate,
            x: 11,
            y: 1
        },
        '11, 2': {
            ...hexTemplate,
            x: 11,
            y: 2,
            riverType: gameConstants.riverTypes.nwne,
            downstream: 'ne'
        },
        '11, 3': {
            ...hexTemplate,
            x: 11,
            y: 3
        },
        '12, 0.5': {
            ...hexTemplate,
            x: 12,
            y: 0.5
        },
        '12, 1.5': {
            ...hexTemplate,
            x: 12,
            y: 1.5,
            riverType: gameConstants.riverTypes.swse,
            downstream: 'se'
        },
        '12, 2.5': {
            ...hexTemplate,
            x: 12,
            y: 2.5
        },
        '13, 1': {
            ...hexTemplate,
            x: 13,
            y: 1
        },
        '13, 2': {
            ...hexTemplate,
            x: 13,
            y: 2,
            riverType: gameConstants.riverTypes.nws,
            downstream: 's'
        },
        '13, 3': {
            ...hexTemplate,
            x: 13,
            y: 3,
            riverType: gameConstants.riverTypes.nse,
            downstream: 'se'
        },
        '14, 1.5': {
            ...hexTemplate,
            x: 14,
            y: 1.5
        },
        '14, 2.5': {
            ...hexTemplate,
            x: 14,
            y: 2.5
        },
        '14, 3.5': {
            ...hexTemplate,
            x: 14,
            y: 3.5,
            riverType: gameConstants.riverTypes.delta,
            winGame: true
        }
    };
}

export function getAdjacentTravelCandidates(G) {
    G.map.adjacentTravelCandidates = [];
    if (G.counters.movementProgress < 3) {
        // No chance of moving anywhere - abort
        return;
    }

    const currentHex = G.map.hexes[G.map.currentLocationKey];

    for (let hexKey in G.map.hexes) {
        if (hexKey !== G.map.currentLocationKey) {
            const hex = G.map.hexes[hexKey];

            if (Math.abs(hex.x - currentHex.x) <= 1 &&
                Math.abs(hex.y - currentHex.y) <= 1 &&
                hex.terrainType.name !== gameConstants.terrainTypes.unexplored.name) {
                const trailKey = [hexKey, G.map.currentLocationKey].sort();
                const movementCost = G.map.trails[trailKey] ? 3 : 5;

                if (G.counters.movementProgress >= movementCost) {
                    G.map.adjacentTravelCandidates.push({
                        trailKey: trailKey,
                        movementCost: movementCost
                    });
                }
            }
        }
    }
}

export function getAdjacentUnmapped(G) {
	G.map.adjacentUnmappedHexes = [];
	const currentHex = G.map.hexes[G.map.currentLocationKey];

	for (let hexKey in G.map.hexes) {
		if (hexKey !== G.map.currentLocationKey) {
			const hex = G.map.hexes[hexKey];

			if (Math.abs(hex.x - currentHex.x) <= 1 &&
				Math.abs(hex.y - currentHex.y) <= 1 &&
				hex.terrainType.name === gameConstants.terrainTypes.unexplored.name) {
				G.map.adjacentUnmappedHexes.push(hexKey);
			}
		}
	}
}

export function getAvailableTrailLocations(G) {
    G.map.availableTrailLocations = [];
	const currentHex = G.map.hexes[G.map.currentLocationKey];

    for (let i = 0; i < gameConstants.hexNeighborOffsets.length; ++i) {
        const hexNeighborOffset = gameConstants.hexNeighborOffsets[i];
		const hexKey = (currentHex.x + hexNeighborOffset.x) + ', ' + (currentHex.y + hexNeighborOffset.y);

		if (G.map.hexes[hexKey]) {
			const trailKey = [hexKey, G.map.currentLocationKey].sort();

			if (!G.map.trails[trailKey]) {
                G.map.availableTrailLocations.push({ key: trailKey, offset: hexNeighborOffset });
            }
        }
    }

    if (G.map.availableTrailLocations.length > 0) {
        G.phaseComment = 'Choose location for trail';
    }
}

export function generatePhaseDialog(G) {
    G.phaseComment = '';
    let skip = false;

    switch (G.phase.index) {
        case gameConstants.gamePhases.mapping.index:
            if (G.map.adjacentUnmappedHexes.length === 0) {
                G.phaseComment = 'No unmapped adjacent hexes';
                skip = true;
            }
            // fall through
        case gameConstants.gamePhases.movement.index:
        case gameConstants.gamePhases.exploring.index:
        case gameConstants.gamePhases.nativeContact.index:
        case gameConstants.gamePhases.hunting.index:
            const diceAssigned = G.planningDiceAssigned[G.phase.index];

            if (diceAssigned === 0) {
                G.phaseComment = 'No dice assigned to ' + G.phase.label;
                skip = true;
            }

            if (G.phaseComment === '') {
                G.phaseComment = 'Dice assigned: ' + diceAssigned + (diceAssigned > 1 ? ', bonus to roll: +' + (diceAssigned - 1) : '');
            }

            break;
        case gameConstants.gamePhases.interests:
            if (G.map.hexes[G.map.currentLocationKey].interests.filter(i => gameConstants.interestTypes.pending).length === 0) {
                G.phaseComment = 'No interests to resolve';
                skip = true;
            }

            break;
        case gameConstants.gamePhases.eatRations:
            if (G.counters.food > 0) {
                G.phaseComment = 'Food -1';
            } else {
                G.phaseComment = 'No Food! Conquistadors -1';

                if (G.counters.conquistadors === 0) {
                    G.phaseComment += ', all Conquistadors have been lost';
                }
            }

            break;
        case gameConstants.gamePhases.mapTravel:
            break;
		default:
			break;
    }

    if (skip) {
        G.phaseComment += '; skipping phase.';
    }

    G.dialog = {
        title: 'Phase ' + G.phase.index + ': ' + G.phase.label,
        content: G.phaseComment,
        text: G.phase.instructions
    };
}

export function getStage(ctx) {
	return ctx.activePlayers ? ctx.activePlayers[0] : '';
}

function handle_base(G) {
    let data = {
        roll: G.diceTray.dice.reduce((acc, val) => acc + val.value, 0),
        bonus: G.planningDiceAssigned[G.phase.index] - 1,
        value: 0,
        currentHex: G.map.hexes[G.map.currentLocationKey]
    };

    data.value = data.roll + data.bonus;

    G.diceTray.extraContent = [
        'Roll: ' + data.roll + (data.bonus ? ', + ' + data.bonus + ' extra dice = ' + data.value : ''),
        'Result: '
    ];

    return data;
}

export function handleExploringRoll(G, confirmed) {
    const data = handle_base(G);

	switch (data.value) {
		case 0:
		case 1:
		case 2:
			if (confirmed) {
				if (G.expeditionType.deathRemovesFood) {
					setFood(G, G.counters.food.value - 1);
				} else {
                    setConquistadors(G, G.counters.conquistadors.value - 1);
				}
			}

			G.diceTray.extraContent[1] += G.expeditionType.deathRemovesFood ? 'Food -1' : 'Conquistador -1';
			break;

		case 3:
			if (confirmed && !G.fever) {
				G.fever = true;
			}

			G.diceTray.extraContent[1] += G.fever ? '(Already Fevered)' : '+Fever';
			break;

		case 4:
		case 5:
			if (confirmed) {
                setMovementProgress(G, G.counters.movementProgress.value - 1);
			}

			G.diceTray.extraContent[1] += 'Movement -1';
			break;

		case 6:
		case 7:
			if (confirmed) {
				if (G.expeditionType.allVillagesPeaceful) {
					++data.currentHex.friendlyVillages;
				} else {
                    ++data.currentHex.villages;
				}
			}

			G.diceTray.extraContent[1] += '+Village' + (G.expeditionType.allVillagesPeaceful ? ' (Friendly)' : '');
			break;

		case 8:
			if (confirmed) {
                setMorale(G, G.counters.morale.value + 1);
			}

			G.diceTray.extraContent[1] += 'Morale +1';
			break;

		case 9:
			if (confirmed) {
				G.map.trailPending = true;
			}

			G.diceTray.extraContent[1] += '+Trail';
			break;

		case 10:
		case 11:
		case 12:
		default:
			if (confirmed) {
                data.currentHex.interests.push(gameConstants.interestTypes.pending);
			}

			G.diceTray.extraContent[1] += '+Interest';
			break;
    }

    if (confirmed) {
        G.diceTray.dice = [];
    }
}

export function handleInterestsRoll(G, confirmed) {
    const data = handle_base(G);

    switch (data.value) {
        // TODO: handle switching interest to wonder after use
        case 2:
        case 3:
            if (confirmed) {
                // TODO: Lagos De Oro
            }

            G.diceTray.extraContent[1] += 'Lagos De Oro';
            break;

        case 4:
            if (confirmed) {
                setMuskets(G, G.counters.muskets + 5);
                // TODO: Ruined Mission (add trail)
            }

            G.diceTray.extraContent[1] += 'Ruined Mission';
            break;

        case 5:
            if (confirmed) {
                // TODO: Migration
            }

            G.diceTray.extraContent[1] += 'Migration';
            break;

        case 6:
        case 7:
        case 8:
            if (confirmed) {
                setMorale(G, G.counters.morale + 5);
                // TODO: Wonder
            }

            G.diceTray.extraContent[1] += 'Wonder';
            break;

        case 9:
            if (confirmed) {
                // TODO: Predict Eclipse
            }

            G.diceTray.extraContent[1] += 'Predict Eclipse';
            break;

        case 10:
            if (confirmed) {
                // TODO: Princess Kantyi
            }

            G.diceTray.extraContent[1] += 'Princess Kantyi';
            break;

        case 11:
        case 12:
        default:
            if (confirmed) {
                setConquistadors(G, G.counters.conquistadors + 1);
                setMuskets(G, G.counters.muskets + 1);
                // TODO: Diego Mendoza
            }

            G.diceTray.extraContent[1] += 'Diego Mendoza';
            break;
    }

    if (confirmed) {
        G.diceTray.dice = [];
    }
}

export function handleHuntingRoll(G, confirmed) {
    const data = handle_base(G);

    switch (data.value) {
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
            if (confirmed) {
                setMorale(G, G.counters.morale.value - 1);
            }

            G.diceTray.extraContent[1] += 'Morale -1';
            break;

        case 5:
            if (confirmed) {
                setFood(G, G.counters.food + 1);
                setMorale(G, G.counters.morale.value - 1);
            }

            G.diceTray.extraContent[1] += 'Morale -1, Food +1';
            break;

        case 6:
        case 7:
        case 8:
            if (confirmed) {
                setFood(G, G.counters.food + 1);
           }

            G.diceTray.extraContent[1] += 'Food +1';
            break;

        case 9:
        case 10:
            if (confirmed) {
                setFood(G, G.counters.food + 2);
            }

            G.diceTray.extraContent[1] += 'Food +2';
            break;

        case 11:
        case 12:
        default:
            if (confirmed) {
                setFood(G, G.counters.food + 2);
                setMorale(G, G.counters.morale + 1);
            }

            G.diceTray.extraContent[1] += 'Food +2, Morale +1';
            break;
	}

	if (confirmed) {
		G.diceTray.dice = [];
	}
}

export function handleMappingRoll(G, confirmed) {
    const data = handle_base(G);
	const targetHex = G.map.hexes[G.map.target];

	switch (data.value) {
		case 2:
			if (confirmed) {
                targetHex.terrainType = gameConstants.terrainTypes.swamp;
			}

			G.diceTray.extraContent[1] += 'Swamp';
			break;

		case 3:
			if (confirmed) {
                targetHex.terrainType = gameConstants.terrainTypes.hills;
			}

			G.diceTray.extraContent[1] += 'Hills';
			break;

		case 4:
			if (confirmed) {
                targetHex.terrainType = gameConstants.terrainTypes.mountains;
			}

			G.diceTray.extraContent[1] += 'Mountains';
			break;

		case 5:
			if (confirmed) {
                targetHex.terrainType = gameConstants.terrainTypes.jungle;
			}

			G.diceTray.extraContent[1] += 'Jungle';
			break;

		case 6:
		case 7:
		case 8:
		case 9:
            const currentTerrainType = data.currentHex.terrainType;

			if (confirmed) {
                targetHex.terrainType = currentTerrainType;
			}

			G.diceTray.extraContent[1] += 'Same as current hex (' + currentTerrainType.name + ')';
			break;

		case 10:
			if (confirmed) {
                targetHex.terrainType = gameConstants.terrainTypes.forest;
			}

			G.diceTray.extraContent[1] += 'Forest';
			break;

		case 11:
			if (confirmed) {
                targetHex.terrainType = gameConstants.terrainTypes.lake;
			}

			G.diceTray.extraContent[1] += 'Lake';
			break;

		case 12:
		default:
			if (confirmed) {
                targetHex.terrainType = gameConstants.terrainTypes.plains;
			}

			G.diceTray.extraContent[1] += 'Plains';
			break;
	}

    if (G.diceTray.dice.includes(1) && canAddCataract(data.currentHex)) {
		if (confirmed) {
			data.currentHex.cataract = true;
		}

		G.diceTray.extraContent[1] += '; +Cataract';
    }

	if (confirmed) {
		G.diceTray.dice = [];
	}
}

export function handleMovementRoll(G, confirmed) {
    const data = handle_base(G);

	switch (data.value) {
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

export function handleNativeContactRoll(G, confirmed) {
    const data = handle_base(G);

    switch (data.value) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            // TODO: advanced civilization
            break;

        case 5:
            if (confirmed && !G.fever) {
                G.fever = true;
            }

            G.diceTray.extraContent[1] += G.fever ? '(Already Fevered)' : '+Fever';
            break;

        case 6:
        case 7:
        case 8:
            if (confirmed) {
                if (G.expeditionType.allVillagesPeaceful) {
                    ++data.currentHex.friendlyVillages;
                } else {
                    ++data.currentHex.villages;
                }
            }

            G.diceTray.extraContent[1] += '+Village' + (G.expeditionType.allVillagesPeaceful ? ' (Friendly)' : '');
            break;

        case 9:
            if (confirmed) {
                G.map.trailPending = true;
            }

            G.diceTray.extraContent[1] += '+Trail';
            break;

        case 10:
            if (confirmed) {
                setFood(G, G.counters.food + 1);
                ++data.currentHex.friendlyVillages;
            }

            G.diceTray.extraContent[1] += 'Food +1, +Village (Friendly)';
            break;

        case 11:
        case 12:
        default:
            if (confirmed) {
                setMuskets(G, G.counters.muskets + 1);
                setFood(G, G.counters.food + 1);
                setMorale(G, G.counters.morale + 1);
                ++data.currentHex.friendlyVillages;
            }

            G.diceTray.extraContent[1] += 'Cache (Muskets, Food, and Morale + 1), +Village (Friendly)';
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
