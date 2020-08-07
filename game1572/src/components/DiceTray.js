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
import { Die } from './Die';
import * as gameConstants from '../gameConstants';

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Grow ref={ref} {...props} />;
});

export class DiceTray extends React.Component {
    render() {
        let buttons = [];
        let extraContent = [];
        if (this.props.mode === gameConstants.diceTrayModes.preroll) {
            buttons.push(<Button key="0" onClick={() => this.props.onRollClick()}>Roll</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            extraContent.push(<div key="ec0">{this.props.extraContent}</div>);
            buttons.push(<Button key="0" onClick={() => this.props.onComplete()}>OK</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollAll) {
            buttons.push(<Button key="0" onClick={() => this.props.onRerollClick()}>Reroll with Musket</Button>);
            buttons.push(<Button key="1" onClick={() => this.props.onComplete()}>OK</Button>);
        }

        return (
            <Dialog
                open={this.props.dice.length > 0}
                PaperComponent={PaperComponent}
                TransitionComponent={Transition}>
                <DialogTitle style={{ cursor: 'move' }} id="draggable-dialog-title">
                    {this.props.instructions}
                </DialogTitle>
                <DialogContent style={{ textAlign: 'center' }}>
                    {this.props.dice.map((d6, i) => <Die key={i} value={d6.value} />)}
                    <DialogContentText>
                        {extraContent}
                    </DialogContentText>
                </DialogContent>
                <DialogActions style={{ justifyContent: 'center' }}>
                    <ButtonGroup color="primary">
                        {buttons}
                    </ButtonGroup>
                </DialogActions>
            </Dialog>
        );
    }
}