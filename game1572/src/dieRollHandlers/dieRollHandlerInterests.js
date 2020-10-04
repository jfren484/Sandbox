import * as gameConstants from '../gameConstants';
import { dieRollHandler } from './dieRollHandler';

const naturalWonderId = gameConstants.interestTypes.naturalWonder.id;

export class dieRollHandlerInterests extends dieRollHandler {
    checkInterest(interestType) {
        return this.G.interestIds.includes(interestType.id) || (interestType.id === gameConstants.interestTypes.lagosDeOro.id && this.currentHex.lagosDeOroCannotBeInitiator)
            ? gameConstants.interestTypes.naturalWonder
            : interestType;
    }

    phaseLogic(confirmed) {
        let result = super.phaseLogic(confirmed);
		let interest = gameConstants.interestTypes.pending;
		let resultDescriptions = [];

		switch (result.totalRoll) {
            case 2:
            case 3:
                interest = this.checkInterest(gameConstants.interestTypes.lagosDeOro);
                if (interest.id !== naturalWonderId) {
                    if (confirmed) {
                        result.lagosDeOroPending = true;
                    }

                    resultDescriptions.push('Lagos De Oro: Draw a 3-hex lake halfway between your current location and the River Delta. ' +
                        'The 3 hexes must all be adjacent to each other. Then draw a tiny island at the corner where the three hexes meet. ' +
                        'The 3 hexes count as 1 hex for all purposes. You are immune to Fever while at Lagos De Oro.');
                }
                break;

            case 4:
                interest = this.checkInterest(gameConstants.interestTypes.ruinedMission);
                if (interest.id !== naturalWonderId) {
                    if (confirmed) {
                        this.addMuskets(5, confirmed);
                        result.trailPending = true;
                    }

                    resultDescriptions.push('Ruined Mission: You find a crate of Muskets. Gain 5 Muskets. Add a Trail to any adjacent hex.');
                }
                break;

            case 5:
                interest = this.checkInterest(gameConstants.interestTypes.migration);
                if (interest.id !== naturalWonderId) {
                    if (confirmed) {
                        this.currentHex.migration = true;
                        this.currentHex.connections.forEach(conn => this.G.map.hexes[conn.hexKey].migration = true);
                    }

                    resultDescriptions.push('Migration: Skip the Ration Phase while in and adjacent to this hex. You may expend 1 musket to fill your Food Reserves to 6.');
                }
                break;

            case 6:
            case 7:
            case 8:
                interest = this.checkInterest(gameConstants.interestTypes.naturalWonder);

                // Handle Wonder below
                break;

            case 9:
                interest = this.checkInterest(gameConstants.interestTypes.predictEclipse);
                if (interest.id !== naturalWonderId) {
                    if (confirmed) {
                        this.G.eclipsePredictionTurnsRemaining = 2;
                    }

                    resultDescriptions.push('Predict Eclipse: The next two times you roll on the Native Contact Chart, choose any result instead of rolling.');
                }
                break;

            case 10:
                interest = this.checkInterest(gameConstants.interestTypes.princessKantyi);
                if (interest.id !== naturalWonderId) {
                    if (confirmed) {
                        this.G.guides.princessKantyi = true;
                    }

                    resultDescriptions.push('Princess Kantyi: Reroll 1s and 2s on either/both dice whenever rolling on the Native Contact Chart. This effect ' +
                        'persists until the end of the game.');
                }
                break;

            case 11:
            case 12:
            default:
                interest = this.checkInterest(gameConstants.interestTypes.diegoMendoza);
                if (interest.id !== naturalWonderId) {
                    if (confirmed) {
                        this.addConquistadors(1, confirmed);
                        this.addMuskets(1, confirmed);
                        this.G.guides.diegoMendoza = true;
                    }

                    resultDescriptions.push('Diego Mendoza: Gain 1 Conquistador and 1 Musket. You may add 1 to a total once per turn whenever rolling on ' +
                        'Phases 2 - 7. This effect persists until the end of the game.');
                }
                break;
        }

        if (interest.id === naturalWonderId) {
            if (confirmed) {
                // Clone the interest so we can set a custom description
                interest = Object.assign({}, interest);

                this.addMorale(5, confirmed);
                result.wonderPending = true;
                this.G.dialog = {
                    title: 'Describe Wonder',
                    text: 'Describe this Natural Wonder in detail.',
                    input: {
                        name: 'description',
                        label: 'Wonder Description',
                        required: true,
                        defaultValue: ''
                    }
                };
            }

            resultDescriptions.push('Natural Wonder: Add 5 to you current Morale. Add 2 to your end game Victory Points if you win (for each Natural ' +
                'Wonder discovered). Describe this Natural Wonder in detail in your journal.');
        }

		result.resultDescription += resultDescriptions.join(', ');

        if (confirmed) {
            this.currentHex.interestType = interest;
            this.G.interestIds.push(interest.id);
        }

        return result;
    }
}