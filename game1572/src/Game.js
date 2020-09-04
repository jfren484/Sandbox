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
        days: 0,
        dialog: {},
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
        map: {
            adjacentTravelCandidates: [],
            adjacentUnmappedHexes: [],
            availableTrailLocations: [],
            currentLocationKey: '0, 0.5',
            hexes: gameMethods.generateMapHexes(),
            trailPending: false,
            trails: {}
        },
        musketBonus: 0,
        phase: gameConstants.gamePhases.planning,
        phaseComment: '',
        planningDiceAssigned: {
            2: 0,
            3: 0,
            4: 0,
            5: 0,
            6: 0
        },
        startedTurnFevered: false,
        travelDirection: gameConstants.hexDirections.none
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

                    G.expeditionType = gameConstants.expeditionTypes[G.diceTray.dice[0].value];
                    G.diceTray.extraContent = [G.expeditionType.label + ' - ' + G.expeditionType.description];
                },
                acceptRoll: (G, ctx) => {
                    G.diceTray.dice = [];

                    ctx.events.endPhase();
                }
            }
        },

        mainGame: {
            turn: {
                onBegin: (G, ctx) => {
                    G.startedTurnFevered = G.fever;
                    ctx.events.setStage('prePlanning');
                },
                onEnd: (G, ctx) => {
                    ++G.days;
                },
                stages: {
                    prePlanning: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.planning;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            },
                        },
                        next: 'planningInstructions'
                    },
                    planningInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};
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
                            updateDie: (G, ctx, id) => {
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
                                gameMethods.phasePlanningFinish(G, ctx);
                                ctx.events.endStage();
                            },
                            cureFever: (G, ctx) => {
                                gameMethods.cureFever(G);
                            },
                            updateDie: (G, ctx, id, i) => {
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
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            },
                        },
                        next: 'movementInstructions'
                    },
                    movementInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                if (G.planningDiceAssigned[2] === 0) {
                                    ctx.events.setStage('preMapping');
                                } else {
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label);
                                    ctx.events.endStage();
                                }
                            }
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
                            acceptRoll: (G, ctx) => {
                                gameMethods.handleMovementRoll(G, true);
                                ctx.events.setStage('preMapping');
                            }
                        },
                        next: 'movementPostRoll'
                    },
                    movementPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
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
                                if (G.planningDiceAssigned[3] > 0) {
                                    gameMethods.getAdjacentUnmapped(G);
                                }
                                gameMethods.generatePhaseDialog(G);
                                if (G.phaseComment === '') {
                                    G.phaseComment = 'Choose hex to Map';
                                }
                                ctx.events.endStage();
                            },
                        },
                        next: 'mappingInstructions'
                    },
                    mappingInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                if (G.planningDiceAssigned[3] === 0 || G.map.adjacentUnmappedHexes.length === 0) {
                                    ctx.events.setStage('preExploring');
                                } else {
                                    ctx.events.endStage();
                                }
                            }
                        },
                        next: 'mappingChooseHex'
                    },
                    mappingChooseHex: {
                        moves: {
                            chooseHex: (G, ctx, key) => {
                                G.map.target = key;
                                G.map.adjacentUnmappedHexes = [];
                                gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label);
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
                            acceptRoll: (G, ctx) => {
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
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'exploringInstructions'
                    },
                    exploringInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                if (G.planningDiceAssigned[4] === 0) {
                                    ctx.events.setStage('preNativeContact');
                                } else {
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label);
                                    ctx.events.endStage();
                                }
                            }
                        },
                        next: 'exploringRoll'
                    },
                    exploringRoll: {
                        moves: {
                            rollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTray, gameConstants.diceTrayModes.rerollAll);
                                gameMethods.handleExploringRoll(G, false);
                                ctx.events.endStage();
                            }
                        },
                        next: 'exploringMidRoll'
                    },
                    exploringMidRoll: {
                        moves: {
                            rerollDice: (G, ctx) => {
                                if (G.counters.muskets.value < 1) {
                                    return INVALID_MOVE;
                                }

                                gameMethods.setMuskets(G, G.counters.muskets.value - 1)
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handleExploringRoll(G, false);
                                ctx.events.endStage();
                            },
                            acceptRoll: (G, ctx) => {
                                gameMethods.handleExploringRoll(G, true);
                                if (G.map.trailPending) {
                                    gameMethods.getAvailableTrailLocations(G);
                                    // TODO: handle no available locations?
                                    ctx.events.setStage('exploringChooseTrailLocation');
                                } else {
                                    ctx.events.setStage('preNativeContact');
                                }
                            }
                        },
                        next: 'exploringPostRoll'
                    },
                    exploringPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                gameMethods.handleExploringRoll(G, true);
                                if (G.map.trailPending) {
                                    gameMethods.getAvailableTrailLocations(G);
                                    // TODO: handle no available locations?
                                    ctx.events.endStage();
                                } else {
                                    ctx.events.setStage('preNativeContact');
                                }
                            }
                        },
                        next: 'exploringChooseTrailLocation'
                    },
                    exploringChooseTrailLocation: {
                        moves: {
                            chooseTrailLocation: (G, ctx, trailKey, offsetRec) => {
                                G.map.availableTrailLocations = [];
                                G.map.trails[trailKey] = {
                                    hexKey: G.map.currentLocationKey,
                                    offset: offsetRec
                                };
                                ctx.events.endStage();
                            }
                        },
                        next: 'preNativeContact'
                    },
                    preNativeContact: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.nativeContact;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            },
                        },
                        next: 'nativeContactInstructions'
                    },
                    nativeContactInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                if (G.planningDiceAssigned[5] === 0) {
                                    ctx.events.setStage('preHunting');
                                } else {
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label);
                                    ctx.events.endStage();
                                }
                            }
                        },
                        next: 'nativeContactRoll'
                    },
                    nativeContactRoll: {
                        moves: {
                            rollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTray, gameConstants.diceTrayModes.rerollAll);
                                gameMethods.handleNativeContactRoll(G, false);
                                ctx.events.endStage();
                            }
                        },
                        next: 'nativeContactMidRoll'
                    },
                    nativeContactMidRoll: {
                        moves: {
                            rerollDice: (G, ctx) => {
                                if (G.counters.muskets.value < 1) {
                                    return INVALID_MOVE;
                                }

                                gameMethods.setMuskets(G, G.counters.muskets.value - 1)
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handleNativeContactRoll(G, false);
                                ctx.events.endStage();
                            },
                            acceptRoll: (G, ctx) => {
                                gameMethods.handleNativeContactRoll(G, true);
                                if (G.map.trailPending) {
                                    gameMethods.getAvailableTrailLocations(G);
                                    // TODO: handle no available locations?
                                    ctx.events.setStage('nativeContactTrailLocation');
                                } else {
                                    ctx.events.setStage('preHunting');
                                }
                            }
                        },
                        next: 'nativeContactPostRoll'
                    },
                    nativeContactPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                gameMethods.handleNativeContactRoll(G, true);
                                if (G.map.trailPending) {
                                    gameMethods.getAvailableTrailLocations(G);
                                    // TODO: handle no available locations?
                                    ctx.events.endStage();
                                } else {
                                    ctx.events.setStage('preHunting');
                                }
                            }
                        },
                        next: 'nativeContactTrailLocation'
                    },
                    nativeContactTrailLocation: {
                        moves: {
                            chooseTrailLocation: (G, ctx, trailKey, offsetRec) => {
                                G.map.availableTrailLocations = [];
                                G.map.trails[trailKey] = {
                                    hexKey: G.map.currentLocationKey,
                                    offset: offsetRec
                                };
                                ctx.events.endStage();
                            }
                        },
                        next: 'preHunting'
                    },
                    preHunting: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.hunting;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'huntingInstructions'
                    },
                    huntingInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                if (G.planningDiceAssigned[6] === 0) {
                                    ctx.events.setStage('preInterests');
                                } else {
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label);
                                    ctx.events.endStage();
                                }
                            }
                        },
                        next: 'huntingRoll'
                    },
                    huntingRoll: {
                        moves: {
                            rollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTray, gameConstants.diceTrayModes.rerollAll);
                                gameMethods.handleHuntingRoll(G, false);
                                ctx.events.endStage();
                            }
                        },
                        next: 'huntingMidRoll'
                    },
                    huntingMidRoll: {
                        moves: {
                            rerollDice: (G, ctx) => {
                                if (G.counters.muskets.value < 1) {
                                    return INVALID_MOVE;
                                }

                                gameMethods.setMuskets(G, G.counters.muskets.value - 1)
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handleHuntingRoll(G, false);
                                ctx.events.endStage();
                            },
                            acceptRoll: (G, ctx) => {
                                gameMethods.handleHuntingRoll(G, true);
                                ctx.events.setStage('preInterests');
                            }
                        },
                        next: 'huntingPostRoll'
                    },
                    huntingPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                gameMethods.handleHuntingRoll(G, true);
                                ctx.events.endStage();
                            }
                        },
                        next: 'preInterests'
                    },
                    preInterests: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.interests;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'interestsInstructions'
                    },
                    interestsInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                if (G.map.hexes[G.map.currentLocationKey].interests.filter(i => gameConstants.interestTypes.pending).length === 0) {
                                    ctx.events.setStage('preEatRations');
                                } else {
                                    gameMethods.setupDiceTray(G.diceTray, 2, 'Phase ' + G.phase.index + ': ' + G.phase.label);
                                    ctx.events.endStage();
                                }
                            }
                        },
                        next: 'interestsRoll'
                    },
                    interestsRoll: {
                        moves: {
                            rollDice: (G, ctx) => {
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handleInterestsRoll(G, false);
                                ctx.events.endStage();
                            }
                        },
                        next: 'interestsPostRoll'
                    },
                    interestsPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                gameMethods.handleInterestsRoll(G, true);
                                ctx.events.endStage();
                            }
                        },
                        next: 'preEatRations'
                    },
                    preEatRations: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.eatRations;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'eatRations'
                    },
                    eatRations: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                if (G.counters.food.value > 0) {
                                    gameMethods.setFood(G, G.counters.food.value - 1);
                                } else {
                                    gameMethods.setConquistadors(G, G.counters.conquistadors.value - 1);
                                }

                                ctx.events.endStage();
                            }
                        },
                        next: 'preMapTravel'
                    },
                    preMapTravel: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.mapTravel;
                                gameMethods.getAdjacentTravelCandidates(G);
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'mapTravelInstructions'
                    },
                    mapTravelInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                if (G.map.adjacentTravelCandidates.length === 0) {
                                    G.travelDirection = gameConstants.hexDirections.none;

                                    ctx.events.setStage('preMoraleAdjustment');
                                } else {
                                    ctx.events.endStage();
                                }
                            }
                        },
                        next: 'mapTravel'
                    },
                    mapTravel: {
                        moves: {
                            chooseHex: (G, ctx, key) => {
                                gameMethods.travelTo(G, key);
                                G.map.adjacentTravelCandidates = [];
                                ctx.events.endStage();
                            }
                        },
                        next: 'preMoraleAdjustment'
                    },
                    preMoraleAdjustment: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.moraleAdjustment;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'moraleAdjustment'
                    },
                    moraleAdjustment: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                gameMethods.setMorale(G, G.counters.morale.value + G.travelDirection.moraleAdjustment);

                                if (G.counters.morale.value === 0) {
                                    gameMethods.setConquistadors(G, G.counters.conquistadors.value - 1);
                                }

                                ctx.events.endStage();
                            }
                        },
                        next: 'preTrackDay'
                    },
                    preTrackDay: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.trackDay;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'trackDay'
                    },
                    trackDay: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};
                                // TODO: mark days?;
                                ctx.events.endStage();
                            }
                        },
                        next: 'preJournal'
                    },
                    preJournal: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                G.phase = gameConstants.gamePhases.journalEntry;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'journal'
                    },
                    journal: {
                        moves: {
                            confirmDialog: (G, ctx, entry) => {
                                G.dialog = {};
                                // TODO: record entry

                                if (G.expeditionType.placeTrail && G.counters.movementProgress.value >= 3) {
                                    ctx.events.endStage();
                                } else {
                                    ctx.events.endTurn();
                                }
                            }
                        },
                        next: 'preCartographerTrail'
                    },
                    preCartographerTrail: {
                        moves: {
                            beginPhase: (G, ctx) => {
                                gameMethods.getAvailableTrailLocations(G);
                                // TODO: handle no available locations?
                                G.phase = gameConstants.gamePhases.cartographerTrail;
                                gameMethods.generatePhaseDialog(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'cartographerTrailInstructions'
                    },
                    cartographerTrailInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};
                                ctx.events.endStage();
                            }
                        },
                        next: 'cartographerTrail'
                    },
                    cartographerTrail: {
                        moves: {
                            chooseTrailLocation: (G, ctx, trailKey, offsetRec) => {
                                G.map.availableTrailLocations = [];
                                G.map.trails[trailKey] = {
                                    hexKey: G.map.currentLocationKey,
                                    offset: offsetRec
                                };

                                ctx.events.endTurn();
                            }
                        }
                    }
                }
            }
        }
    },

    endif: (G, ctx) => {
        if (G.counters.conquistadors.value === 0) {
            return {
                win: false,
                reason: 'allConquistadorsLost'
            };
        }

        if (G.days === 42) {
            return {
                win: false,
                reason: 'outOfTime'
            };
        }

        if (G.map.hexes[G.map.currentLocationKey].winGame) {
            return {
                win: true
            };
        }
    }
};