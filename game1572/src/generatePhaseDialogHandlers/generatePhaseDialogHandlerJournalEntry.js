import { generatePhaseDialogHandler } from './generatePhaseDialogHandler';

export class generatePhaseDialogHandlerJournalEntry extends generatePhaseDialogHandler {
    phaseLogic() {
        const result = super.phaseLogic();

        result.resultDescription = 'Daily record:\r\n' + this.G.journalCurrentDay.map(e => e.entry).join('\r\n');
        result.input = {
            name: 'journalEntry',
            label: 'Your summary of the day:',
            required: false,
            defaultValue: ''
        };

        return result;
    }
}