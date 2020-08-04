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
        let extraContent = [];

        if (this.props.mode === gameConstants.diceTrayModes.preroll) {
            buttons.push(<button key="0" onClick={() => this.props.onRollClick()}>Roll</button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            extraContent.push(<div>{this.props.extraContent}</div>);
            buttons.push(<button key="0" onClick={() => this.props.onComplete()}>OK</button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollPartial) {
            if (this.props.dice.filter(d6 => !d6.locked).length > 0) {
                buttons.push(<button key="0" onClick={() => this.props.onRerollClick()}>Reroll</button>);
            }

            if (this.props.dice.filter(d6 => !d6.locked).length === 0 || this.props.dice.filter(d6 => d6.locked).length === 0) {
                buttons.push(<button key="1" onClick={() => this.props.onSkipRerollClick()}>Don't Reroll Any</button>);
            }
        }

        // TODO: Cure Fever and Add Conquistador

        let diceLeft, diceRight, headerLeft, headerRight, instructions;
        const assigning = this.props.mode === gameConstants.diceTrayModes.postroll;

        if (assigning) {
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

            headerLeft = 'Wild';
            headerRight = 'Assigned';

            instructions = this.props.dice.filter(d6 => d6.value === 1).length > 0
                ? 'Assign wild cards'
                : '';
        } else {
            diceLeft = this.props.dice.filter(d6 => !d6.locked);
            diceRight = this.props.dice.filter(d6 => d6.locked);

            if (this.props.mode !== gameConstants.diceTrayModes.rolling) {
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

            headerLeft = 'To Reroll';
            headerRight = 'Locked';
        }

        return (
            <div class="modalBackground">
                <div class="modal planning">
                    <h3>Phase 1: Planning</h3>
                    {instructions}
                    <div className={'planningDiceTrayContainer ' + (assigning ? 'assigning' : 'firstRoll')}>
                        <div className="planningDiceTray">
                            <h3>{headerLeft}</h3>
                            {diceLeft}
                        </div>
                        <div className={'planningDiceTray' + (assigning ? ' assigning' : '')}>
                            <h3>{headerRight}</h3>
                            {diceRight}
                        </div>
                        {extraContent}
                        <div className="buttons">
                            {buttons}
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}