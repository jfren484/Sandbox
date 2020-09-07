import React from 'react';

export class RiverDefs extends React.Component {
    render() {
        return (
            <g id="RiverDefs">
                <g id="River.delta" stroke="darkblue" strokeWidth="2" fill="none">
                    <path d="M 34.3 45 C 34 49, 43 52, 27 70" />
                    <line x1="36" y1="50" x2="50" y2="70" />
                    <path d="M 33.8 45 C 37 52, 43 60, 64 66" />
                    <path d="M 33.8 45 C 37 52, 43 60, 73 56" />
                    <path d="M 10 17.5 C 26 25, 41 52.5, 40 70" />
                </g>
                <path id="River.source" stroke="darkblue" strokeWidth="2" fill="none" d="m 56,23 c 0,-2 4,-3 5,-1 1,2 6,1 6,-2 0,-2 4,-2 4,-2" />
                <path id="River.swse" stroke="darkblue" strokeWidth="2" fill="none" d="M 10 52.5 C 25 42.5, 55 42.5, 70 52.5" />
                <path id="River.swne" stroke="darkblue" strokeWidth="2" fill="none" d="m 11,53 c 0,0 7,-3 9,-8 3,-6 8,-21 14,-20 6,1 3,18 10,20 7,2 8,-4 16,-18 4,-7 10,-10 10,-10" />
                <use id="River.nse" href="#River.swse" transform="rotate(240, 40, 35)" />
                <use id="River.nwne" href="#River.swse" transform="rotate(180, 40, 35)" />
                <use id="River.nws" href="#River.swse" transform="rotate(60, 40, 35)" />
                <line id="River.nwse" stroke="darkblue" strokeWidth="2" fill="none" id="River.nwse" x1="10" y1="17.5" x2="70" y2="52.5" />
            </g>
        );
    }
}