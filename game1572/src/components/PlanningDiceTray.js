import React from 'react';
import Box from '@material-ui/core/Box';
import Button from '@material-ui/core/Button';
import ButtonGroup from '@material-ui/core/ButtonGroup';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Grow from '@material-ui/core/Grow';
import { Die } from './Die';
import { PaperComponent } from './PaperComponent';
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

        const oneCount = this.props.dice.filter(d6 => d6.value === 1).length;

        let buttons = [];
        if (this.props.mode === gameConstants.diceTrayModes.postroll || this.props.mode === gameConstants.diceTrayModes.rerollPartial) {
            if (this.props.fever) {
                buttons.push(<Button key="btn-break" onClick={() => this.props.onBreakFever()}
                    disabled={this.props.cannotBreakFever || oneCount < this.props.feverBreakWildCount}>Break Fever</Button>);
            }

            const val = this.props.dice.length === 5 ? this.props.dice[2].value : 1;
            if (val !== 1 && this.props.canAddConquistador && this.props.dice.filter(d6 => d6.value === val).length >= 4) {
                buttons.push(<Button key="btn-add" onClick={() => this.props.onAddConquistador()}>Add Conquistador</Button>);
            }
        }
        if (this.props.mode === gameConstants.diceTrayModes.preroll) {
            buttons.push(<Button key="btn-roll" onClick={() => this.props.onRollClick()}>Roll</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            buttons.push(<Button key="btn-ok" onClick={() => this.props.onComplete()}>OK</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollPartial) {
            if (this.props.dice.filter(d6 => !d6.locked).length > 0) {
                buttons.push(<Button key="btn-reroll" onClick={() => this.props.onRerollClick()}>Reroll</Button>);
            }

            if (this.props.dice.filter(d6 => !d6.locked).length === 0 || this.props.dice.filter(d6 => d6.locked).length === 0) {
                buttons.push(<Button key="1" onClick={() => this.props.onSkipRerollClick()}>Don't Reroll Any</Button>);
            }
        }

        // TODO: Confirm unassigned wilds?
        // TODO: don't allow wilds during turn where fever is broken

        let diceLeft, diceRight;

        if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            diceLeft = this.props.dice
                .filter(d6 => !d6.assignedValue)
                .map(d6 => {
                    return (<div key={'die-' + d6.id} className="wild" draggable={!this.props.fever} onDragStart={(event) => this.onDragStart(event, d6.id)}>
                        <Die key={d6.id} value={d6.value} />
                    </div>);
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
                <Box className={'dialog planning ' + this.props.mode + (this.props.fever ? ' fevered' : '')}>
                    <DialogTitle style={{ cursor: 'move' }} id="draggable-dialog-title">
                        Phase 1: Planning
                    </DialogTitle>
                    <DialogContent className="instructionsContainer" style={{ textAlign: 'center' }}>
                        <DialogContentText>
                            <span className="instructions preroll">Roll 5 dice to determine the actions you take today.</span>
                            <span className="instructions rerollPartial">Choose which dice to Lock and which to Re-Roll. Click dice to move between Locked and To Reroll.</span>
                            <span className="instructions postroll">
                                <span className="feverHidden">Assign wild cards. A die roll of "1" can be used as a wild card for other values. Drag dice to the row you wish to assign them to, or click the assigned wild cards to unassign.</span>
                                <span className="feverVisible">If your expedition is suffering from fever, you CANNOT use 1's as wilds, but only to break the fever.</span>
                            </span>
                        </DialogContentText>
                    </DialogContent>
                    <DialogContent style={{ textAlign: 'center', justifyContent: 'center' }}>
                        <div className="planningDiceTrayContainer">
                            <div className="planningDiceTray left">
                                <h3 className="preroll">Unrolled</h3>
                                <h3 className="rolling rerolling">Rolling</h3>
                                <h3 className="rerollPartial">To Reroll</h3>
                                <h3 className="postroll">{this.props.fever ? 'Ones' : 'Wild'}</h3>
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
                </Box>
            </Dialog>
        );
    }
}