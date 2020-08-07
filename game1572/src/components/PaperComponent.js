import React from 'react';
import Paper from '@material-ui/core/Paper';
import Draggable from 'react-draggable';

export class PaperComponent extends React.Component {
    render() {
        return (
            <Draggable handle="#draggable-dialog-title" cancel={'[class*="MuiDialogContent-root"]'}>
                <Paper {...this.props} />
            </Draggable>
        );
    }
}