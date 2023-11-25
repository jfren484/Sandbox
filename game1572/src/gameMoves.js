import * as gameConstants from './gameConstants';
import * as gameMethods from './gameMethods';
import { INVALID_MOVE } from 'boardgame.io/core';
import { confirmDialogHandlerFactory } from './confirmDialogHandlers/confirmDialogHandlerFactory';
import { dieRollHandlerFactory } from './dieRollHandlers/dieRollHandlerFactory';
import { mapHelper } from './mapHelper';

export const acceptRollMove = {
    acceptRoll: (G, ctx) => {
        const currentPhase = G.phase.key;

        if (gameMethods.getStage(ctx) === 'nativeContactEclipse') {
            G.enableSelectDiceValues = false;
            --G.eclipsePredictionTurnsRemaining;
        }

        const result = gameMethods.handlePhaseRoll(G, true);
        const mh = new mapHelper(G);

        if (result.trailPending) {
            if (mh.getAvailableTrailLocations()) {
                G.phaseComment = 'Choose location for trail';
                ctx.events.setStage(currentPhase + 'ChooseTrailLocation');
            } else {
                gameMethods.addToJournalCurrentDay(G, 'No trail locations available');
                ctx.events.setStage(currentPhase + 'End');
            }
        } else if (result.lagosDeOroPending) {
            mh.getLagosDeOroLocations();
            ctx.events.setStage(currentPhase + 'ChooseLagosDeOro1');
        } else if (result.wonderPending) {
            ctx.events.setStage(currentPhase + 'DescribeWonder');
        } else {
            ctx.events.setStage(currentPhase + 'End');
        }
    }
}

export const addConquistadorMove = {
    addConquistador: (G, ctx) => {
        if (G.diceTrayPlanning.dice.count < 4) {
            return;
        }

        const required = 4;
        const val = G.diceTrayPlanning.dice[2].value;
        if (val !== 1 && G.diceTrayPlanning.dice.filter(d6 => d6.value === val).length >= required) {
            gameMethods.updateCounter(G.counters.conquistadors, 1);
            G.diceTrayPlanning.dice = G.diceTrayPlanning.dice.filter(d6 => d6.value !== val);

            gameMethods.addToJournalCurrentDay(G, '+Conquistador (' + (5 - G.diceTrayPlanning.dice.length) + ' ' + val + 's)');

            // TODO: this will use all 5 dice if there is a 5-of-a-kind. the user should be able to choose whether to use all 5 or just 4 in this scenario.
        }
    }
}

export const beginPhaseMove = {
    beginPhase: (G, ctx) => {
        gameMethods.beginPhase(G, ctx);
    }
}

export const chooseTrailLocationMove = {
    chooseTrailLocation: (G, ctx, trailKey, trailDirection) => {
        G.map.availableTrailLocations = [];
        G.map.trails[trailKey] = {
            hexKey: G.map.currentLocationKey,
            direction: trailDirection
        };
        gameMethods.addToJournalCurrentDay(G, 'Chose trail location: ' + trailKey);
        ctx.events.endStage();
    }
}

export const confirmDialogMove = {
    confirmDialog: (G, ctx, data) => {
        confirmDialogHandlerFactory.createConfirmDialogHandler(G, ctx).confirmDialog(data);
    }
}

export const cureFeverMove = {
    cureFever: (G, ctx) => {
        const onesRequired = 3 + G.expeditionType.wildAdjust;
        if (G.diceTrayPlanning.dice.filter(d6 => d6.value === 1).length >= onesRequired) {
            G.fever = false;
            G.diceTrayPlanning.dice = G.diceTrayPlanning.dice.slice(onesRequired);

            gameMethods.addToJournalCurrentDay(G, 'Cured Fever with ' + onesRequired + ' 1s');
        }
    }
}

export const eatRationsSpecialActionMove = {
    specialAction: (G, ctx) => {
        if (!G.map.hexes[G.map.currentLocationKey].migration || G.counters.muskets.value === 0) {
            return INVALID_MOVE;
        }

        gameMethods.updateCounter(G.counters.food, 6);
        gameMethods.updateCounter(G.counters.muskets, -1);

        gameMethods.addToJournalCurrentDay(G, 'Hunted Migration');

        ctx.events.endStage();
    }
}

export const endPhaseMove = {
    endPhase: (G, ctx) => {
        if (gameMethods.getStage(ctx) === 'cartographerTrailEnd') {
            ctx.events.endTurn();
        } else {
            ctx.events.endStage();
        }
    }
}

export const incrementRollMove = {
    incrementRoll: (G, ctx) => {
        G.diegoMendozaBonus = 1;
        G.usedDiegoMendoza = true;
        gameMethods.handlePhaseRoll(G, false);
    }
}

export const lagosDeOroChooseHexMove = {
    chooseHex: (G, ctx, hexKey) => {
        const remove = G.map.lagosDeOroLocations.includes(hexKey);

        if (remove) {
            G.map.lagosDeOroLocations = G.map.lagosDeOroLocations.filter(key => key !== hexKey);
        } else {
            G.map.lagosDeOroLocations.push(hexKey);
        }

        new mapHelper(G).getLagosDeOroLocations();

        if (remove) {
            ctx.events.setStage(gameMethods.getStage(ctx) === 'interestsChooseLagosDeOro2'
                ? 'interestsChooseLagosDeOro1'
                : 'interestsChooseLagosDeOro2');
        } else {
            if (gameMethods.getStage(ctx) === 'interestsChooseLagosDeOro3') {
                gameMethods.addToJournalCurrentDay(G, 'Chose locations: ' + JSON.stringify(G.map.lagosDeOroLocations));
            }

            ctx.events.endStage();
        }
    }
}

export const mappingChooseHexMoves = {
    chooseHex: (G, ctx, key) => {
        G.map.target = key;
        G.map.selectableHexes = [];
        gameMethods.setupDiceTray(G.diceTray, 2, gameMethods.formatPhaseLabel(G));
        gameMethods.addToJournalCurrentDay(G, 'Chose hex to map: ' + key);
        ctx.events.endStage();
    }
}

export const mapTravelChooseHexMoves = {
    chooseHex: (G, ctx, key) => {
        const travel = G.map.adjacentTravelCandidates.find(adj => adj.target === key);
        if (key !== G.map.currentLocationKey) {
            const destHex = G.map.hexes[key];
            if (G.expeditionType.trailLeadsToInterestOnTerrainChange &&
                travel.movementCost === 3 &&
                destHex.interestType.isNone &&
                destHex.terrainType !== G.map.hexes[G.map.currentLocationKey].terrainType) {
                destHex.interestType = gameConstants.interestTypes.pending;
            }

            G.map.currentLocationKey = key;
            G.map.path.push(key);

            gameMethods.updateCounter(G.counters.movementProgress, -travel.movementCost + (travel.isDownstream ? 1 : 0));
        }

        G.travelDirection = travel.hexDirection;

        G.map.adjacentTravelCandidates = [];
        gameMethods.addToJournalCurrentDay(G, 'Chose hex to travel to: ' + key);
        ctx.events.endStage();
    }
}

export const nativeContactEclipseMoves = {
    updateDie: (G, ctx, id) => {
        const die = G.diceTray.dice.find(d6 => d6.id === id);
        die.value = die.value % 6 + 1;
        dieRollHandlerFactory.createDieRollHandler(G).handlePhaseRoll(false);
    }
}

export const planningAssignmentMoves = {
    assignDice: (G, ctx) => {
        for (let i = 2; i <= 6; ++i) {
            G.planningDiceAssigned[i] = 0;
        }

        for (let i = 0; i < G.diceTrayPlanning.dice.length; ++i) {
            ++G.planningDiceAssigned[G.diceTrayPlanning.dice[i].assignedValue];
        }

        G.diceTrayPlanning.dice = [];

        gameMethods.addToJournalCurrentDay(G, 'Dice Assigned: ' + Object.keys(G.planningDiceAssigned)
            .filter(i => G.planningDiceAssigned[i] > 0)
            .map(i => gameConstants.digitWords[G.planningDiceAssigned[i]] + ' "' + i + '"' + (G.planningDiceAssigned[i] > 1 ? 's' : ''))
            .join(', '));

        ctx.events.endStage();
    },
    updateDie: (G, ctx, id, i) => {
        G.diceTrayPlanning.dice.find(d6 => d6.id === id).assignedValue = i;
    }
}

export const planningMidRollMoves = {
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
}

export const planningPostRollMoves = {
    startAssignment: (G, ctx) => {
        G.diceTrayPlanning.dice.forEach(d6 => d6.assignedValue = d6.value > 1 ? d6.value : null);
        ctx.events.endStage();
    },
}

export const planningRollMoves = {
    rollDice: (G, ctx) => {
        gameMethods.rollDice(G.diceTrayPlanning, gameConstants.diceTrayModes.rerollPartial);
        ctx.events.endStage();
    }
}

export const rerollDiceMove = {
    rerollDice: (G, ctx) => {
        if (G.counters.muskets.value < 1) {
            return INVALID_MOVE;
        }

        gameMethods.addToJournalCurrentDay(G, 'First ' + G.diceTray.extraContent.join("; ") + "; Used Musket");
        gameMethods.updateCounter(G.counters.muskets, -1);

        if (G.expeditionType.musketBonus) {
            G.musketBonus = G.expeditionType.musketBonus;
        }

        gameMethods.rollDiceForPhase2to7(G, ctx);
    }
}

export const rerollDieMove = {
    rerollDie: (G, ctx, index) => {
        G.diceTray.dice[index].value = gameMethods.randomD6();
        dieRollHandlerFactory.createDieRollHandler(G).handlePhaseRoll(false);
    }
}

export const rollDiceMove = {
    rollDice: (G, ctx) => {
        gameMethods.rollDiceForPhase2to7(G, ctx);
    }
}
