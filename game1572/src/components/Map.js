import React from 'react';
import { RiverPatterns } from './patterns/RiverPatterns';
import { TerrainPatterns } from './patterns/TerrainPatterns';
import * as gameConstants from '../gameConstants';

export class Map extends React.Component {
    render() {
        const hexDrawWidth = gameConstants.map.hexWidth * 3 / 4;
        const mapWidth = hexDrawWidth * (gameConstants.map.cols - 1) + gameConstants.map.hexWidth + gameConstants.map.hexPad * 2;
        const mapHeight = gameConstants.map.hexHeight * (gameConstants.map.rows) + gameConstants.map.hexPad * 2;

        const hexPoints = [
            { x: 0, y: gameConstants.map.hexHeight / 2 },
            { x: gameConstants.map.hexWidth / 4, y: 0 },
            { x: gameConstants.map.hexWidth * 3 / 4, y: 0 },
            { x: gameConstants.map.hexWidth, y: gameConstants.map.hexHeight / 2 },
            { x: gameConstants.map.hexWidth * 3 / 4, y: gameConstants.map.hexHeight },
            { x: gameConstants.map.hexWidth / 4, y: gameConstants.map.hexHeight },
        ];

        let shapes = [];
        const keys = Object.keys(this.props.mapData);
        for (let i = 0; i < keys.length; ++i) {
            const key = keys[i];
            const hex = this.props.mapData[key];
            const xBase = hex.x * hexDrawWidth + gameConstants.map.hexPad;
            const yBase = hex.y * gameConstants.map.hexHeight + gameConstants.map.hexPad;

            const points = hexPoints.map(p => (xBase + p.x) + ',' + (yBase + p.y)).join(' ');

            if (hex.riverType) {
                shapes.push(<polygon key={'RIVER' + key} points={points} fill={'url(#River.' + hex.riverType.name + ')'} />);
            }

            shapes.push(<polygon key={key} points={points} stroke="black" strokeWidth="2" fill={'url(#Terrain.' + hex.terrainType.name + ')'} />);
        }

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
