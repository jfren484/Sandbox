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
        let dice = this.props.dice.map((d6, i) => {
            const handler = this.props.enableSelectDiceValues
                ? () => this.props.onDieClick(d6.id)
                : null;
            return <Die key={d6.id} value={d6.value} onClick={handler} />;
        });

        let extraContent = [];
        for (let i = 0; this.props.extraContent && i < this.props.extraContent.length; ++i) {
            extraContent.push(<DialogContentText key={i} hidden={this.props.mode === gameConstants.diceTrayModes.rolling}>
                {this.props.extraContent[i]}
            </DialogContentText>);
        }

        const isPreroll = this.props.mode === gameConstants.diceTrayModes.preroll;
        const isReroll = this.props.mode === gameConstants.diceTrayModes.rerollAll;
        const isPostroll = this.props.mode === gameConstants.diceTrayModes.postroll;
        const isRerollOrPostroll = isReroll || isPostroll;

        const die1Reroll = isRerollOrPostroll && this.props.princessKantyi && this.props.dice.length > 0;
        const die2Reroll = isRerollOrPostroll && this.props.princessKantyi && this.props.dice.length > 1;
        const die1RerollDisabled = this.props.dice.length < 1 || this.props.dice[0].value > 2;
        const die2RerollDisabled = this.props.dice.length < 2 || this.props.dice[1].value > 2;

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
                        {isPreroll &&
                            <Button onClick={() => this.props.onRollClick()}>Roll</Button>}
                        {die1Reroll &&
                            <Button disabled={die1RerollDisabled} onClick={() => this.props.onRerollDieClick(0)}>Reroll First Die</Button>}
                        {die2Reroll &&
                            <Button disabled={die2RerollDisabled} onClick={() => this.props.onRerollDieClick(1)}>Reroll Second Die</Button>}
                        {isRerollOrPostroll && this.props.diegoMendoza &&
                            <Button disabled={this.props.usedDiegoMendoza} onClick={() => this.props.onIncrementRoll()}>Use Diego Mendoza (+1)</Button>}
                        {isReroll &&
                            <Button disabled={this.props.musketCount === 0} onClick={() => this.props.onRerollDiceClick()}>Reroll with Musket</Button>}
                        {isReroll &&
                            <Button onClick={() => this.props.onComplete()}>Accept Roll</Button>}
                        {isPostroll &&
                            <Button onClick={() => this.props.onComplete()}>OK</Button>}
                    </ButtonGroup>
                </DialogActions>
            </Dialog>
        );
    }
}