import React from 'react';
import { Die } from './Die';
import * as gameConstants from '../gameConstants';

export class PlanningDiceTray extends React.Component {
    render() {
        if (this.props.dice.length === 0) {
            return (
                <div>
                </div>
            );
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

        // TODO: Cure Fever and Add Conquistador

        let diceLeft, diceRight, headerLeft, headerRight;

        if (this.props.mode == gameConstants.diceTrayModes.postroll) {
            diceLeft = this.props.dice
                .filter(d6 => !d6.allocated)
                .sort((a, b) => a.value - b.value)
                .map(d6 => {
                    return (<Die key={d6.id} value={d6.value} onClick={() => this.props.onDieClick(d6.id)} />);
                });
            diceRight = this.props.dice
                .filter(d6 => d6.allocated)
                .sort((a, b) => a.value - b.value)
                .map(d6 => {
                    return (<Die key={d6.id} value={d6.value} onClick={() => this.props.onDieClick(d6.id)} />);
                });

            headerLeft = 'Pending';
            headerRight = 'Allocated';
        } else {
            diceLeft = this.props.dice
                .filter(d6 => !d6.locked)
                .sort((a, b) => a.value - b.value)
                .map(d6 => {
                    return (<Die key={d6.id} value={d6.value} onClick={() => this.props.onDieClick(d6.id)} />);
                });
            diceRight = this.props.dice
                .filter(d6 => d6.locked)
                .sort((a, b) => a.value - b.value)
                .map(d6 => {
                    return (<Die key={d6.id} value={d6.value} onClick={() => this.props.onDieClick(d6.id)} />);
                });

            headerLeft = 'To Reroll';
            headerRight = 'Locked';
        }

        return (
            <div className="planningDiceTrayContainer">
                <div className="planningDiceTray">
                    <h3>{headerLeft}</h3>
                    {diceLeft}
                </div>
                <div className="planningDiceTray">
                    <h3>{headerRight}</h3>
                    {diceRight}
                </div>
                <div className="planningDiceActions">
                    {buttons}
                </div>
            </div>
        );
    }
}