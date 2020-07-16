import React from 'react';

export class Map extends React.Component {
    render() {
        const hexWidth = 80;
        const hexDrawWidth = hexWidth * 3 / 4;
        const hexHeight = 70;
        const hexPoints = [
            { x: 0, y: hexHeight / 2 },
            { x: hexWidth / 4, y: 0 },
            { x: hexWidth * 3 / 4, y: 0 },
            { x: hexWidth, y: hexHeight / 2 },
            { x: hexWidth * 3 / 4, y: hexHeight },
            { x: hexWidth / 4, y: hexHeight },
        ];

        let shapes = [];
        const keys = Object.keys(this.props.mapData);
        for (let i = 0; i < keys.length; ++i) {
            const key = keys[i];
            const hex = this.props.mapData[key];
            const xBase = hex.x * hexDrawWidth + 2;
            const yBase = hex.y * hexHeight + 2;

            if (hex.river) {
                const x1 = xBase + hexWidth * hex.river.start.xRatio;
                const y1 = yBase + hexHeight * hex.river.start.yRatio;
                const x2 = xBase + hexWidth * hex.river.end.xRatio;
                const y2 = yBase + hexHeight * hex.river.end.yRatio;

                shapes.push(<line key={"RIVER-" + hex.x + "-" + hex.y} x1={x1} y1={y1} x2={x2} y2={y2} stroke="blue" strokeWidth="2" />);
            }

            const points = hexPoints.map(p => (xBase + p.x) + ',' + (yBase + p.y)).join(' ');
            shapes.push(<polygon key={key} points={points} stroke="black" strokeWidth="2" fill={'url(#Terrain.' + hex.terrainType.name + ')'} />);
        }

        return (
            <div className="map">
                <svg width="924" height="319">
                    <defs>
                        <pattern id="Terrain.forest" x="0" y="0" width="1" height="1">
                            <g stroke="black" strokeWidth="1" fill="transparent">
                                <line x1="22" y1="35" x2="22" y2="57" />
                                <circle cx="22" cy="28" r="8" />
                                <line x1="40" y1="30" x2="40" y2="57" />
                                <circle cx="40" cy="23" r="8" />
                                <line x1="58" y1="35" x2="58" y2="57" />
                                <circle cx="58" cy="28" r="8" />
                            </g>
                        </pattern>
                        <pattern id="Terrain.hills" x="0" y="0" width="1" height="1">
                            <g stroke="black" strokeWidth="1" fill="transparent">
                                <path d="M 15 36 C 15 11, 40 11, 40 36" />
                                <path d="M 41 36 C 41 11, 66 11, 66 36" />
                                <path d="M 28 54 C 28 29, 53 29, 53 54" />
                            </g>
                        </pattern>
                        <pattern id="Terrain.jungle" x="0" y="0" width="1" height="1">
                            <g stroke="black" strokeWidth="1" fill="transparent">
                                <line x1="27" y1="26" x2="27" y2="51" />
                                <line x1="17" y1="34" x2="37" y2="18" />
                                <line x1="17" y1="18" x2="37" y2="34" />
                                <line x1="52" y1="31" x2="52" y2="56" />
                                <line x1="42" y1="39" x2="62" y2="23" />
                                <line x1="42" y1="23" x2="62" y2="39" />
                            </g>
                        </pattern>
                        <pattern id="Terrain.lake" x="0" y="0" width="1" height="1">
                            <g stroke="black" strokeWidth="1" fill="transparent">
                                <circle cx="40" cy="35" r="32" strokeDasharray="8,2" />
                                <line x1="23" y1="47" x2="29" y2="44" />
                                <line x1="29" y1="44" x2="35" y2="47" />
                                <line x1="33" y1="25" x2="39" y2="22" />
                                <line x1="39" y1="22" x2="45" y2="25" />
                                <line x1="49" y1="37" x2="55" y2="34" />
                                <line x1="55" y1="34" x2="61" y2="37" />
                            </g>
                        </pattern>
                        <pattern id="Terrain.mountains" x="0" y="0" width="1" height="1">
                            <g stroke="black" strokeWidth="1" fill="transparent">
                                <polyline points="10,42 28,6 43,53" />
                                <polyline points="39,32 48,11 65,53" />
                            </g>
                        </pattern>
                        <pattern id="Terrain.plains" x="0" y="0" width="1" height="1">
                            <g stroke="black" strokeWidth="1">
                                <line x1="18" y1="23" x2="38" y2="23" />
                                <line x1="28" y1="38" x2="48" y2="38" />
                                <line x1="38" y1="53" x2="58" y2="53" />
                            </g>
                        </pattern>
                        <pattern id="Terrain.swamp" x="0" y="0" width="1" height="1">
                            <g stroke="black" strokeWidth="1" fill="transparent">
                                <line x1="27" y1="22" x2="27" y2="38" />
                                <line x1="19" y1="39" x2="33" y2="39" />
                                <line x1="19" y1="30" x2="27" y2="38" />
                                <line x1="27" y1="38" x2="35" y2="30" />
                                <line x1="52" y1="27" x2="52" y2="43" />
                                <line x1="44" y1="44" x2="60" y2="44" />
                                <line x1="44" y1="35" x2="52" y2="43" />
                                <line x1="52" y1="43" x2="60" y2="35" />
                            </g>
                        </pattern>
                        <pattern id="Terrain.unexplored" x="0" y="0" width="1" height="1" />
                    </defs>
                    {shapes}
                </svg>
            </div>
        );
    }
}
