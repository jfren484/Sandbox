import React from 'react';
import Button from '@material-ui/core/Button';
import ButtonGroup from '@material-ui/core/ButtonGroup';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Grow from '@material-ui/core/Grow';
import TextField from '@material-ui/core/TextField';
import { PaperComponent } from './PaperComponent';

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Grow ref={ref} {...props} />;
});

const formId = 'basicDialogForm';

export class BasicDialog extends React.Component {
    onClick = () => {
        let val;

        if (this.props.dialogData.input) {
            const form = document.getElementById(formId);
            const formData = new FormData(form);
            val = formData.get(this.props.dialogData.input.name);
        }

        this.props.onComplete(val);
    }

    render() {
        const input = this.props.dialogData.input
            ? <form id={formId}>
                <TextField
                    name={this.props.dialogData.input.name}
                    label={this.props.dialogData.input.label}
                    defaultValue={this.props.dialogData.input.defaultValue}
                    variant="outlined" />
            </form>
            : null;

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
                    {input}
                    {this.props.dialogData.content}
                </DialogContent>
                <DialogActions style={{ justifyContent: 'center' }}>
                    <ButtonGroup color="primary">
                        <Button onClick={this.onClick}>OK</Button>
                        {specialActionButton}
                    </ButtonGroup>
                </DialogActions>
            </Dialog>
        );
    }
}