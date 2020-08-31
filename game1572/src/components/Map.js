import React from 'react';
import { RiverPatterns } from './patterns/RiverPatterns';
import { TerrainPatterns } from './patterns/TerrainPatterns';
import * as gameConstants from '../gameConstants';

export class Map extends React.Component {
    render() {
        const hexDrawWidth = gameConstants.map.hexWidth * 3 / 4;
        const mapWidth = hexDrawWidth * (gameConstants.map.cols - 1) + gameConstants.map.hexWidth + gameConstants.map.hexPad * 2;
        const mapHeight = gameConstants.map.hexHeight * (gameConstants.map.rows) + gameConstants.map.hexPad * 2;

        let shapes = [];
        let currentHexShapes = [];

        for (let trailKey in this.props.mapData.trails) {
            const hexKey = this.props.mapData.trails[trailKey].hexKey;
            const trailOffset = this.props.mapData.trails[trailKey].offset;

            const hex = this.props.mapData.hexes[hexKey];
            const xBase = hex.x * hexDrawWidth + gameConstants.map.hexPad;
            const yBase = hex.y * gameConstants.map.hexHeight + gameConstants.map.hexPad;

            shapes.push(<g key={'TRL-' + hexKey + '-' + trailOffset.key}>
                <use href="#trail" transform={'translate(' + (xBase + trailOffset.pX - 8) + ', ' + (yBase + trailOffset.pY - 10) + ') rotate(' + trailOffset.rotate + ', 8, 10)'} />
            </g>);
        }

        const keys = Object.keys(this.props.mapData.hexes);
        for (let i = 0; i < keys.length; ++i) {
            const key = keys[i];
            const hex = this.props.mapData.hexes[key];
            const xBase = hex.x * hexDrawWidth + gameConstants.map.hexPad;
            const yBase = hex.y * gameConstants.map.hexHeight + gameConstants.map.hexPad;

            const adjTravel = this.props.mapData.adjacentTravelCandidates.find(adj => adj.target === key);
            const adj = adjTravel || this.props.mapData.adjacentUnmappedHexes.includes(key);

            const points = gameConstants.map.hexPoints.map(p => (xBase + p.x) + ',' + (yBase + p.y)).join(' ');
            const stroke = key === this.props.mapData.currentLocationKey ? 'red' : 'black';

            const highlight = adj
                ? <polygon className="highlightHex" key={'HL-' + key} points={points} />
                : null;

            const hlTooltip = adjTravel
                ? <title>
                    Movement Cost: {adjTravel.movementCost}, Morale Adjustment: {adjTravel.hexDirection.moraleAdjustment}
                </title>
                : null;

            const river = hex.riverType
                ? <polygon key={'RIVER-' + key} points={points} fill={'url(#River.' + hex.riverType.name + ')'} />
                : null;

            const shape = (<g key={'G-' + key} cursor={adj ? 'pointer' : 'auto'} pointerEvents="visible" onClick={adj ? () => this.props.onHexClick(key) : null}>
                {highlight}
                {hlTooltip}
                {river}
                <polygon key={'HEX-' + key} points={points} stroke={stroke} strokeWidth="2" fill={'url(#Terrain.' + hex.terrainType.name + ')'} />
            </g>);

            if (hex.cataract) {
                const offset = gameConstants.hexNeighborOffsets[hex.riverType.downstream.name];
                currentHexShapes.push(<g key={'CAT-' + key}>
                    <use href="#cataract" transform={'translate(' + (xBase + offset.pX - 10) + ', ' + (yBase + offset.pY - 6) + ') rotate(' + offset.rotate + ', 10, 6)'} />
                </g>);
            }

            let v = 0;
            for (; v < hex.villages && v < gameConstants.villageInterestOffsets.length; ++v) {
                const offset = gameConstants.villageInterestOffsets[v];
                shapes.push(<circle key={'VIL-' + v} cx={xBase + offset.pX} cy={yBase + offset.pY} r="4" fill="black" />);
            }
            for (; v < hex.villages + hex.friendlyVillages && v < gameConstants.villageInterestOffsets.length; ++v) {
                const offset = gameConstants.villageInterestOffsets[v];
                shapes.push(<circle key={'FVIL-' + v} cx={xBase + offset.pX} cy={yBase + offset.pY} r="4" fill="black" />);
                shapes.push(<circle key={'FVILS-' + v} cx={xBase + offset.pX} cy={yBase + offset.pY} r="6" fill="none" stroke="black" strokeWidth="1" />);
            }
            for (; v < hex.villages + hex.friendlyVillages + hex.interests.length && v < gameConstants.villageInterestOffsets.length; ++v) {
                const offset = gameConstants.villageInterestOffsets[v];
                shapes.push(<use href="#interest" key={'INT-' + key + '-' + v} transform={'translate(' + (xBase + offset.pX - 3) + ', ' + (yBase + offset.pY - 3) + ')'} />);
            }

            if (key === this.props.mapData.currentLocationKey) {
                currentHexShapes.push(shape);

                for (let t = 0; t < this.props.mapData.availableTrailLocations.length; ++t) {
                    const availableTrailLocation = this.props.mapData.availableTrailLocations[t];
                    const trailKey = availableTrailLocation.key;
                    const trailOffset = availableTrailLocation.offset;
                    currentHexShapes.push(<g key={'ATRL-' + trailOffset.key} className="highlightTrail">
                        <rect x={xBase + trailOffset.pX - 8} y={yBase + trailOffset.pY - 12} width="16" height="24" className="hl"
                            transform={'rotate(' + trailOffset.rotate + ', ' + (xBase + trailOffset.pX) + ', ' + (yBase + trailOffset.pY) + ')'} />
                        <use href="#trail" className="highlightTrail" cursor="pointer" pointerEvents="visible" onClick={() => this.props.onTrailClick(trailKey, trailOffset)} opacity="0.5"
                            transform={'translate(' + (xBase + trailOffset.pX - 8) + ', ' + (yBase + trailOffset.pY - 10) + ') rotate(' + trailOffset.rotate + ', 8, 10)'} />
                    </g>);
                }
            } else {
                shapes.push(shape);
            }
        }

        shapes = shapes.concat(currentHexShapes);

        return (
            <div className="map">
                <svg width={mapWidth} height={mapHeight}>
                    <defs>
                        <TerrainPatterns />
                        <RiverPatterns />
                    </defs>
                    <g visibility="hidden">
                        <g id="trail">
                            <rect x="2" y="0" width="12" height="20" strokeWidth="0" fill="transparent" />
                            <polyline points="2,0 5,3 5,17 2,20" stroke="black" strokeWidth="1.5" fill="none" />
                            <polyline points="14,0 11,3 11,17 14,20" stroke="black" strokeWidth="1.5" fill="none" />
                        </g>
                        <g id="cataract">
                            <line x1="0" y1="0" x2="20" y2="12" stroke="blue" strokeWidth="1.5" />
                            <line x1="0" y1="12" x2="20" y2="0" stroke="blue" strokeWidth="1.5" />
                        </g>
                        <g id="interest">
                            <line x1="6" y1="0" x2="6" y2="12" stroke="black" strokeWidth="1" />
                            <line x1="0" y1="6" x2="12" y2="6" stroke="black" strokeWidth="1" />
                            <line x1="2" y1="2" x2="10" y2="10" stroke="black" strokeWidth="1" />
                            <line x1="2" y1="10" x2="10" y2="2" stroke="black" strokeWidth="1" />
                        </g>
                    </g>
                    {shapes}
                </svg>
            </div>
        );
    }
}
