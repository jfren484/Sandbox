import React from 'react';
import { DiceTray } from './DiceTray';
import { Header } from './Header';
import { Map } from './Map';
import * as gameConstants from '../gameConstants';

export class Game1572Board extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            diceTray: {
                mode: gameConstants.diceTrayModes.preroll,
                dice: ['?']
            }
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
        if (this.state.diceTray.mode === gameConstants.diceTrayModes.rolling) {
            if (this.state.diceTray.counter <= 1) {
                this.setState((state) => {
                    return {
                        diceTray: {
                            mode: gameConstants.diceTrayModes.postroll,
                            dice: state.diceTray.dice.map(d6 => (d6 + Math.floor(Math.random() * 5)) % 6 + 1),
                            counter: 0
                        }
                    }
                });
            } else {
                this.setState((state) => {
                    return {
                        diceTray: {
                            mode: gameConstants.diceTrayModes.rolling,
                            dice: state.diceTray.dice.map(() => Math.floor(Math.random() * 6) + 1),
                            counter: state.diceTray.counter - 1
                        }
                    }
                });
            }
        }
    }

    onRollClick = () => {
        this.setState({
            diceTray: {
                mode: gameConstants.diceTrayModes.rolling,
                dice: [0],
                counter: 8
            }
        });
    }

    onRollComplete = () => {
        this.props.moves.setExpeditionType(this.state.diceTray.dice[0]);
        this.setState({
            diceTray: {
                mode: gameConstants.diceTrayModes.empty
            }
        });
    };

    render() {
        return (
            <div className="board">
                <Header expeditionType={this.props.G.expeditionType} />
                <DiceTray mode={this.state.diceTray.mode} dice={this.state.diceTray.dice} onRollClick={this.onRollClick} onComplete={this.onRollComplete} />
                <Map mapData={this.props.G.map} />
            </div>
        );
    }
}