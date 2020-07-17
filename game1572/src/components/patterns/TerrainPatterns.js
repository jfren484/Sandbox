import React from 'react';
import * as gameConstants from '../../gameConstants';

export class TerrainPatterns extends React.Component {
    render() {
        return (
            <g stroke="black" strokeWidth="1" fill="transparent">
                <pattern id="Terrain.forest" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <line x1="22" y1="35" x2="22" y2="57" />
                    <circle cx="22" cy="28" r="8" />
                    <line x1="40" y1="30" x2="40" y2="57" />
                    <circle cx="40" cy="23" r="8" />
                    <line x1="58" y1="35" x2="58" y2="57" />
                    <circle cx="58" cy="28" r="8" />
                </pattern>
                <pattern id="Terrain.hills" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <path d="M 15 36 C 15 11, 40 11, 40 36" />
                    <path d="M 41 36 C 41 11, 66 11, 66 36" />
                    <path d="M 28 54 C 28 29, 53 29, 53 54" />
                </pattern>
                <pattern id="Terrain.jungle" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <line x1="27" y1="26" x2="27" y2="51" />
                    <line x1="17" y1="34" x2="37" y2="18" />
                    <line x1="17" y1="18" x2="37" y2="34" />
                    <line x1="52" y1="31" x2="52" y2="56" />
                    <line x1="42" y1="39" x2="62" y2="23" />
                    <line x1="42" y1="23" x2="62" y2="39" />
                </pattern>
                <pattern id="Terrain.lake" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <circle cx="40" cy="35" r="32" strokeDasharray="8,2" />
                    <line x1="23" y1="47" x2="29" y2="44" />
                    <line x1="29" y1="44" x2="35" y2="47" />
                    <line x1="33" y1="25" x2="39" y2="22" />
                    <line x1="39" y1="22" x2="45" y2="25" />
                    <line x1="49" y1="37" x2="55" y2="34" />
                    <line x1="55" y1="34" x2="61" y2="37" />
                </pattern>
                <pattern id="Terrain.mountains" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <polyline points="10,42 28,6 43,53" />
                    <polyline points="39,32 48,11 65,53" />
                </pattern>
                <pattern id="Terrain.plains" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <line x1="18" y1="23" x2="38" y2="23" />
                    <line x1="28" y1="38" x2="48" y2="38" />
                    <line x1="38" y1="53" x2="58" y2="53" />
                </pattern>
                <pattern id="Terrain.swamp" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <line x1="27" y1="22" x2="27" y2="38" />
                    <line x1="19" y1="39" x2="33" y2="39" />
                    <line x1="19" y1="30" x2="27" y2="38" />
                    <line x1="27" y1="38" x2="35" y2="30" />
                    <line x1="52" y1="27" x2="52" y2="43" />
                    <line x1="44" y1="44" x2="60" y2="44" />
                    <line x1="44" y1="35" x2="52" y2="43" />
                    <line x1="52" y1="43" x2="60" y2="35" />
                </pattern>
                <pattern id="Terrain.unexplored" width="1" height="1" viewBox={gameConstants.map.renderViewBox} />
            </g>
        );
    }
}