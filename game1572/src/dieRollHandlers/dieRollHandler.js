import * as gameMethods from '../gameMethods';

export class dieRollHandler {
    constructor(G) {
        this.G = G;
        this.currentHex = G.map.hexes[G.map.currentLocationKey];
    }

    addConquistadors(value, confirmed) {
        if (value < 0 && this.G.expeditionType.deathRemovesFood) {
            return this.addFood(value, confirmed);
        }

        return this.updateCounter(this.G.counters.conquistadors, value, confirmed);
    }

    addFood(value, confirmed) {
        return this.updateCounter(this.G.counters.food, value, confirmed);
    }

    addMorale(value, confirmed) {
        return this.updateCounter(this.G.counters.morale, value, confirmed);
    }

    addMovementProgress(value, confirmed) {
        return this.updateCounter(this.G.counters.movementProgress, value, confirmed);
   }

    addMuskets(value, confirmed) {
        return this.updateCounter(this.G.counters.muskets, value, confirmed);
    }

    addTrail(confirmed, result) {
        if (confirmed) {
            result.trailPending = true;
        }

        return '+Trail';
    }

    addVillage(confirmed, forceFriendly) {
        if (this.currentHex.terrainType.noVillages) {
            return '(' + this.currentHex.terrainType.name + ': Village results discarded)';
        }

        let desc;
        if (this.G.expeditionType.allVillagesPeaceful || forceFriendly) {
            if (confirmed) {
                ++this.currentHex.friendlyVillages;
            }

            desc = "Friendly";
        } else {
            if (confirmed) {
                ++this.currentHex.villages;
            }

            desc = this.addMovementProgress(-1, confirmed);
        }

        return '+Village (' + desc + ')';
    }

    formatValueLabel(prefix, value) {
        return prefix + ' ' + (value > 0 ? '+' : '') + value;
    }

    getBonusForBotany() {
        return 0;
    }

    handlePhaseRoll(confirmed) {
        const result = this.phaseLogic(confirmed);

        if (confirmed) {
            gameMethods.addToJournalCurrentDay(this.G, result.rollDescription + '; ' + result.resultDescription);
            this.G.diceTray.dice = [];
        }

        return result;
    }

    phaseLogic(confirmed) {
        const roll = this.G.diceTray.dice.reduce((acc, val) => acc + val.value, 0);
        const diceBonus = this.G.planningDiceAssigned[this.G.phase.index] - 1;
        const botanyBonus = this.getBonusForBotany();
        const terrainAdj = this.currentHex.terrainType.diceRollAdjustments[this.G.phase.index] ?? 0;
        const friendlyVillagesBonus = this.G.phase.friendlyVillagesHelp ? this.currentHex.friendlyVillages : 0;
        const totalRoll = roll + diceBonus + botanyBonus + terrainAdj + friendlyVillagesBonus + this.G.musketBonus + this.G.diegoMendozaBonus;

        let bonusDescriptions = [];
        if (diceBonus) {
            bonusDescriptions.push('+' + diceBonus + ' extra dice');
        }
        if (botanyBonus) {
            bonusDescriptions.push('+' + botanyBonus + ' botany bonus');
        }
        if (terrainAdj) {
            bonusDescriptions.push((terrainAdj > 0 ? '+' : '') + terrainAdj + ' terrain ' + (terrainAdj > 0 ? 'bonus' : 'penalty'));
        }
        if (friendlyVillagesBonus) {
            bonusDescriptions.push('+' + friendlyVillagesBonus + ' friendly village' + (friendlyVillagesBonus > 1 ? 's' : ''));
        }
        if (this.G.musketBonus) {
            bonusDescriptions.push('+' + this.G.musketBonus + ' musket bonus');
        }
        if (this.G.diegoMendozaBonus) {
            bonusDescriptions.push('+' + this.G.diegoMendozaBonus + ' Diego Mendoza bonus');
        }
        if (diceBonus || botanyBonus || terrainAdj || friendlyVillagesBonus || this.G.musketBonus || this.G.diegoMendozaBonus) {
            bonusDescriptions.push('total: ' + totalRoll);
        }

        return {
            roll: roll,
            totalRoll: totalRoll,
            currentHex: this.currentHex,

            rollDescription: 'Roll: ' + roll + bonusDescriptions.join(', '),
            resultDescription: 'Result: ',

            lagosDeOroPending: false,
            trailPending: false,
            wonderPending: false
        };
    }

    setFeveredAndLowerMorale(confirmed) {
        const result = this.G.fever
            ? '(Already Fevered)'
            : (this.G.expeditionType.immuneToFever || this.currentHex.terrainType.immuneToFever)
                ? '(Immune to Fever)'
                : '+Fever';

        if (confirmed && !this.G.fever && !this.G.expeditionType.immuneToFever && !this.currentHex.terrainType.immuneToFever) {
            this.G.fever = true;
            this.addMorale(-1, confirmed);
        }

        return result;
    }

    updateCounter(counter, adjValue, confirmed) {
        if (confirmed) {
            gameMethods.updateCounter(counter, adjValue);
        }

        return this.formatValueLabel(counter.label, adjValue);
    }
}