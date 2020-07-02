import * as gameConstants from './gameConstants';

export const Game1572 = {
    setup: () => ({
        //diceTray: {
        //    mode: gameConstants.diceTrayModes.preroll,
        //    dice: ['?']
        //},
        expeditionType: {
            id: 0,
            label: ''
        }
    }),

    moves: {
        
    },

    phases: {
        determineExpeditionType: {
            start: true,
            next: 'mainGame',
            moves: {

                setExpeditionType: (G, ctx, id) => {
                    G.expeditionType.id = id;
                    G.expeditionType.label = gameConstants.expeditionTypeLabels[id];
                }
            }
        },

        mainGame: {
            turn: {
                stages: {
                    planning: {
                        moves: {
                            roll: (G, ctx) => {
                            },
                            reRoll: (G, ctx) => {
                            }
                        }
                    },
                    movement: {
                        moves: {
                            roll: (G, ctx) => {
                            },
                            reRoll: (G, ctx) => {
                            }
                        }
                    },
                    mapping: {
                        moves: {
                            chooseCellToMap: (G, ctx) => {
                            },
                            roll: (G, ctx) => {
                            }
                        }
                    },
                    exploring: {
                        moves: {
                            roll: (G, ctx) => {
                            },
                            reRoll: (G, ctx) => {
                            }
                        }
                    },
                    nativeContact: {
                        moves: {
                            roll: (G, ctx) => {
                            },
                            reRoll: (G, ctx) => {
                            }
                        }
                    },
                    hunting: {
                        moves: {
                            roll: (G, ctx) => {
                            },
                            reRoll: (G, ctx) => {
                            }
                        }
                    },
                    interests: {
                        moves: {
                            roll: (G, ctx) => {
                            }
                        }
                    },
                    eatRations: {
                        moves: {
                            eat: (G, ctx) => {
                            }
                        }
                    },
                    mapTravel: {
                        moves: {
                            chooseDest: (G, ctx) => {
                            }
                        }
                    },
                    moraleAdjustment: {
                        moves: {
                            adjust: (G, ctx) => {
                            }
                        }
                    },
                    trackDay: {
                        moves: {
                            track: (G, ctx) => {
                            }
                        }
                    },
                    journal: {
                        moves: {
                            journal: (G, cts) => {
                            }
                        }
                    },
                    cartographerSpecial: {
                        moves: {
                            chooseDest: (G, ctx) => {
                            }
                        }
                    }
                }
            }
        }
    }
};