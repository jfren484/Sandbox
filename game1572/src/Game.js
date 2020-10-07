import * as gameConstants from './gameConstants';
import * as gameMethods from './gameMethods';
import * as gameMoves from './gameMoves';
import { mapHelper } from './mapHelper';

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
            hexes: mapHelper.generateMapHexes(),
            lagosDeOroLocations: [],
            path: ['0,0.5'],
            selectableHexes: [],
            trails: {}
        },
        musketBonus: 0,
        phase: {},
        phaseComment: '',
        planningDiceAssigned: {
            2: 0,
            3: 0,
            4: 0,
            5: 0,
            6: 0,
            7: 0 // included to make handling dice rolls simpler.
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
                    gameMethods.addToJournal(G.journal, 'Game Start');
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
                    gameMethods.addToJournal(G.journal, 'Expedition Type: ' + G.expeditionType.label);

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
                    gameMethods.addToJournal(G.journal, {
                        gameDay: ++G.days,
                        journal: G.journalCurrentDay
                    });
                    G.journalCurrentDay = [];
                },
                stages: {
                    prePlanning: {
                        moves: {
                            ...gameMoves.beginPhaseMove,
                        },
                        next: 'planningInstructions'
                    },
                    planningInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'planningRoll'
                    },
                    planningRoll: {
                        moves: {
                            ...gameMoves.planningRollMoves
                        },
                        next: 'planningMidRoll'
                    },
                    planningMidRoll: {
                        moves: {
                            ...gameMoves.addConquistadorMove,
                            ...gameMoves.cureFeverMove,
                            ...gameMoves.planningMidRollMoves
                        },
                        next: 'planningPostRoll'
                    },
                    planningPostRoll: {
                        moves: {
                            ...gameMoves.planningPostRollMoves
                        },
                        next: 'planningAssignment'
                    },
                    planningAssignment: {
                        moves: {
                            ...gameMoves.addConquistadorMove,
                            ...gameMoves.cureFeverMove,
                            ...gameMoves.planningAssignmentMoves
                        },
                        next: 'planningEnd'
                    },
                    planningEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preMovement'
                    },
                    preMovement: {
                        moves: {
                            ...gameMoves.beginPhaseMove,
                        },
                        next: 'movementInstructions'
                    },
                    movementInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'movementRoll'
                    },
                    movementRoll: {
                        moves: {
                            ...gameMoves.rollDiceMove
                        },
                        next: 'movementMidRoll'
                    },
                    movementMidRoll: {
                        moves: {
                            ...gameMoves.rerollDiceMove,
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove
                        },
                        next: 'movementPostRoll'
                    },
                    movementPostRoll: {
                        moves: {
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove
                        },
                        next: 'movementEnd'
                    },
                    movementEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preMapping'
                    },
                    preMapping: {
                        moves: {
                            ...gameMoves.beginPhaseMove,
                        },
                        next: 'mappingInstructions'
                    },
                    mappingInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'mappingChooseHex'
                    },
                    mappingChooseHex: {
                        moves: {
                            ...gameMoves.mappingChooseHexMoves
                        },
                        next: 'mappingRoll'
                    },
                    mappingRoll: {
                        moves: {
                            ...gameMoves.rollDiceMove
                        },
                        next: 'mappingPostRoll'
                    },
                    mappingPostRoll: {
                        moves: {
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove
                        },
                        next: 'mappingEnd'
                    },
                    mappingEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preExploring'
                    },
                    preExploring: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'exploringInstructions'
                    },
                    exploringInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'exploringRoll'
                    },
                    exploringRoll: {
                        moves: {
                            ...gameMoves.rollDiceMove
                        },
                        next: 'exploringMidRoll'
                    },
                    exploringMidRoll: {
                        moves: {
                            ...gameMoves.rerollDiceMove,
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove
                        },
                        next: 'exploringPostRoll'
                    },
                    exploringPostRoll: {
                        moves: {
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove
                        },
                        next: 'exploringEnd'
                    },
                    exploringChooseTrailLocation: {
                        moves: {
                            ...gameMoves.chooseTrailLocationMove
                        },
                        next: 'exploringEnd'
                    },
                    exploringEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preNativeContact'
                    },
                    preNativeContact: {
                        moves: {
                            ...gameMoves.beginPhaseMove,
                        },
                        next: 'nativeContactInstructions'
                    },
                    nativeContactInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'nativeContactRoll'
                    },
                    nativeContactRoll: {
                        moves: {
                            ...gameMoves.rollDiceMove
                        },
                        next: 'nativeContactMidRoll'
                    },
                    nativeContactMidRoll: {
                        moves: {
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove,
                            ...gameMoves.rerollDiceMove,
                            ...gameMoves.rerollDieMove
                        },
                        next: 'nativeContactPostRoll'
                    },
                    nativeContactPostRoll: {
                        moves: {
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove,
                            ...gameMoves.rerollDieMove
                        },
                        next: 'nativeContactEnd'
                    },
                    nativeContactEclipseInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'nativeContactEclipse'
                    },
                    nativeContactEclipse: {
                        moves: {
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.nativeContactEclipseMoves
                        },
                        next: 'nativeContactEnd'
                    },
                    nativeContactChooseTrailLocation: {
                        moves: {
                            ...gameMoves.chooseTrailLocationMove
                        },
                        next: 'nativeContactEnd'
                    },
                    nativeContactEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preHunting'
                    },
                    preHunting: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'huntingInstructions'
                    },
                    huntingInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'huntingRoll'
                    },
                    huntingRoll: {
                        moves: {
                            ...gameMoves.rollDiceMove
                        },
                        next: 'huntingMidRoll'
                    },
                    huntingMidRoll: {
                        moves: {
                            ...gameMoves.rerollDiceMove,
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove
                        },
                        next: 'huntingPostRoll'
                    },
                    huntingPostRoll: {
                        moves: {
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove
                        },
                        next: 'huntingEnd'
                    },
                    huntingEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preInterests'
                    },
                    preInterests: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'interestsInstructions'
                    },
                    interestsInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'interestsRoll'
                    },
                    interestsRoll: {
                        moves: {
                            ...gameMoves.rollDiceMove
                        },
                        next: 'interestsPostRoll'
                    },
                    interestsPostRoll: {
                        moves: {
                            ...gameMoves.acceptRollMove,
                            ...gameMoves.incrementRollMove
                        },
                        next: 'interestsEnd'
                    },
                    interestsChooseTrailLocation: {
                        moves: {
                            ...gameMoves.chooseTrailLocationMove
                        },
                        next: 'interestsEnd'
                    },
                    interestsChooseLagosDeOro1: {
                        moves: {
                            ...gameMoves.lagosDeOroChooseHexMove
                        },
                        next: 'interestsChooseLagosDeOro2'
                    },
                    interestsChooseLagosDeOro2: {
                        moves: {
                            ...gameMoves.lagosDeOroChooseHexMove
                        },
                        next: 'interestsChooseLagosDeOro3'
                    },
                    interestsChooseLagosDeOro3: {
                        moves: {
                            ...gameMoves.lagosDeOroChooseHexMove
                        },
                        next: 'interestsEnd'
                    },
                    interestsDescribeWonder: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'interestsEnd'
                    },
                    interestsEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preEatRations'
                    },
                    preEatRations: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'eatRations'
                    },
                    eatRations: {
                        moves: {
                            ...gameMoves.confirmDialogMove,
                            ...gameMoves.eatRationsSpecialActionMove
                        },
                        next: 'eatRationsEnd'
                    },
                    eatRationsEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preMapTravel'
                    },
                    preMapTravel: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'mapTravelInstructions'
                    },
                    mapTravelInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'mapTravel'
                    },
                    mapTravel: {
                        moves: {
                            ...gameMoves.mapTravelChooseHexMoves
                        },
                        next: 'mapTravelEnd'
                    },
                    mapTravelEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preMoraleAdjustment'
                    },
                    preMoraleAdjustment: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'moraleAdjustment'
                    },
                    moraleAdjustment: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'moraleAdjustmentEnd'
                    },
                    moraleAdjustmentEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preTrackDay'
                    },
                    preTrackDay: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'trackDay'
                    },
                    trackDay: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'trackDayEnd'
                    },
                    trackDayEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preJournalEntry'
                    },
                    preJournalEntry: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'journalEntry'
                    },
                    journalEntry: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'journalEntryEnd'
                    },
                    journalEntryEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
                        },
                        next: 'preCartographerTrail'
                    },
                    preCartographerTrail: {
                        moves: {
                            ...gameMoves.beginPhaseMove
                        },
                        next: 'cartographerTrailInstructions'
                    },
                    cartographerTrailInstructions: {
                        moves: {
                            ...gameMoves.confirmDialogMove
                        },
                        next: 'cartographerTrail'
                    },
                    cartographerTrail: {
                        moves: {
                            ...gameMoves.chooseTrailLocationMove
                        },
                        next: 'cartographerTrailEnd'
                    },
                    cartographerTrailEnd: {
                        moves: {
                            ...gameMoves.endPhaseMove
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