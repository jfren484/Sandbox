import React from 'react';

export class Die extends React.Component {
    pipDefs = [
        { x: 18, y: 18, usedBy: [2, 3, 4, 5, 6] },
        { x: 18, y: 40, usedBy: [6] },
        { x: 18, y: 62, usedBy: [4, 5, 6] },
        { x: 40, y: 40, usedBy: [1, 3, 5] },
        { x: 62, y: 18, usedBy: [4, 5, 6] },
        { x: 62, y: 40, usedBy: [6] },
        { x: 62, y: 62, usedBy: [2, 3, 4, 5, 6] }
    ];

    render() {
        let pips = [];

        for (let i = 0; i < this.pipDefs.length; ++i) {
            let pipDef = this.pipDefs[i];
            if (pipDef.usedBy.includes(this.props.value)) {
                pips.push(<circle key={i} cx={pipDef.x} cy={pipDef.y} r={this.props.pipSize} fill={this.props.pipColor} />);
            }
        }

        if (pips.length === 0) {
            pips.push(<text key="1" x="50%" y="65%" fill={this.props.pipColor} stroke={this.props.pipColor} textAnchor="middle" fontSize={this.props.dieSize / 2}>?</text>)
        }

        return (
            <svg className ="die" width={this.props.dieSize} height={this.props.dieSize}>
                <rect x="0" y="0" rx={this.props.dieRounding} ry={this.props.dieRounding} width={this.props.dieSize} height={this.props.dieSize} fill={this.props.dieColor} />
                {pips}
            </svg>
        );
    }
}

Die.defaultProps = {
    dieColor: "black",
    dieRounding: 10,
    dieSize: 80,
    pipColor: "white",
    pipSize: 8
};