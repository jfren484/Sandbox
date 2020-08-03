import React from 'react';
import { ExpeditionLabel } from './ExpeditionLabel';
import { Counter } from './Counter';

export class Header extends React.Component {
    render() {
        let counters = [];
        for (let prop in this.props.counters) {
            counters.push(<Counter key={prop} data={this.props.counters[prop]} />);
        }

        return (
            <div className="header">
                <ExpeditionLabel expeditionType={this.props.expeditionType} />
                {counters}
            </div>
        );
    }
}
