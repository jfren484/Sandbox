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
            buttons.push(<button key="0" onClick={() => this.props.onRollClick()}>Roll</button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            buttons.push(<button key="0" onClick={() => this.props.onComplete()}>OK</button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollAll) {
            buttons.push(<button key="0" onClick={() => this.props.onRerollClick()}>Reroll with Musket</button>);
            buttons.push(<button key="1" onClick={() => this.props.onComplete()}>OK</button>);
        }

        return (
            <div>
                <div>
                    {this.props.dice.map((d6, i) => <Die key={i} value={d6.value} />)}
                </div>
                <div>
                    {buttons}
                </div>
            </div>
        );
    }
}