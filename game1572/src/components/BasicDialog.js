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
        return (
            <Dialog
                open={this.props.dialogData.title}
                PaperComponent={PaperComponent}
                TransitionComponent={Transition}>
                <DialogTitle style={{ cursor: 'move' }} id="draggable-dialog-title">
                    {this.props.dialogData.title}
                </DialogTitle>
                <DialogContent style={{ textAlign: 'center' }}>
                    {this.props.dialogData.content}
                    <DialogContentText>
                        {this.props.dialogData.text}
                    </DialogContentText>
                </DialogContent>
                <DialogActions style={{ justifyContent: 'center' }}>
                    <ButtonGroup color="primary">
                        <Button onClick={() => this.props.onComplete()}>OK</Button>
                    </ButtonGroup>
                </DialogActions>
            </Dialog>
        );
    }
}