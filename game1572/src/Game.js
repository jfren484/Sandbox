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
        eclipsePredictionTurnsRemaining: 0,
        enableSelectDiceValues: false,
        fever: false,
        guides: {
            diegoMendoza: false,
            princessKantyi: false
        },
        interestIds: [],
        journal: [],
        journalCurrentDay: [],
        map: {
            adjacentTravelCandidates: [],
            availableTrailLocations: [],
            currentLocationKey: '0,0.5',
            hexes: gameMethods.generateMapHexes(),
            lagosDeOroLocations: [],
            selectableHexes: [],
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
        travelDirection: gameConstants.hexDirections.none,
        usedDiegoMendoza: false
    }),

    phases: {
        preGame: {
            start: true,
            next: 'determineExpeditionType',
            moves: {
                beginGame: (G, ctx) => {
                    gameMethods.addToJournal(G, 'Game Start');
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
                    gameMethods.addToJournal(G, '');

                    ctx.events.endPhase();
                }
            }
        },

        mainGame: {
            turn: {
                onBegin: (G, ctx) => {
                    G.startedTurnFevered = G.fever;
                    G.usedDiegoMendoza = false;
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
                                const die = G.diceTrayPlanning.dice.find(d6 => d6.id === id);
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
                                G.diceTrayPlanning.dice.find(d6 => d6.id === id).assignedValue = i;
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
                                gameMethods.handlePhaseRoll(G, false);
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

                                gameMethods.setMuskets(G, G.counters.muskets.value - 1);
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handlePhaseRoll(G, false);
                                ctx.events.endStage();
                            },
                            acceptRoll: (G, ctx) => {
                                gameMethods.handlePhaseRoll(G, true);
                                ctx.events.setStage('preMapping');
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'movementPostRoll'
                    },
                    movementPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                gameMethods.handlePhaseRoll(G, true);
                                ctx.events.endStage();
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
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

                                if (G.planningDiceAssigned[3] === 0 || G.map.selectableHexes.length === 0) {
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
                                G.map.selectableHexes = [];
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
                                gameMethods.handlePhaseRoll(G, false);
                                ctx.events.endStage();
                            }
                        },
                        next: 'mappingPostRoll'
                    },
                    mappingPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                gameMethods.handlePhaseRoll(G, true);
                                ctx.events.endStage();
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
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
                                gameMethods.handlePhaseRoll(G, false);
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

                                gameMethods.setMuskets(G, G.counters.muskets.value - 1);
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handlePhaseRoll(G, false);
                                ctx.events.endStage();
                            },
                            acceptRoll: (G, ctx) => {
                                const result = gameMethods.handlePhaseRoll(G, true);
                                if (result.trailPending && gameMethods.getAvailableTrailLocations(G)) {
                                    ctx.events.setStage('exploringChooseTrailLocation');
                                } else {
                                    ctx.events.setStage('preNativeContact');
                                }
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'exploringPostRoll'
                    },
                    exploringPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                const result = gameMethods.handlePhaseRoll(G, true);
                                if (result.trailPending && gameMethods.getAvailableTrailLocations(G)) {
                                    ctx.events.setStage('exploringChooseTrailLocation');
                                } else {
                                    ctx.events.endStage();
                                }
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'preNativeContact'
                    },
                    exploringChooseTrailLocation: {
                        moves: {
                            chooseTrailLocation: (G, ctx, trailKey, trailDirection) => {
                                G.map.availableTrailLocations = [];
                                G.map.trails[trailKey] = {
                                    hexKey: G.map.currentLocationKey,
                                    direction: trailDirection
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

                                if (G.planningDiceAssigned[5] === 0 || G.eclipsePredictionTurnsRemaining === 0) {
                                    ctx.events.endStage();
                                } else {
                                    ctx.events.setStage('nativeContactEclipseInstructions');
                                }
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
                                    const currentHex = G.map.hexes[G.map.currentLocationKey];
                                    const diceCount = currentHex.advancedCiv ? 1 : 2;
                                    gameMethods.setupDiceTray(G.diceTray, diceCount, 'Phase ' + G.phase.index + ': ' + G.phase.label);
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
                                gameMethods.handlePhaseRoll(G, false);
                                ctx.events.endStage();
                            },
                            updateDie: (G, ctx, id) => {
                                const die = G.diceTray.dice.find(d6 => d6.id === id);
                                die.value = die.value % 6 + 1;
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'nativeContactMidRoll'
                    },
                    nativeContactMidRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                G.enableSelectDiceValues = false;
                                G.eclipsePredictionTurnsRemaining = Math.max(0, G.eclipsePredictionTurnsRemaining - 1);

                                const result = gameMethods.handlePhaseRoll(G, true);
                                if (result.trailPending && gameMethods.getAvailableTrailLocations(G)) {
                                    ctx.events.setStage('nativeContactChooseTrailLocation');
                                } else {
                                    ctx.events.setStage('preHunting');
                                }
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
                            },
                            rerollDice: (G, ctx) => {
                                if (G.counters.muskets.value < 1) {
                                    return INVALID_MOVE;
                                }

                                gameMethods.setMuskets(G, G.counters.muskets.value - 1);
                                G.diceTray.dice.forEach(d6 => d6.locked = false);
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handlePhaseRoll(G, false);
                                ctx.events.endStage();
                            },
                            rerollDie: (G, ctx, index) => {
                                gameMethods.rollDie(G.diceTray, index);
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'nativeContactPostRoll'
                    },
                    nativeContactPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                const result = gameMethods.handlePhaseRoll(G, true);
                                if (result.trailPending && gameMethods.getAvailableTrailLocations(G)) {
                                    ctx.events.setStage('nativeContactChooseTrailLocation');
                                } else {
                                    ctx.events.endStage();
                                }
                            },
                            rerollDie: (G, ctx, index) => {
                                gameMethods.rollDie(G.diceTray, index);
                                gameMethods.handlePhaseRoll(G, false);
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'preHunting'
                    },
                    nativeContactEclipseInstructions: {
                        moves: {
                            confirmDialog: (G, ctx) => {
                                G.dialog = {};

                                const currentHex = G.map.hexes[G.map.currentLocationKey];
                                const diceCount = currentHex.advancedCiv ? 1 : 2;
                                gameMethods.setupDiceTray(G.diceTray, diceCount, 'Phase ' + G.phase.index + ': ' + G.phase.label, 0);
                                G.diceTray.mode = gameConstants.diceTrayModes.postroll;
                                G.enableSelectDiceValues = true;
                                ctx.events.endStage();
                            }
                        },
                        next: 'nativeContactEclipse'
                    },
                    nativeContactEclipse: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                G.enableSelectDiceValues = false;
                                --G.eclipsePredictionTurnsRemaining;

                                const result = gameMethods.handlePhaseRoll(G, true);
                                if (result.trailPending && gameMethods.getAvailableTrailLocations(G)) {
                                    ctx.events.setStage('nativeContactChooseTrailLocation');
                                } else {
                                    ctx.events.endStage();
                                }
                            },
                            updateDie: (G, ctx, id) => {
                                const die = G.diceTray.dice.find(d6 => d6.id === id);
                                die.value = die.value % 6 + 1;
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'preHunting'
                    },
                    nativeContactChooseTrailLocation: {
                        moves: {
                            chooseTrailLocation: (G, ctx, trailKey, trailDirection) => {
                                G.map.availableTrailLocations = [];
                                G.map.trails[trailKey] = {
                                    hexKey: G.map.currentLocationKey,
                                    direction: trailDirection
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
                                gameMethods.handlePhaseRoll(G, false);
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

                                gameMethods.setMuskets(G, G.counters.muskets.value - 1);
                                gameMethods.rollDice(G.diceTray);
                                gameMethods.handlePhaseRoll(G, false);
                                ctx.events.endStage();
                            },
                            acceptRoll: (G, ctx) => {
                                gameMethods.handlePhaseRoll(G, true);
                                ctx.events.setStage('preInterests');
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'huntingPostRoll'
                    },
                    huntingPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                gameMethods.handlePhaseRoll(G, true);
                                ctx.events.endStage();
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
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

                                if (!G.map.hexes[G.map.currentLocationKey].interestType.isPending) {
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
                                gameMethods.handlePhaseRoll(G, false);
                                ctx.events.endStage();
                            }
                        },
                        next: 'interestsPostRoll'
                    },
                    interestsPostRoll: {
                        moves: {
                            acceptRoll: (G, ctx) => {
                                const result = gameMethods.handlePhaseRoll(G, true);
                                if (result.trailPending && gameMethods.getAvailableTrailLocations(G)) {
                                    ctx.events.setStage('interestsChooseTrailLocation');
                                } else if (result.lagosDeOroPending) {
                                    gameMethods.getLagosDeOroFirstLocations(G);
                                    ctx.events.setStage('interestsChooseLagosDeOro1');
                                } else if (result.wonderPending) {
                                    ctx.events.setStage('interestsDescribeWonder');
                                } else {
                                    ctx.events.endStage();
                                }
                            },
                            incrementRoll: (G, ctx) => {
                                G.diegoMendozaBonus = 1;
                                G.usedDiegoMendoza = true;
                                gameMethods.handlePhaseRoll(G, false);
                            }
                        },
                        next: 'preEatRations'
                    },
                    interestsChooseTrailLocation: {
                        moves: {
                            chooseTrailLocation: (G, ctx, trailKey, trailDirection) => {
                                G.map.availableTrailLocations = [];
                                G.map.trails[trailKey] = {
                                    hexKey: G.map.currentLocationKey,
                                    direction: trailDirection
                                };
                                ctx.events.endStage();
                            }
                        },
                        next: 'preEatRations'
                    },
                    interestsChooseLagosDeOro1: {
                        moves: {
                            chooseHex: (G, ctx, hexKey) => {
                                G.map.lagosDeOroLocations = [hexKey];
                                gameMethods.getLagosDeOroSecondLocations(G);
                                ctx.events.endStage();
                            }
                        },
                        next: 'interestsChooseLagosDeOro2'
                    },
                    interestsChooseLagosDeOro2: {
                        moves: {
                            chooseHex: (G, ctx, hexKey) => {
                                if (G.map.lagosDeOroLocations.includes(hexKey)) {
                                    G.map.lagosDeOroLocations = [];
                                    gameMethods.getLagosDeOroFirstLocations(G);
                                    ctx.events.setStage('interestsChooseLagosDeOro1');
                                } else {
                                    G.map.lagosDeOroLocations.push(hexKey);
                                    gameMethods.getLagosDeOroThirdLocations(G);
                                    ctx.events.endStage();
                                }
                            }
                        },
                        next: 'interestsChooseLagosDeOro3'
                    },
                    interestsChooseLagosDeOro3: {
                        moves: {
                            chooseHex: (G, ctx, hexKey) => {
                                if (G.map.lagosDeOroLocations.includes(hexKey)) {
                                    G.map.lagosDeOroLocations = G.map.lagosDeOroLocations.filter(key => key !== hexKey);
                                    gameMethods.getLagosDeOroSecondLocations(G);
                                    ctx.events.setStage('interestsChooseLagosDeOro2');
                                } else {
                                    G.map.selectableHexes = [];
                                    G.map.lagosDeOroLocations.push(hexKey);
                                    gameMethods.createLagosDeOro(G);
                                    ctx.events.endStage();
                                }
                            }
                        },
                        next: 'preEatRations'
                    },
                    interestsDescribeWonder: {
                        moves: {
                            confirmDialog: (G, ctx, description) => {
                                G.dialog = {};
                                G.map.hexes[G.map.currentLocationKey].interestType.description = description;

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

                                if (!G.map.hexes[G.map.currentLocationKey].migration) {
                                    if (G.counters.food.value > 0) {
                                        gameMethods.setFood(G, G.counters.food.value - 1);
                                    } else {
                                        gameMethods.setConquistadors(G, G.counters.conquistadors.value - 1);
                                    }
                                }

                                ctx.events.endStage();
                            },
                            specialAction: (G, ctx) => {
                                if (!G.map.hexes[G.map.currentLocationKey].migration || G.counters.muskets.value === 0) {
                                    return INVALID_MOVE;
                                }

                                gameMethods.setFood(G, 6);
                                gameMethods.setMuskets(G, G.counters.muskets.value - 1);

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
                                if (gameMethods.getAvailableTrailLocations(G)) {
                                    G.phase = gameConstants.gamePhases.cartographerTrail;
                                    gameMethods.generatePhaseDialog(G);
                                    ctx.events.endStage();
                                } else {
                                    ctx.events.endTurn();
                                }
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
                            chooseTrailLocation: (G, ctx, trailKey, trailDirection) => {
                                G.map.availableTrailLocations = [];
                                G.map.trails[trailKey] = {
                                    hexKey: G.map.currentLocationKey,
                                    direction: trailDirection
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