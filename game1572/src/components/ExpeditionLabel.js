import React from 'react';

export class ExpeditionLabel extends React.Component {
    render() {
        return (
            <div className="expeditionType">
                <span className="expeditionTypeLabelLabel">Type of Expedition:</span>
                <span className="expeditionTypeLabel">{this.props.expeditionType.label}</span> 
                <span className="expeditionTypeDesc"> - {this.props.expeditionType.description}</span>
            </div>
        );
    }
}
