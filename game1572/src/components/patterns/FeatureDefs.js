import React from 'react';

export class FeatureDefs extends React.Component {
    render() {
        return (
            <g>
                <g id="border">
                    <rect x="0" y="0" width="36" height="3" stroke="none" fill="yellow" />
                    <line x1="0" y1="1" x2="36" y2="1" stroke-width="1" stroke="black" />
                </g>

                <g id="bush">
                    <line x1="8" y1="0" x2="8" y2="16" />
                    <line x1="0" y1="17" x2="14" y2="17" />
                    <line x1="0" y1="8" x2="8" y2="16" />
                    <line x1="8" y1="16" x2="16" y2="8" />
                </g>

                <g id="cataract">
                    <line x1="0" y1="0" x2="20" y2="12" stroke="darkblue" strokeWidth="1.5" />
                    <line x1="0" y1="12" x2="20" y2="0" stroke="darkblue" strokeWidth="1.5" />
                </g>

                <path id="coast4sides" d="M21.4,69.4 L12.2,51 A32,32 0 1,1 67.6,18.8 L79,36.4" strokeWidth="1" strokeDasharray="8,2" fill="none" />

                <g id="friendlyVillage">
                    <circle cx="3" cy="3" r="6" fill="transparent" stroke="black" strokeWidth="1" />
                    <circle cx="3" cy="3" r="4" fill="black" />
                </g>

                <line id="grass" x1="0" y1="0" x2="20" y2="0" />

                <polygon id="hex" points="0,35 20,0 60,0 80,35 60,70 20,70" />

                <path id="hill" d="M0,20 C5,0 20,0 25,20" fill="none" />

                <g id="interest">
                    <line x1="6" y1="0" x2="6" y2="12" strokeWidth="1" />
                    <line x1="0" y1="6" x2="12" y2="6" strokeWidth="1" />
                    <line x1="2" y1="2" x2="10" y2="10" strokeWidth="1" />
                    <line x1="2" y1="10" x2="10" y2="2" strokeWidth="1" />
                </g>

                <path id="island" d="M 769,857 C 1264,631 1836,503 2212,81 c 289,-161 540,257 833,110 598,-216 1349,-167 1819,298 370,406 375,1097 -5,1499 -199,266 -45,606 -100,888 -176,392 -519,676 -843,945 -159,129 -379,193 -576,114 C 2943,3832 2535,3784 2129,3730 1795,3704 1636,3401 1420,3197 1187,2981 846,3003 580,2847 231,2687 -60,2275 79,1884 169,1682 394,1589 509,1403 644,1258 637,1047 738,890 Z" />

                <g id="palm">
                    <line x1="10" y1="7" x2="10" y2="32" stroke="sienna" strokeWidth="2" />
                    <line x1="0" y1="14" x2="20" y2="0" stroke="darkgreen" strokeWidth="2" />
                    <line x1="0" y1="0" x2="20" y2="14" stroke="darkgreen" strokeWidth="2" />
                </g>

                <polygon id="threeHexRegion" points="20,70 0,35 20,0 60,0 80,35 120,35 140,70 120,105 80,105 60,140 20,140 0,105" />

                <g id="trail">
                    <rect x="2" y="0" width="12" height="20" stroke="none" fill="transparent" />
                    <polyline points="2,0 5,3 5,17 2,20" stroke="black" strokeWidth="1.5" fill="none" />
                    <polyline points="14,0 11,3 11,17 14,20" stroke="black" strokeWidth="1.5" fill="none" />
                </g>

                <g id="tree">
                    <line x1="8" y1="21" x2="8" y2="43" stroke="saddlebrown" strokeWidth="2" />
                    <circle cx="8" cy="14" r="8" fill="darkgreen" stroke="none" />
                </g>

                <circle id="village" cx="2" cy="2" r="4" stroke="none" fill="black" />

                <polyline id="wave" points="0,3 6,0 12,3" strokeWidth="1" fill="none" />
            </g>
        );
    }
}