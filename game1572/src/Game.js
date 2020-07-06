import * as gameConstants from './gameConstants';
import * as gameMethods from './gameMethods';

export const Game1572 = {
    setup: () => ({
        name: '1572: The Lost Expedition',

        counts: {
            conquistadors: 6,
            muskets: 6,
            food: 6,
            morale: 6,
            movementProgress: 6
        },
        days: 0,
        expeditionType: {
            id: 0,
            label: '',
            description: ''
        },
        fever: false,
        planningDice: {
            2: 0,
            3: 0,
            4: 0,
            5: 0,
            6: 0
        }
    }),

    phases: {
        determineExpeditionType: {
            start: true,
            next: 'mainGame',
            moves: {
                setExpeditionType: (G, ctx, id) => {
                    G.expeditionType = gameConstants.expeditionTypes[id];
                }
            }
        },

        mainGame: {
            turn: {
                stages: {
                    planning: {
                        moves: {
                            addConquistador: (G, ctx) => {
                                ++G.counts.conquistadors;
                            },
                            allocateDice: (G, ctx, dice) => {
                                for (let i = 2; i < 7; ++i) {
                                    G.planningDice[i] = dice[i];
                                }
                            },
                            cureFever: (G, ctx) => {
                                G.fever = false;
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