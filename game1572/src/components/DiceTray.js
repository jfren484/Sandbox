import React from 'react';
import { Die } from './Die';
import * as gameConstants from '../gameConstants';

export class DiceTray extends React.Component {
    render() {
        if (this.props.dice.length === 0) {
            return (
                <div>
                </div>
            );
        }

        let buttons = [];
        if (this.props.mode === gameConstants.diceTrayModes.preroll) {
            buttons.push(<button onClick={() => this.props.onRollClick()}>Roll</button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            buttons.push(<button onClick={() => this.props.onComplete()}>OK</button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollPartial) {
            buttons.push(<button onClick={() => this.props.onRerollClick()}>Reroll</button>);
            buttons.push(<button onClick={() => this.props.onComplete()}>Don't Reroll Any</button>);
        }

        // TODO: Cure Fever and Add Conquistador

        return (
            <div>
                <div>
                    {this.props.dice.map((d6, i) => <Die key={i} value={d6.value} locked={d6.locked} onClick={() => this.props.onDieClick(i)} />)}
                </div>
                <div>
                    {buttons}
                </div>
            </div>
        );
    }
}