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

export class PlanningDiceTray extends React.Component {
    onDragStart = (event, id) => {
        event.dataTransfer.setData("id", id);
    }

    onDragOver = (event) => {
        event.preventDefault();
    }

    render() {
        if (this.props.dice.length === 0) {
            return null;
        }

        let buttons = [];

        if (this.props.mode === gameConstants.diceTrayModes.preroll) {
            buttons.push(<Button key="0" onClick={() => this.props.onRollClick()}>Roll</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            buttons.push(<Button key="0" onClick={() => this.props.onComplete()}>OK</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollPartial) {
            if (this.props.dice.filter(d6 => !d6.locked).length > 0) {
                buttons.push(<Button key="0" onClick={() => this.props.onRerollClick()}>Reroll</Button>);
            }

            if (this.props.dice.filter(d6 => !d6.locked).length === 0 || this.props.dice.filter(d6 => d6.locked).length === 0) {
                buttons.push(<Button key="1" onClick={() => this.props.onSkipRerollClick()}>Don't Reroll Any</Button>);
            }
        }

        // TODO: Confirm unassigned wilds?

        // TODO: Cure Fever and Add Conquistador

        let diceLeft, diceRight;

        if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            diceLeft = this.props.dice
                .filter(d6 => !d6.assignedValue)
                .map(d6 => {
                    return (
                        <div key={'die-' + d6.id} className="wild" draggable onDragStart={(event) => this.onDragStart(event, d6.id)}>
                            <Die key={d6.id} value={d6.value} />
                        </div>
                    );
                });
            diceRight = [2, 3, 4, 5, 6]
                .map(i => {
                    let bucket = this.props.dice
                        .filter(d6 => d6.assignedValue === i)
                        .sort((a, b) => b.value - a.value)
                        .map(d6 => {
                            return d6.value > 1
                                ? (<div key={'die-' + d6.id} className="assigned">
                                    <Die key={d6.id} value={d6.value} />
                                </div>)
                                : (<div key={'die-' + d6.id} className="assigned" draggable onDragStart={(event) => this.onDragStart(event, d6.id)}>
                                    <Die key={d6.id} value={d6.value} onClick={() => this.props.onDieClick(d6.id)} />
                                </div>);
                        });

                    if (bucket.length === 0) {
                        bucket.push(<div key={'dieph-' + i} className="assigned">
                            <Die key={'placeholder-' + i} value={i} dieColor="#eee" pipColor="#ccc" />
                        </div>);
                    }

                    return (
                        <div key={'bucket-' + i} className="bucket" onDragOver={(event) => this.onDragOver(event)} onDrop={(event) => { this.props.onDieDrop(event, i) }}>
                            {bucket}
                        </div>
                    );
                });
        } else {
            diceLeft = this.props.dice.filter(d6 => !d6.locked);
            diceRight = this.props.dice.filter(d6 => d6.locked);

            if (this.props.mode !== gameConstants.diceTrayModes.rolling && this.props.mode !== gameConstants.diceTrayModes.rerolling) {
                diceLeft = diceLeft.sort((a, b) => a.value - b.value);
                diceRight = diceRight.sort((a, b) => a.value - b.value);
            }

            diceLeft = diceLeft
                .map(d6 => {
                    return (<Die key={d6.id} value={d6.value} onClick={() => this.props.onDieClick(d6.id)} />);
                });
            diceRight = diceRight
                .map(d6 => {
                    return (<Die key={d6.id} value={d6.value} onClick={() => this.props.onDieClick(d6.id)} />);
                });
        }

        return (
            <Dialog
                open={this.props.dice.length > 0}
                PaperComponent={PaperComponent}
                TransitionComponent={Transition}>
                <div className={'dialog planning ' + this.props.mode}>
                    <DialogTitle style={{ cursor: 'move' }} id="draggable-dialog-title">
                        Phase 1: Planning
                    </DialogTitle>
                    <DialogContent className="instructionsContainer" style={{ textAlign: 'center' }}>
                        <DialogContentText>
                            <span className="instructions preroll">You set your sights downstream and start the day anew. What adventures or tragedies lie ahead, you know not.</span>
                            <span className="instructions rerollPartial">Choose which dice to Lock and which to Re-Roll. Click dice to move between Locked and To Reroll.</span>
                            <span className="instructions postroll">Assign wild cards. A die roll of "1" can be used as a wild card for other values. Drag dice to the row you wish to assign them to, or click the assigned wild cards to unassign.</span>
                        </DialogContentText>
                    </DialogContent>
                    <DialogContent style={{ textAlign: 'center', justifyContent: 'center' }}>
                        <div className="planningDiceTrayContainer">
                            <div className="planningDiceTray left">
                                <h3 className="preroll">Unrolled</h3>
                                <h3 className="rolling rerolling">Rolling</h3>
                                <h3 className="rerollPartial">To Reroll</h3>
                                <h3 className="postroll">Wild</h3>
                                {diceLeft}
                            </div>
                            <div className="planningDiceTray right">
                                <h3 className="rerollPartial rerolling">Locked</h3>
                                <h3 className="postroll">Assigned</h3>
                                {diceRight}
                            </div>
                        </div>
                    </DialogContent>
                    <DialogActions style={{ justifyContent: 'center' }}>
                        <ButtonGroup color="primary">
                            {buttons}
                        </ButtonGroup>
                    </DialogActions>
                </div>
            </Dialog>
        );
    }
}