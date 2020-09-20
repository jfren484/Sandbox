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
        if (this.props.mode === gameConstants.diceTrayModes.preroll) {
            buttons.push(<Button key="BTN-ROLL" onClick={() => this.props.onRollClick()}>Roll</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            buttons.push(<Button key="BTN-COMPLETE" onClick={() => this.props.onComplete()}>OK</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollAll) {
            buttons.push(<Button key="BTN-REROLL" onClick={() => this.props.onRerollDiceClick()} disabled={this.props.disableExtraButton}>Reroll with Musket</Button>);
            buttons.push(<Button key="BTN-COMPLETE" onClick={() => this.props.onComplete()}>Accept Roll</Button>);
        }

        if (this.props.enableIncrement && (this.props.mode === gameConstants.diceTrayModes.postroll || this.props.mode === gameConstants.diceTrayModes.rerollAll)) {
            buttons.push(<Button key="BTN-DM" onClick={() => this.props.onIncrementRoll()}>Use Diego Mendoza (+1)</Button>);
        }

        if (this.props.enableRerollLow) {
            for (let i = 0; i < this.props.dice.length; ++i) {
                const d6 = this.props.dice[i];
                if (d6.value <= 2) {
                    buttons.push(<Button key={'BTN-REROLL-' + i} onClick={() => this.props.onRerollDieClick(i)}>Reroll {i === 0 ? 'First' : 'Second' } Die</Button>);
                }
            }
        }

        let dice = this.props.dice.map((d6, i) => {
            const handler = this.props.enableSelectDiceValues
                ? () => this.props.onDieClick(d6.id)
                : null;
            return <Die key={d6.id} value={d6.value} onClick={handler} />;
        });

        let extraContent = [];
        for (let i = 0; i < (this.props.extraContent ?? []).length; ++i) {
            extraContent.push(<DialogContentText key={i} hidden={this.props.mode === gameConstants.diceTrayModes.rolling}>
                {this.props.extraContent[i]}
            </DialogContentText>);
        }

        return (
            <Dialog
                open={this.props.dice.length > 0}
                PaperComponent={PaperComponent}
                TransitionComponent={Transition}>
                <DialogTitle style={{ cursor: 'move' }} id="draggable-dialog-title">
                    {this.props.title}
                </DialogTitle>
                <DialogContent className="diceTrayContent" style={{ textAlign: 'center' }}>
                    {dice}
                    {extraContent}
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