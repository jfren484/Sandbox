import * as gameConstants from './gameConstants';
import * as gameMethods from './gameMethods';

export const Game1572 = {
    setup: () => ({
        name: '1572: The Lost Expedition',

        counters: {
            conquistadors: {
                label: 'Conquistadors',
                image: 'conquistador.png',
                value: 6
            },
            muskets: {
                label: 'Muskets',
                image: 'muskets.png',
                value: 6
            },
            food: {
                label: 'Food',
                image: 'food.png',
                value: 6
            },
            morale: {
                label: 'Morale',
                image: 'morale.png',
                value: 6
            },
            movementProgress: {
                label: 'Movement Progress',
                image: 'movement.png',
                value: 6
            }
        },
        currentLocation: '0, 0.5',
        days: 0,
        diceTray: {
            mode: gameConstants.diceTrayModes.preroll,
            instructions: gameConstants.diceTrayInstructions.expeditionType,
            dice: []
        },
        diceTrayPlanning: {
            mode: gameConstants.diceTrayModes.preroll,
            dice: []
        },
        expeditionType: {
            id: 0,
            label: '',
            description: ''
        },
        fever: false,
        map: gameMethods.generateMap(),
        planningDiceAssigned: {
            2: 0,
            3: 0,
            4: 0,
            5: 0,
            6: 0
        }
    }),

    phases: {
        preGame: {
            start: true,
            next: 'determineExpeditionType',
            moves: {
                beginGame: (G, ctx) => {
                    ctx.events.endPhase();
                    gameMethods.setupDiceTray(G.diceTray, 1);
                }
            }
        },

        determineExpeditionType: {
            next: 'mainGame',
            moves: {
                rollDice: (G, ctx) => {
                    gameMethods.rollDice(G.diceTray);

                    const expeditionType = gameConstants.expeditionTypes[G.diceTray.dice[0].value];
                    G.diceTray.extraContent = expeditionType.label + ' - ' + expeditionType.description;
                },
                setExpeditionType: (G, ctx, id) => {
                    G.diceTray.dice = [];
                    G.expeditionType = gameConstants.expeditionTypes[id];

                    ctx.events.endPhase();
                    ctx.events.setStage('planning');
                    gameMethods.setupDiceTray(G.diceTrayPlanning, 5);
                }
            }
        },

        mainGame: {
            turn: {
                stages: {
                    planning: {
                        moves: {
                            rollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTrayPlanning, gameConstants.diceTrayModes.rerollPartial);
                                ctx.events.endStage();
                            },
                        },
                        next: 'planningMidRoll'
                    },
                    planningMidRoll: {
                        moves: {
                            addConquistador: (G, ctx) => {
                                gameMethods.addConquistadorInPlanning(G);
                            },
                            cureFever: (G, ctx) => {
                                gameMethods.cureFever(G);
                            },
                            rerollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTrayPlanning);
                                ctx.events.endStage();
                            },
                            skipReroll: (G, ctx) => {
                                G.diceTrayPlanning.mode = gameConstants.diceTrayModes.postroll;
                                ctx.events.endStage();
                            },
                            toggleDieLock: (G, ctx, id) => {
                                const die = G.diceTrayPlanning.dice.filter(d6 => d6.id === id)[0];
                                die.locked = !die.locked;
                            }
                        },
                        next: 'planningPostRoll'
                    },
                    planningPostRoll: {
                        moves: {
                            startAssignment: (G, ctx) => {
                                G.diceTrayPlanning.dice.forEach(d6 => d6.assignedValue = d6.value > 1 ? d6.value : null);
                                ctx.events.endStage();
                            },
                        },
                        next: 'planningAssignment'
                    },
                    planningAssignment: {
                        moves: {
                            addConquistador: (G, ctx) => {
                                gameMethods.addConquistadorInPlanning(G);
                            },
                            assignedice: (G, ctx) => {
                                const nextStage = gameMethods.phasePlanningFinish(G, ctx);
                                ctx.events.setStage(nextStage);
                            },
                            cureFever: (G, ctx) => {
                                gameMethods.cureFever(G);
                            },
                            toggleDieAssigned: (G, ctx, id, i) => {
                                const die = G.diceTrayPlanning.dice.filter(d6 => d6.id === id)[0];
                                die.assignedValue = i;
                            }
                        }
                    },
                    movementProgress: {
                        moves: {
                            updateMovementProgress: (G, ctx, value) => {
                                switch (value) {
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                        if (G.expeditionType.deathRemovesFood) {
                                            gameMethods.setFood(G, G.counts.food - 1);
                                        } else {
                                            gameMethods.setConquistadors(G, G.counts.conquistadors - 1);
                                        }
                                        break;

                                    case 4:
                                    case 5:
                                        gameMethods.setMovementProgress(G, G.counts.movementProgress + 1);
                                        G.fever = true;
                                        break;

                                    case 6:
                                    case 7:
                                    case 8:
                                        gameMethods.setMovementProgress(G, G.counts.movementProgress + 1);
                                        gameMethods.setMorale(G, G.counts.morale - 1);
                                        break;

                                    case 9:
                                        gameMethods.setMovementProgress(G, G.counts.movementProgress + 1);
                                        break;

                                    case 10:
                                        gameMethods.setMovementProgress(G, G.counts.movementProgress + 2);
                                        break;

                                    case 11:
                                        gameMethods.setMovementProgress(G, G.counts.movementProgress + 3);
                                        break;

                                    case 12:
                                    default:
                                        gameMethods.setMovementProgress(G, G.counts.movementProgress + 4);
                                        break;
                                }
                            }
                        }
                    },
                    mapping: {
                        moves: {
                            updateMapping: (G, ctx, cell, terrainType) => {
                            }
                        }
                    },
                    exploring: {
                        moves: {
                            updateExploring: (G, ctx, value, cellB) => {
                                switch (value) {
                                    case 0:
                                    case 1:
                                    case 2:
                                        if (G.expeditionType.deathRemovesFood) {
                                            gameMethods.setFood(G, G.counts.food - 1);
                                        } else {
                                            gameMethods.setConquistadors(G, G.counts.conquistadors - 1);
                                        }
                                        break;

                                    case 3:
                                        G.fever = true;
                                        break;

                                    case 4:
                                    case 5:
                                        gameMethods.setMovementProgress(G, G.counts.movementProgress - 1);
                                        break;

                                    case 6:
                                    case 7:
                                        if (G.expeditionType.allVillagesPeaceful) {
                                            // TODO: add peaceful village
                                        } else {
                                            // TODO: add village
                                        }
                                        break;

                                    case 8:
                                        gameMethods.setMorale(G, G.counts.morale + 1);
                                        break;

                                    case 9:
                                        // TODO: place trail
                                        break;

                                    case 10:
                                    case 11:
                                    case 12:
                                    default:
                                        // TODO: indicate interest
                                        break;
                                }
                            }
                        }
                    },
                    nativeContact: {
                        moves: {
                            updateNativeContact: (G, ctx, value, cellB) => {
                                switch (value) {
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                        // TODO: advanced civilization
                                        break;

                                    case 5:
                                        G.fever = true;
                                        break;

                                    case 6:
                                    case 7:
                                    case 8:
                                        if (G.expeditionType.allVillagesPeaceful) {
                                            // TODO: add peaceful village
                                        } else {
                                            // TODO: add village
                                        }
                                        break;

                                    case 9:
                                        // TODO: place trail
                                        break;

                                    case 10:
                                        gameMethods.setFood(G, G.counts.food + 1);
                                        // TODO: add peaceful village
                                        break;

                                    case 11:
                                    case 12:
                                    default:
                                        gameMethods.setMuskets(G, G.counts.muskets + 1);
                                        gameMethods.setFood(G, G.counts.food + 1);
                                        gameMethods.setMorale(G, G.counts.morale + 1);
                                        // TODO: add peaceful village
                                        break;
                                }
                            }
                        }
                    },
                    hunting: {
                        moves: {
                            updateHunting: (G, ctx, value) => {
                                switch (value) {
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                        if (G.expeditionType.deathRemovesFood) {
                                            gameMethods.setFood(G, G.counts.food - 1);
                                        } else {
                                            gameMethods.setConquistadors(G, G.counts.conquistadors - 1);
                                        }
                                        break;

                                    case 4:
                                        gameMethods.setMorale(G, G.counts.morale - 1);
                                        break;

                                    case 5:
                                        gameMethods.setFood(G, G.counts.food + 1);
                                        gameMethods.setMorale(G, G.counts.morale - 1);
                                        break;

                                    case 6:
                                    case 7:
                                    case 8:
                                        gameMethods.setFood(G, G.counts.food + 1);
                                        break;

                                    case 9:
                                    case 10:
                                        gameMethods.setFood(G, G.counts.food + 2);
                                        break;

                                    case 11:
                                    case 12:
                                    default:
                                        gameMethods.setFood(G, G.counts.food + 2);
                                        gameMethods.setMorale(G, G.counts.morale + 1);
                                        break;
                                }
                            }
                        }
                    },
                    interests: {
                        moves: {
                            updateInterests: (G, ctx, value, data) => {
                                // TODO: handle switching interest to wonder after use
                                switch (value) {
                                    case 2:
                                    case 3:
                                        // TODO: Lagos De Oro
                                        break;

                                    case 4:
                                        gameMethods.setMuskets(G, G.counts.muskets + 5);
                                        // TODO: Ruined Mission (add trail)
                                        break;

                                    case 5:
                                        // TODO: Migration
                                        break;

                                    case 6:
                                    case 7:
                                    case 8:
                                        gameMethods.setMorale(G, G.counts.morale + 5);
                                        // TODO: Wonder
                                        break;

                                    case 9:
                                        // TODO: Predict Eclipse
                                        break;

                                    case 10:
                                        // TODO: Princess Kantyi
                                        break;

                                    case 11:
                                    case 12:
                                    default:
                                        gameMethods.setConquistadors(G, G.counts.conquistadors + 1);
                                        gameMethods.setMuskets(G, G.counts.muskets + 1);
                                        // TODO: Diego Mendoza
                                        break;
                                }
                            }
                        }
                    },
                    eatRations: {
                        moves: {
                            eat: (G, ctx) => {
                                if (G.counts.food === 0) {
                                    gameMethods.setConquistadors(G, G.counts.conquistadors - 1);
                                } else {
                                    gameMethods.setFood(G, G.counts.food - 1);
                                }
                            }
                        }
                    },
                    mapTravel: {
                        moves: {
                            travelTo: (G, ctx, cell) => {
                                // TODO: update location, set morale adj value
                            }
                        }
                    },
                    moraleAdjustment: {
                        moves: {
                            adjustMorale: (G, ctx, value) => {
                                gameMethods.setMorale(G, G.counts.morale + value);

                                if (G.counts.morale === 0) {
                                    gameMethods.setConquistadors(G, G.counts.conquistadors - 1);
                                }
                            }
                        }
                    },
                    trackDay: {
                        moves: {
                            incrementDayCount: (G, ctx) => {
                                ++G.days;
                            }
                        }
                    },
                    journal: {
                        moves: {
                            journal: (G, cts, entry) => {
                                // TODO: record entry
                            }
                        }
                    },
                    cartographerSpecial: {
                        moves: {
                            addTrailTo: (G, ctx, cellB) => {
                                // TODO: place trail
                            }
                        }
                    }
                }
            }
        }
    },

    endif: (G, ctx) => {
        if (G.counts.conquistadors === 0) {
            return {
                win: false,
                allConquistadorsLost: true
            };
        }

        if (G.days === 42) {
            return {
                win: false,
                outOfTime: true
            };
        }

        // TODO: location is last map cell => win
    }
};