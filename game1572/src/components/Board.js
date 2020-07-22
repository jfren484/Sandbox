import React from 'react';
import { DiceTray } from './DiceTray';
import { Header } from './Header';
import { Map } from './Map';
import * as gameConstants from '../gameConstants';
import * as gameMethods from '../gameMethods';

export class Game1572Board extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            dice: [{ value: '?' }],
            counter: 0
        };
    }

    componentDidMount() {
        this.timerID = setInterval(
            () => this.tick(),
            200
        );
    }

    componentWillUnmount() {
        clearInterval(this.timerID);
    }

    tick() {
        if (this.state.counter > 0) {
            if (this.state.counter === 1 && gameMethods.getStage(this.props.ctx) === 'planningPostRoll') {
                setTimeout(() => this.props.moves.unlockDice(), 500);
            }

            this.setState(state => {
                return {
                    dice: state.dice.map(d6 => d6.locked ? d6 : { value: (d6.value + Math.floor(Math.random() * 5)) % 6 + 1 }),
                    counter: state.counter - 1
                }
            });
        }
    }

    onRollClick = () => {
        this.props.moves.rollDice();
        this.setState({
            dice: this.props.G.diceTray.dice.map(d6 => d6.locked ? d6 : { value: Math.floor(Math.random() * 6) + 1 }),
            counter: 8
        });
    }

    onDieClick = id => {
        if (gameMethods.getStage(this.props.ctx) === 'planningMidRoll') {
            this.props.moves.toggleDieLock(id);
        }
    }

    onRerollClick = () => {
        this.setState({
            dice: this.props.G.diceTray.dice,
            counter: 8
        });
        this.props.moves.rerollDice();
    }

    onRollComplete = () => {
        this.props.moves.setExpeditionType(this.props.G.diceTray.dice[0].value);
    };

    render() {
        return (
            <div className="board">
                <Header expeditionType={this.props.G.expeditionType} />
                <DiceTray mode={this.state.counter > 0 ? gameConstants.diceTrayModes.rolling : this.props.G.diceTray.mode}
                    dice={this.state.counter > 0 ? this.state.dice : this.props.G.diceTray.dice}
                    onRollClick={this.onRollClick}
                    onDieClick={this.onDieClick}
                    onRerollClick={this.onRerollClick}
                    onComplete={this.onRollComplete} />
                <Map mapData={this.props.G.map} />
            </div>
        );
    }
}