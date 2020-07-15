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

            if (hex.terrainType.draw) {
                shapes.push(hex.terrainType.draw(xBase, yBase));
            }

            const points = hexPoints.map(p => (xBase + p.x) + ',' + (yBase + p.y)).join(' ');
            shapes.push(<polygon key={key} points={points} stroke="black" strokeWidth="2" fill="transparent" />);
        }

        return (
            <div className="map">
                <svg width="924" height="319">
                    <defs>
                        <pattern id="Terrain.lake" x="0" y="0" width="1" height="1">
                            <g stroke="black" stroke-width="1" fill="transparent">
                                <circle cx="40" cy="35" r="32" stroke-dasharray="8,2" />
                                <line x1="23" y1="47" x2="29" y2="44"></line>
                                <line x1="29" y1="44" x2="35" y2="47"></line>
                                <line x1="33" y1="25" x2="39" y2="22"></line>
                                <line x1="39" y1="22" x2="45" y2="25"></line>
                                <line x1="49" y1="37" x2="55" y2="34"></line>
                                <line x1="55" y1="34" x2="61" y2="37"></line>
                            </g>
                        </pattern>
                    </defs>
                    {shapes}
                </svg>
            </div>
        );
    }
}
