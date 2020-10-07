import { confirmDialogHandler } from './confirmDialogHandler';

export class confirmDialogHandlerPlanning extends confirmDialogHandler {
	getDiceCount() {
		return 5;
	}

    getDiceTray() {
        return this.G.diceTrayPlanning;
    }
}