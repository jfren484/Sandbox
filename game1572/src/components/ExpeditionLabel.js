import React from 'react';

export class ExpeditionLabel extends React.Component {
    render() {
        return (
            <div className="expeditionLabel">
                <div>Type of Expedition:</div>
                <div>{this.props.expeditionType.label}</div>
                <div>{this.props.expeditionType.description}</div>
            </div>
        );
    }
}
