import React from 'react';
import { Die } from './Die';

export class Counter extends React.Component {
    render() {
        return (
            <div className="counter">
                <h3>{this.props.data.label}</h3>
                <img src={'/images/' + this.props.data.image} alt={this.props.data.label} />
                <Die value={this.props.data.value} />
            </div>
        );
    }
}
