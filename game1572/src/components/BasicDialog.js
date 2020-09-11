import React from 'react';
import Button from '@material-ui/core/Button';
import ButtonGroup from '@material-ui/core/ButtonGroup';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Grow from '@material-ui/core/Grow';
import { PaperComponent } from './PaperComponent';

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Grow ref={ref} {...props} />;
});

export class BasicDialog extends React.Component {
    render() {
        const specialActionButton = this.props.dialogData.specialAction
            ? <Button onClick={() => this.props.onSpecialAction()}>{this.props.dialogData.specialAction}</Button>
            : null;

        return (
            <Dialog
                open={!!this.props.dialogData.title}
                PaperComponent={PaperComponent}
                TransitionComponent={Transition}>
                <DialogTitle style={{ cursor: 'move' }} id="draggable-dialog-title">
                    {this.props.dialogData.title}
                </DialogTitle>
                <DialogContent style={{ textAlign: 'center' }}>
                    <DialogContentText>
                        {this.props.dialogData.text}
                    </DialogContentText>
                    {this.props.dialogData.content}
                </DialogContent>
                <DialogActions style={{ justifyContent: 'center' }}>
                    <ButtonGroup color="primary">
                        <Button onClick={() => this.props.onComplete()}>OK</Button>
                        {specialActionButton}
                    </ButtonGroup>
                </DialogActions>
            </Dialog>
        );
    }
}