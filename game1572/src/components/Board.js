import React from 'react';
import Container from '@material-ui/core/Container';
import Box from '@material-ui/core/Box';
import Button from '@material-ui/core/Button';
import ButtonGroup from '@material-ui/core/ButtonGroup';
import { BasicDialog } from './BasicDialog';
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

    onBasicDialogComplete = () => {
        this.props.moves.confirmDialog();
    };

    onGameStart = () => {
        this.props.moves.beginGame();
    }

    onHexClick = (key) => {
        this.props.moves.chooseHex(key);
    }

    onPlanningAddConquistador = () => {
        this.props.moves.addConquistador();
    }

    onPlanningBreakFever = () => {
        this.props.moves.cureFever();
    }

    onPlanningDieClick = id => {
        this.props.moves.updateDie(id);
    }

    onPlanningDieDrop = (event, i) => {
        let id = parseInt(event.dataTransfer.getData("id"));
        this.props.moves.updateDie(id, i);
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
        this.props.moves.acceptRoll();
    };

    onTrailClick = (key, offsetRec) => {
        this.props.moves.chooseTrailLocation(key, offsetRec);
    }

    /* Methods */

    animateDice(diceTray, diceAnimationTarget) {
        this.setState({
            dice: diceTray.dice.map(d6 => d6.locked ? d6 : { id: d6.id, value: Math.floor(Math.random() * 6) + 1 }),
            diceAnimationTarget: diceAnimationTarget,
            counter: 8
        });
    }

    tick() {
        const stage = gameMethods.getStage(this.props.ctx);

        if (this.state.counter === 0 && stage === 'planningPostRoll') {
            setTimeout(() => {
                if (gameMethods.getStage(this.props.ctx) === 'planningPostRoll') {
                    this.props.moves.startAssignment();
                }
            }, 10);
        }

        if (stage.startsWith('pre')) {
            setTimeout(() => {
                if (gameMethods.getStage(this.props.ctx) === stage) {
                    this.props.moves.beginPhase();
                }
            }, 1000);
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
            <Container className={'board ' + this.props.ctx.phase + (this.props.G.fever ? ' fevered' : '')}>
                <Box className="titleBar preGame determineExpeditionType mainGame">
                    <h1 className="gameTitle">1572: The Lost Expedition</h1>
                    <h2 className="dayLabel">Day {this.props.G.days + 1}</h2>
                </Box>
                <Box className="preGame">
                    <p>Your commander and entire company was killed after being ambushed in these mountains. The next morning, only six of
                    you survive. Now you have to make it down the mountain and to the coastline where you can signal for help. The way is
                    dangerous though; you're short food and muskets. The natives will likely want you dead as offer any help.</p>
                    <ButtonGroup color="primary" className="buttons">
                        <Button onClick={() => this.onGameStart()}>OK</Button>
                    </ButtonGroup>
                </Box>
                <Box className="mainGame determineExpeditionType">
                    <DiceTray mode={animateDiceTray ? gameConstants.diceTrayModes.rolling : this.props.G.diceTray.mode}
                        dice={animateDiceTray ? this.state.dice : this.props.G.diceTray.dice}
                        title={this.props.G.diceTray.title}
                        extraContent={this.props.G.diceTray.extraContent}
                        disableExtraButton={this.props.G.counters.muskets.value === 0}
                        onRollClick={this.onRollClick}
                        onRerollClick={this.onRerollClick}
                        onComplete={this.onRollComplete} />
                </Box>
                <Box className="mainGame">
                    <PlanningDiceTray mode={animateDiceTrayPlanning
                        ? this.props.G.diceTrayPlanning.mode === gameConstants.diceTrayModes.rerollPartial
                            ? gameConstants.diceTrayModes.rolling
                            : gameConstants.diceTrayModes.rerolling
                        : this.props.G.diceTrayPlanning.mode}
                        dice={animateDiceTrayPlanning ? this.state.dice : this.props.G.diceTrayPlanning.dice}
                        canAddConquistador={this.props.G.counters.conquistadors.value < 6}
                        fever={this.props.G.fever}
                        feverBreakWildCount={3 + this.props.G.expeditionType.wildAdjust}
                        cannotBreakFever={this.props.G.map.hexes[this.props.G.map.currentLocationKey].terrainType.cannotBreakFever}
                        startedTurnFevered={this.props.G.startedTurnFevered}
                        onRollClick={this.onPlanningRollClick}
                        onDieClick={this.onPlanningDieClick}
                        onDieDrop={this.onPlanningDieDrop}
                        onRerollClick={this.onPlanningRerollClick}
                        onSkipRerollClick={this.onPlanningSkipRerollClick}
                        onAddConquistador={this.onPlanningAddConquistador}
                        onBreakFever={this.onPlanningBreakFever}
                        onComplete={this.onPlanningRollComplete} />
                    <Header expeditionType={this.props.G.expeditionType} counters={this.props.G.counters} />
                    <h2 className="feverLabel feverVisible">FEVER</h2>
                    <Map mapData={this.props.G.map} onHexClick={this.onHexClick} onTrailClick={this.onTrailClick}/>
                    <h2 className="phase">Phase {this.props.G.phase.index}: {this.props.G.phase.label}</h2>
                    <p className="phaseComment">{this.props.G.phaseComment}</p>
                </Box>
                <BasicDialog
                    dialogData={this.props.G.dialog}
                    onComplete={this.onBasicDialogComplete} />
            </Container>
        );
    }
}