import React from 'react';

export class RiverPatterns extends React.Component {
    render() {
        return (
            <g stroke="blue" strokeWidth="2" fill="transparent">
                <pattern id="River.source" width="1" height="1" viewBox="0 0 80 70">
                    <line x1="40" y1="35" x2="70" y2="17.5" />
                </pattern>
            </g>
        );
    }
}