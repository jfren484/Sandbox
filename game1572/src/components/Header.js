import React from 'react';
import { ExpeditionLabel } from './ExpeditionLabel';

export class Header extends React.Component {
    render() {
        return (
            <div className="header">
                <ExpeditionLabel expeditionType={this.props.expeditionType} />
            </div>
        );
    }
}