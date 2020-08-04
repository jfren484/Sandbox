import React from 'react';
import { Die } from './Die';
import * as gameConstants from '../gameConstants';

export class DiceTray extends React.Component {
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
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollAll) {
            buttons.push(<button key="0" onClick={() => this.props.onRerollClick()}>Reroll with Musket</button>);
            buttons.push(<button key="1" onClick={() => this.props.onComplete()}>OK</button>);
        }

        return (
            <div class="modalBackground">
                <div class="modal diceTray">
                    <h3>{this.props.instructions}</h3>
                    <div>
                        {this.props.dice.map((d6, i) => <Die key={i} value={d6.value} />)}
                    </div>
                    {extraContent}
                    <div class="buttons">
                        {buttons}
                    </div>
                </div>
            </div>
        );
    }
}