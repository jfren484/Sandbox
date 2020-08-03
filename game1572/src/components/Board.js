import React from 'react';
import { DiceTray } from './DiceTray';
import { Header } from './Header';
import { Map } from './Map';
import { PlanningDiceTray } from './PlanningDiceTray';
import * as gameConstants from '../gameConstants';
import * as gameMethods from '../gameMethods';

export class Game1572Board extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            dice: [{ id: 0, value: '?' }],
            diceAnimationTarget: null,
            counter: 0
        };
    }

    /* Event Handlers */

    componentDidMount() {
        this.timerID = setInterval(
            () => this.tick(),
            200
        );
    }

    componentWillUnmount() {
        clearInterval(this.timerID);
    }

    onPlanningDieClick = id => {
        switch (gameMethods.getStage(this.props.ctx)) {
            case 'planningMidRoll':
                this.props.moves.toggleDieLock(id);
                break;
            case 'planningAssignment':
                this.props.moves.toggleDieAssigned(id, null);
                break;
        }
    }

    onPlanningDieDrop = (event, i) => {
        let id = parseInt(event.dataTransfer.getData("id"));
        this.props.moves.toggleDieAssigned(id, i);
    }

    onPlanningRerollClick = () => {
        this.animateDice(this.props.G.diceTrayPlanning, 'diceTrayPlanning');
        this.props.moves.rerollDice();
    }

    onPlanningRollClick = () => {
        this.animateDice(this.props.G.diceTrayPlanning, 'diceTrayPlanning');
        this.props.moves.rollDice();
    }

    onPlanningRollComplete = () => {
        this.props.moves.assignedice();
    };

    onPlanningSkipRerollClick = () => {
        this.props.moves.skipReroll();
    }

    onRerollClick = () => {
        this.animateDice(this.props.G.diceTray, 'diceTray');
        this.props.moves.rerollDice();
    }

    onRollClick = () => {
        this.animateDice(this.props.G.diceTray, 'diceTray');
        this.props.moves.rollDice();
    }

    onRollComplete = () => {
        if (this.props.ctx.phase === 'determineExpeditionType') {
            this.props.moves.setExpeditionType(this.props.G.diceTray.dice[0].value);
            return;
        }

        const stage = gameMethods.getStage(this.props.ctx);
        switch (stage) {
            default:
                console.error('Don\'t know how to complete stage: ' + stage);
        }
    };

    /* Methods */

    animateDice(diceTray, diceAnimationTarget) {
        this.setState({
            dice: diceTray.dice.map(d6 => d6.locked ? d6 : { id: d6.id, value: Math.floor(Math.random() * 6) + 1 }),
            diceAnimationTarget: diceAnimationTarget,
            counter: 8
        });
    }

    tick() {
        if (this.state.counter === 0 && gameMethods.getStage(this.props.ctx) === 'planningPostRoll') {
            setTimeout(() => {
                if (gameMethods.getStage(this.props.ctx) === 'planningPostRoll') {
                    this.props.moves.startAssignment();
                }
            }, 10);
        }

        if (this.state.counter > 0) {
            this.setState(state => {
                return {
                    dice: state.dice.map(d6 => d6.locked ? d6 : { id: d6.id, value: (d6.value + Math.floor(Math.random() * 5)) % 6 + 1 }),
                    counter: state.counter - 1
                }
            });
        }
    }

    render() {
        const animateDiceTray = this.state.counter > 0 && this.state.diceAnimationTarget === 'diceTray';
        const animateDiceTrayPlanning = this.state.counter > 0 && this.state.diceAnimationTarget === 'diceTrayPlanning';

        return (
            <div className="board">
                <Header expeditionType={this.props.G.expeditionType} counters={this.props.G.counters} />
                <Map mapData={this.props.G.map} />
                <DiceTray mode={animateDiceTray ? gameConstants.diceTrayModes.rolling : this.props.G.diceTray.mode}
                    dice={animateDiceTray ? this.state.dice : this.props.G.diceTray.dice}
                    instructions={this.props.G.diceTray.instructions}
                    extraContent={this.props.G.diceTray.extraContent}
                    onRollClick={this.onRollClick}
                    onRerollClick={this.onRerollClick}
                    onComplete={this.onRollComplete} />
                <PlanningDiceTray mode={animateDiceTrayPlanning ? gameConstants.diceTrayModes.rolling : this.props.G.diceTrayPlanning.mode}
                    dice={animateDiceTrayPlanning ? this.state.dice : this.props.G.diceTrayPlanning.dice}
                    onRollClick={this.onPlanningRollClick}
                    onDieClick={this.onPlanningDieClick}
                    onDieDrop={this.onPlanningDieDrop}
                    onRerollClick={this.onPlanningRerollClick}
                    onSkipRerollClick={this.onPlanningSkipRerollClick}
                    onComplete={this.onPlanningRollComplete} />
            </div>
        );
    }
}