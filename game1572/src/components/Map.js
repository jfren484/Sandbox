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
                shapes.push(hex.terrainType.draw(hex.x * hexDrawWidth, hex.y * hexHeight));
            }

            const points = hexPoints.map(p => (xBase + p.x) + ',' + (yBase + p.y)).join(' ');
            shapes.push(<polygon key={key} points={points} stroke="black" strokeWidth="2" fill="transparent" />);
        }

        return (
            <div className="map">
                <svg width="924" height="319">
                    {shapes}
                </svg>
            </div>
        );
    }
}
