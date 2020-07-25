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
            buttons.push(<button key="0" onClick={() => this.props.onRerollClick()}>Reroll</button>);
            buttons.push(<button key="1" onClick={() => this.props.onComplete()}>Don't Reroll Any</button>);
        }

        // TODO: Cure Fever and Add Conquistador

        let dice = this.props.dice.map((d6, i) => {
            return {
                i: i,
                die: d6
            };
        });

        return (
            <div>
                <div>
                    {dice.filter(d6 => !d6.die.locked).map(d6 => <Die key={d6.i} value={d6.die.value} locked={d6.die.locked} onClick={() => this.props.onDieClick(d6.i)} />)}
                </div>
                <div>
                    {dice.filter(d6 => d6.die.locked).map(d6 => <Die key={d6.i} value={d6.die.value} locked={d6.die.locked} onClick={() => this.props.onDieClick(d6.i)} />)}
                </div>
                <div>
                    {buttons}
                </div>
            </div>
        );
    }
}