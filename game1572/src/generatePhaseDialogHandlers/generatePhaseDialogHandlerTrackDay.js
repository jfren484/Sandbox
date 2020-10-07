import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';

export class generatePhaseDialogHandlerTrackDay extends generatePhaseDialogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        result.resultDescription = 'Day: ' + (this.G.days + 1);

        return result;
    }
}