import React from 'react';
import Button from '@material-ui/core/Button';
import ButtonGroup from '@material-ui/core/ButtonGroup';
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
            buttons.push(<Button key="0" onClick={() => this.props.onRollClick()}>Roll</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.postroll) {
            extraContent.push(<div key="ec0">{this.props.extraContent}</div>);
            buttons.push(<Button key="0" onClick={() => this.props.onComplete()}>OK</Button>);
        } else if (this.props.mode === gameConstants.diceTrayModes.rerollAll) {
            buttons.push(<Button key="0" onClick={() => this.props.onRerollClick()}>Reroll with Musket</Button>);
            buttons.push(<Button key="1" onClick={() => this.props.onComplete()}>OK</Button>);
        }

        return (
            <div className="modalBackground">
                <div className="modal diceTray">
                    <h3>{this.props.instructions}</h3>
                    <div>
                        {this.props.dice.map((d6, i) => <Die key={i} value={d6.value} />)}
                    </div>
                    {extraContent}
                    <ButtonGroup color="primary" className="buttons">
                        {buttons}
                    </ButtonGroup>
                </div>
            </div>
        );
    }
}