import React from 'react';
import { Die } from './Die';
import * as gameConstants from '../gameConstants';

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
            buttons.push(<button key="0" onClick={() => this.props.onRollClick()}>Roll</button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            buttons.push(<button key="0" onClick={() => this.props.onComplete()}>OK</button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollPartial) {
            if (this.props.dice.filter(d6 => !d6.locked).length > 0) {
                buttons.push(<button key="0" onClick={() => this.props.onRerollClick()}>Reroll</button>);
            }

            if (this.props.dice.filter(d6 => !d6.locked).length === 0 || this.props.dice.filter(d6 => d6.locked).length === 0) {
                buttons.push(<button key="1" onClick={() => this.props.onSkipRerollClick()}>Don't Reroll Any</button>);
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
            <div class="modalBackground">
                <div className={'modal planning ' + this.props.mode}>
                    <h3>Phase 1: Planning</h3>
                    <div class="instructions preroll">You set your sights downstream and start the day anew. What adventures or tragedies lie ahead, you know not.</div>
                    <div class="instructions rerollPartial">Choose which dice to Lock and which to Re-Roll.</div>
                    <div class="instructions postroll">Assign wild cards.</div>
                    <div class="planningDiceTrayContainer">
                        <div class="planningDiceTray left">
                            <h3 class="rolling rerolling">Rolling</h3>
                            <h3 class="rerollPartial">To Reroll</h3>
                            <h3 class="postroll">Wild</h3>
                            {diceLeft}
                        </div>
                        <div class="planningDiceTray right">
                            <h3 class="rolling rerollPartial rerolling">Locked</h3>
                            <h3 class="postroll">Assigned</h3>
                            {diceRight}
                        </div>
                        <div class="postroll">{this.props.extraContent}</div>
                        <div className="buttons">
                            {buttons}
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}