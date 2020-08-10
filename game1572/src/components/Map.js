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
        let currentHexShape;

        const keys = Object.keys(this.props.mapData.hexes);
        for (let i = 0; i < keys.length; ++i) {
            const key = keys[i];
            const hex = this.props.mapData.hexes[key];
            const xBase = hex.x * hexDrawWidth + gameConstants.map.hexPad;
            const yBase = hex.y * gameConstants.map.hexHeight + gameConstants.map.hexPad;

            const adj = this.props.mapData.adjacentUnmappedHexes.includes(key);

            const points = gameConstants.map.hexPoints.map(p => (xBase + p.x) + ',' + (yBase + p.y)).join(' ');
            const stroke = key === this.props.mapData.currentLocationKey ? 'red' : 'black';
            const cursor = adj ? 'pointer' : 'auto';

            const shape = (<g key={'G-' + key} cursor={cursor} pointer-events="visible" onClick={adj ? () => this.props.onHexClick(key) : null}>
                {adj
                    ? <polygon className="highlight" key={'HL-' + key} points={points} />
                    : null}
                {hex.riverType
                    ? <polygon key={'RIVER-' + key} points={points} fill={'url(#River.' + hex.riverType.name + ')'} />
                    : null}
                <polygon key={'HEX-' + key} points={points} stroke={stroke} strokeWidth="2" fill={'url(#Terrain.' + hex.terrainType.name + ')'} />
            </g>);

            if (key === this.props.mapData.currentLocationKey) {
                currentHexShape = shape;
            } else {
                shapes.push(shape);
            }
        }

        shapes.push(currentHexShape);

        return (
            <div className="map">
                <svg width={mapWidth} height={mapHeight}>
                    <defs>
                        <TerrainPatterns />
                        <RiverPatterns />
                    </defs>
                    {shapes}
                </svg>
            </div>
        );
    }
}
