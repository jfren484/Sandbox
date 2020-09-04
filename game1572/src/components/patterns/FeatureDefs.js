import React from 'react';

export class FeatureDefs extends React.Component {
    render() {
        return (
            <g>
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
                <g id="trail">
                    <rect x="2" y="0" width="12" height="20" strokeWidth="0" fill="transparent" />
                    <polyline points="2,0 5,3 5,17 2,20" stroke="black" strokeWidth="1.5" fill="none" />
                    <polyline points="14,0 11,3 11,17 14,20" stroke="black" strokeWidth="1.5" fill="none" />
                </g>
                <g id="village">
                    <circle cx="2" cy="2" r="4" fill="black" />
                </g>
                <g id="friendlyVillage">
                    <circle cx="3" cy="3" r="6" fill="none" stroke="black" strokeWidth="1" />
                    <circle cx="3" cy="3" r="4" fill="black" />
                </g>
            </g>
        );
    }
}