import { INVALID_MOVE } from 'boardgame.io/core';
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
            title: gameConstants.diceTrayTitles.expeditionType,
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
        phase: gameConstants.gamePhases.planning,
        phaseComment: '',
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
                }
            }
        },

        determineExpeditionType: {
            next: 'mainGame',
            onBegin: (G, ctx) => {
                gameMethods.setupDiceTray(G.diceTray, 1, gameConstants.diceTrayTitles.expeditionType);
            },
            moves: {
                rollDice: (G, ctx) => {
                    gameMethods.rollDice(G.diceTray);

                    const expeditionType = gameConstants.expeditionTypes[G.diceTray.dice[0].value];
                    G.diceTray.extraContent = [expeditionType.label + ' - ' + expeditionType.description];
                },
                setExpeditionType: (G, ctx, id) => {
                    G.diceTray.dice = [];
                    G.expeditionType = gameConstants.expeditionTypes[id];

                    ctx.events.endPhase();
                    ctx.events.setStage('prePlanning');
                }
            }
        },

        mainGame: {
            turn: {
                stages: {
                    prePlanning: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.planning;
                                G.phaseComment = '';
                                gameMethods.setupDiceTray(G.diceTrayPlanning, 5);
                                ctx.events.endStage();
                            },
                        },
                        next: 'planningRoll'
                    },
                    planningRoll: {
                        moves: {
                            rollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTrayPlanning, gameConstants.diceTrayModes.rerollPartial);
                                ctx.events.endStage();
                            }
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
                                //ctx.events.setStage(nextStage);
                                ctx.events.endStage();
                            },
                            cureFever: (G, ctx) => {
                                gameMethods.cureFever(G);
                            },
                            toggleDieAssigned: (G, ctx, id, i) => {
                                const die = G.diceTrayPlanning.dice.filter(d6 => d6.id === id)[0];
                                die.assignedValue = i;
                            }
                        },
                        next: 'preMovement'
                    },
                    preMovement: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.movement;
                                if (G.planningDiceAssigned[2] === 0) {
                                    G.phaseComment = 'No dice assigned to ' + G.phase.label;
                                    ctx.events.setStage('preMapping');
                                } else {
                                    G.phaseComment = '';
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label, true);
                                    ctx.events.endStage();
                                }
                            },
                        },
                        next: 'movementRoll'
                    },
                    movementRoll: {
                        moves: {
                            rollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTray, gameConstants.diceTrayModes.rerollAll);
                                gameMethods.handleMovementRoll(G, false);
                                ctx.events.endStage();
                            }
                        },
                        next: 'movementMidRoll'
                    },
                    movementMidRoll: {
                        moves: {
                            rerollDice: (G, ctx) => {
                                if (G.counters.muskets.value < 1) {
                                    return INVALID_MOVE;
                                }

                                gameMethods.setMuskets(G, G.counters.muskets.value - 1)
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handleMovementRoll(G, false);
                                ctx.events.endStage();
                            },
                            updateMovementProgress: (G, ctx) => {
                                gameMethods.handleMovementRoll(G, true);
                                ctx.events.setStage('preMapping');
                            }
                        },
                        next: 'movementPostRoll'
                    },
                    movementPostRoll: {
                        moves: {
                            updateMovementProgress: (G, ctx) => {
                                gameMethods.handleMovementRoll(G, true);
                                ctx.events.endStage();
                            }
                        },
                        next: 'preMapping'
                    },
                    preMapping: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.mapping;
                                if (G.planningDiceAssigned[3] === 0) {
                                    G.phaseComment = 'No dice assigned to ' + G.phase.label;
                                    ctx.events.setStage('preExploring');
                                } else if (gameMethods.getAdjacentUnmapped(G).length === 0) {
                                    G.phaseComment = 'No unmapped adjacent cells';
                                    ctx.events.setStage('preExploring');
                                } else {
                                    G.phaseComment = '';
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label, true);
                                    ctx.events.endStage();
                                }
                            },
                        },
                        next: 'mappingChooseCell'
                    },
                    mappingChooseCell: {
                        moves: {
                            chooseCell: (G, ctx) => {
                                // TODO
                                ctx.events.endStage();
                            }
                        },
                        next: 'mappingRoll'
                    },
                    mappingRoll: {
                        moves: {
                            rollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handleMappingRoll(G, false);
                                ctx.events.endStage();
                            }
                        },
                        next: 'mappingPostRoll'
                    },
                    mappingPostRoll: {
                        moves: {
                            updateMapping: (G, ctx) => {
                                gameMethods.handleMappingRoll(G, true);
                                ctx.events.endStage();
                            }
                        },
                        next: 'preExploring'
                    },
                    preExploring: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.exploring;
                                if (G.planningDiceAssigned[4] === 0) {
                                    G.phaseComment = 'No dice assigned to ' + G.phase.label;
                                    ctx.events.setStage('preNativeContact');
                                } else {
                                    G.phaseComment = '';
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label, true);
                                    ctx.events.endStage();
                                }
                            },
                        },
                        next: 'exploringRoll'
                    },
                    exploringRoll: {
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
                    preNativeContact: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.nativeContact;
                                if (G.planningDiceAssigned[5] === 0) {
                                    G.phaseComment = 'No dice assigned to ' + G.phase.label;
                                    ctx.events.setStage('preHunting');
                                } else {
                                    G.phaseComment = '';
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label, true);
                                    ctx.events.endStage();
                                }
                            },
                        },
                        next: 'nativeContactRoll'
                    },
                    nativeContactRoll: {
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
                    preHunting: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.hunting;
                                if (G.planningDiceAssigned[6] === 0) {
                                    G.phaseComment = 'No dice assigned to ' + G.phase.label;
                                    ctx.events.setStage('preInterests');
                                } else {
                                    G.phaseComment = '';
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label, true);
                                    ctx.events.endStage();
                                }
                            },
                        },
                        next: 'huntingRoll'
                    },
                    huntingRoll: {
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
                    preInterests: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.interests;
                                if (G.currentLocation.interests.filter(i => gameConstants.interestTypes.pending).length === 0) {
                                    G.phaseComment = 'No interests to resolve';
                                    ctx.events.setStage('eatRations');
                                } else {
                                    G.phaseComment = '';
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label, true);
                                    ctx.events.endStage();
                                }
                            },
                        },
                        next: 'nativeContactRoll'
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