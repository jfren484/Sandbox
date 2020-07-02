import React from 'react';
import { Die } from './Die';
import * as gameConstants from '../gameConstants';

export class DiceTray extends React.Component {
    render() {
        if (this.props.mode === gameConstants.diceTrayModes.empty) {
            return (
                <div>
                </div>
            );
        }

        let dice = [];
        for (let i = 0; i < this.props.dice.length; ++i) {
            dice.push(<Die key={i} value={this.props.dice[i]} />);
        }

        const button = this.props.mode === gameConstants.diceTrayModes.preroll
            ? <div>
                <button onClick={() => this.props.onRollClick()}>Roll</button>
            </div>
            : this.props.mode === gameConstants.diceTrayModes.postroll
                ? <div>
                    <button onClick={() => this.props.onComplete()}>OK</button>
                </div>
                : '';

        return (
            <div>
                <div>
                    {dice}
                </div>
                {button}
            </div>
        );
    }
}