import React from 'react';
import * as gameConstants from '../../gameConstants';

export class OtherPatterns extends React.Component {
    render() {
        return (
            <g>
                <pattern id="Trail.vert" width="1" height="1" viewBox={gameConstants.map.renderViewBox}>
                    <line x1="0" y1="0" x2="0" y2="20" />
                    <line x1="10" y1="0" x2="10" y2="20" />
                </pattern>
                <pattern id="Trail.nesw" width="1" height="1" viewBox={gameConstants.map.renderViewBox} patternTransform="rotate(60)">
                    <rect x="0" y="0" width="10" height="20" fill="url(#Trail.vert)" />
                </pattern>
                <pattern id="Trail.nwse" width="1" height="1" viewBox={gameConstants.map.renderViewBox} patternTransform="rotate(120)">
                    <rect x="0" y="0" width="10" height="20" fill="url(#Trail.vert)" />
                </pattern>
            </g>
        );
    }
}