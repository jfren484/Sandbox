import React from 'react';
import * as gameConstants from '../../gameConstants';

export class RiverPatterns extends React.Component {
    render() {
        return (
            <g stroke="blue" strokeWidth="2" fill="transparent">
                <pattern id="River.delta" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <path d="M 34.3 45 C 34 49, 43 52, 27 70" />
                    <line x1="36" y1="50" x2="50" y2="70" />
                    <path d="M 33.8 45 C 37 52, 43 60, 64 66" />
                    <path d="M 33.8 45 C 37 52, 43 60, 73 56" />
                    <path d="M 10 17.5 C 26 25, 41 52.5, 40 70" />
                </pattern>
                <pattern id="River.source" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <path d="m 56,23 c 0,-2 4,-3 5,-1 1,2 6,1 6,-2 0,-2 4,-2 4,-2" />
                </pattern>
                <pattern id="River.swse" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <path d="M 10 52.5 C 25 42.5, 55 42.5, 70 52.5" />
                </pattern>
                <pattern id="River.swne" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <path d="m 11,53 c 0,0 7,-3 9,-8 3,-6 8,-21 14,-20 6,1 3,18 10,20 7,2 8,-4 16,-18 4,-7 10,-10 10,-10" />
                </pattern>
                <pattern id="River.nse" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <path d="M 40 0 C 38 17, 53 44, 70 52.5" />
                </pattern>
                <pattern id="River.nwne" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <path d="M 10 17.5 C 25 27.5, 55 27.5, 70 17.5" />
                </pattern>
                <pattern id="River.nws" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <path d="M 10 17.5 C 26 25, 41 52.5, 40 70" />
                </pattern>
                <pattern id="River.nwse" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <line x1="10" y1="17.5" x2="70" y2="52.5" />
                </pattern>
            </g>
        );
    }
}