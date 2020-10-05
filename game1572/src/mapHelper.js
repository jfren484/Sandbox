import * as gameConstants from './gameConstants';

const hexTemplate = {
    key: '0,0',
    x: 0,
    y: 0,

    advancedCiv: false,
    cataract: false,
    connections: [],
    friendlyVillages: 0,
    interestType: gameConstants.interestTypes.none,
    lagosDeOroCannotBeInitiator: false,
    lagosDeOroCannotBeTarget: false,
    riverType: undefined,
    terrainType: gameConstants.terrainTypes.unexplored,
    villages: 0,
    winGame: false
};

export class mapHelper {
    constructor(G) {
        this.map = G.map;
        this.currentHex = G.map.hexes[G.map.currentLocationKey];
        this.movementProgress = G.counters.movementProgress.value;
    }

    static createLagosDeOro() {
        const locations = this.map.lagosDeOroLocations;
        const x = locations
            .map(hexKey => this.map.hexes[hexKey].x)
            .sort()[0];
        const y = locations
            .map(hexKey => this.map.hexes[hexKey].y)
            .sort()[0];
        const connections = locations
            .flatMap(hexKey => this.map.hexes[hexKey].connections)
            .filter(conn => !locations.includes(conn.hexKey));

        const lagos = {
            ...hexTemplate,
            key: x + ',' + y,
            x: x,
            y: y,
            connections: connections,
            interestType: locations
                .map(hexKey => this.map.hexes[hexKey].interestType)
                .find(it => it.isPending)
                ?? gameConstants.interestTypes.none,
            riverType: gameConstants.riverTypes.bodyOfWater,
            terrainType: gameConstants.terrainTypes.lagosDeOro
        };

        lagos.terrainType.suffix = locations.filter(hexKey => this.map.hexes[hexKey].x === lagos.x).length > 1
            ? ' A'
            : ' B';

        for (let hexKey in this.map.hexes) {
            const hex = this.map.hexes[hexKey];
            hex.connections
                .filter(conn => locations.includes(conn.hexKey))
                .forEach(conn => conn.hexKey = lagos.key);
        }

        delete this.map.hexes[locations[0]];
        delete this.map.hexes[locations[1]];
        delete this.map.hexes[locations[2]];

        this.map.hexes[lagos.key] = lagos;
        this.map.lagosDeOroLocations = [];
    }

    generateMapHexes() {
        let hexes = {
            '0,0.5': {
                ...hexTemplate,
                x: 0,
                y: 0.5,
                terrainType: gameConstants.terrainTypes.mountains
            },
            '0,1.5': {
                ...hexTemplate,
                x: 0,
                y: 1.5,
                cataract: true,
                riverType: gameConstants.riverTypes.source,
                terrainType: gameConstants.terrainTypes.mountains
            },
            '0,2.5': {
                ...hexTemplate,
                x: 0,
                y: 2.5
            },
            '1,0': {
                ...hexTemplate,
                x: 1,
                y: 0
            },
            '1,1': {
                ...hexTemplate,
                x: 1,
                y: 1,
                riverType: gameConstants.riverTypes.swse
            },
            '1,2': {
                ...hexTemplate,
                x: 1,
                y: 2
            },
            '2,0.5': {
                ...hexTemplate,
                x: 2,
                y: 0.5
            },
            '2,1.5': {
                ...hexTemplate,
                x: 2,
                y: 1.5,
                riverType: gameConstants.riverTypes.nwne,
                terrainType: gameConstants.terrainTypes.mountains
            },
            '2,2.5': {
                ...hexTemplate,
                x: 2,
                y: 2.5
            },
            '3,0': {
                ...hexTemplate,
                x: 3,
                y: 0
            },
            '3,1': {
                ...hexTemplate,
                x: 3,
                y: 1,
                riverType: gameConstants.riverTypes.swse
            },
            '3,2': {
                ...hexTemplate,
                x: 3,
                y: 2
            },
            '4,0.5': {
                ...hexTemplate,
                x: 4,
                y: 0.5
            },
            '4,1.5': {
                ...hexTemplate,
                x: 4,
                y: 1.5,
                riverType: gameConstants.riverTypes.nwne
            },
            '4,2.5': {
                ...hexTemplate,
                x: 4,
                y: 2.5
            },
            '5,0': {
                ...hexTemplate,
                x: 5,
                y: 0
            },
            '5,1': {
                ...hexTemplate,
                x: 5,
                y: 1,
                riverType: gameConstants.riverTypes.swse
            },
            '5,2': {
                ...hexTemplate,
                x: 5,
                y: 2
            },
            '6,0.5': {
                ...hexTemplate,
                x: 6,
                y: 0.5,
                interestType: gameConstants.interestTypes.pending
            },
            '6,1.5': {
                ...hexTemplate,
                x: 6,
                y: 1.5,
                riverType: gameConstants.riverTypes.nwse
            },
            '6,2.5': {
                ...hexTemplate,
                x: 6,
                y: 2.5
            },
            '7,1': {
                ...hexTemplate,
                x: 7,
                y: 1
            },
            '7,2': {
                ...hexTemplate,
                x: 7,
                y: 2,
                riverType: gameConstants.riverTypes.nwne
            },
            '7,3': {
                ...hexTemplate,
                x: 7,
                y: 3
            },
            '8,0.5': {
                ...hexTemplate,
                x: 8,
                y: 0.5
            },
            '8,1.5': {
                ...hexTemplate,
                x: 8,
                y: 1.5,
                riverType: gameConstants.riverTypes.swne
            },
            '8,2.5': {
                ...hexTemplate,
                x: 8,
                y: 2.5
            },
            '9,0': {
                ...hexTemplate,
                x: 9,
                y: 0
            },
            '9,1': {
                ...hexTemplate,
                x: 9,
                y: 1,
                riverType: gameConstants.riverTypes.swse
            },
            '9,2': {
                ...hexTemplate,
                x: 9,
                y: 2
            },
            '10,0.5': {
                ...hexTemplate,
                x: 10,
                y: 0.5
            },
            '10,1.5': {
                ...hexTemplate,
                x: 10,
                y: 1.5,
                riverType: gameConstants.riverTypes.nwse
            },
            '10,2.5': {
                ...hexTemplate,
                x: 10,
                y: 2.5
            },
            '11,1': {
                ...hexTemplate,
                x: 11,
                y: 1
            },
            '11,2': {
                ...hexTemplate,
                x: 11,
                y: 2,
                riverType: gameConstants.riverTypes.nwne
            },
            '11,3': {
                ...hexTemplate,
                x: 11,
                y: 3
            },
            '12,0.5': {
                ...hexTemplate,
                x: 12,
                y: 0.5
            },
            '12,1.5': {
                ...hexTemplate,
                x: 12,
                y: 1.5,
                riverType: gameConstants.riverTypes.swse
            },
            '12,2.5': {
                ...hexTemplate,
                x: 12,
                y: 2.5
            },
            '13,1': {
                ...hexTemplate,
                x: 13,
                y: 1
            },
            '13,2': {
                ...hexTemplate,
                x: 13,
                y: 2,
                lagosDeOroCannotBeInitiator: true,
                riverType: gameConstants.riverTypes.nws
            },
            '13,3': {
                ...hexTemplate,
                x: 13,
                y: 3,
                lagosDeOroCannotBeInitiator: true,
                riverType: gameConstants.riverTypes.nse
            },
            '14,1.5': {
                ...hexTemplate,
                x: 14,
                y: 1.5
            },
            '14,2.5': {
                ...hexTemplate,
                x: 14,
                y: 2.5,
                lagosDeOroCannotBeInitiator: true
            },
            '14,3.5': {
                ...hexTemplate,
                x: 14,
                y: 3.5,
                lagosDeOroCannotBeInitiator: true,
                lagosDeOroCannotBeTarget: true,
                riverType: gameConstants.riverTypes.delta,
                winGame: true
            }
        };

        for (let hexKey in hexes) {
            const hex = hexes[hexKey];
            hex.key = hexKey;

            // Create new array (the above syntax has all hexes sharing the same arrays)
            hex.connections = [];

            // Build the connections
            for (let hexDirectionName in gameConstants.hexDirections) {
                if (hexDirectionName === gameConstants.hexDirections.none.name) {
                    continue;
                }

                const hexDirection = gameConstants.hexDirections[hexDirectionName];
                const neighborHexKey = (hex.x + hexDirection.dirX) + ',' + (hex.y + hexDirection.dirY);

                if (hexes[neighborHexKey]) {
                    hex.connections.push({
                        direction: hexDirectionName,
                        hexKey: neighborHexKey,
                        isDownstream: !!hex.riverType && hexDirectionName === gameConstants.riverTypesDownstreamDirections[hex.riverType]
                    });
                }
            }
        }

        return hexes;
    }

    getAdjacentTravelCandidates() {
        this.map.adjacentTravelCandidates = [];
        if (this.movementProgress < 3) {
            // No chance of moving anywhere - abort
            return;
        }

        for (let i = 0; i < this.currentHex.connections.length; ++i) {
            const connection = this.currentHex.connections[i];
            const hex = this.map.hexes[connection.hexKey];

            if (!hex.terrainType.isUnexplored && (!this.currentHex.cataract || !connection.isDownstream)) {
                const trailKey = [connection.hexKey, this.map.currentLocationKey].sort();
                const movementCost = this.map.trails[trailKey] ? 3 : 5;

                if (this.movementProgress >= movementCost) {
                    this.map.adjacentTravelCandidates.push({
                        target: connection.hexKey,
                        hexDirection: gameConstants.hexDirections[connection.direction],
                        movementCost: movementCost,
                        isDownstream: connection.isDownstream
                    });
                }
            }
        }

        if (this.map.adjacentTravelCandidates.length > 0) {
            this.map.adjacentTravelCandidates.push({
                target: this.map.currentLocationKey,
                hexDirection: gameConstants.hexDirections.none,
                movementCost: 0,
                isDownstream: false
            });
        }
    }

    getAdjacentUnmapped(baseHexKey = this.map.currentLocationKey) {
        this.map.selectableHexes = [];
        const baseHex = this.map.hexes[baseHexKey];

        for (let i = 0; i < baseHex.connections.length; ++i) {
            const hexKey = baseHex.connections[i].hexKey;
            const hex = this.map.hexes[hexKey];

            if (hex.terrainType.isUnexplored) {
                this.map.selectableHexes.push(hexKey);
            }
        }
    }

    getAvailableTrailLocations() {
        this.map.availableTrailLocations = [];

        for (let i = 0; i < this.currentHex.connections.length; ++i) {
            const connection = this.currentHex.connections[i];

            if (this.currentHex.cataract && connection.isDownstream) {
                continue;
            }

            const hex = this.map.hexes[connection.hexKey];
            if (hex.cataract && hex.connections.find(conn => conn.hexKey === this.map.currentLocationKey && conn.isDownstream)) {
                continue;
            }

            const trailKey = [connection.hexKey, this.map.currentLocationKey].sort();
            if (!this.map.trails[trailKey]) {
                this.map.availableTrailLocations.push({ key: trailKey, direction: gameConstants.hexDirections[connection.direction] });
            }
        }

        return this.map.availableTrailLocations.length > 0;
    }

    getLagosDeOroLocations() {
        switch (this.map.lagosDeOroLocations.length) {
            case 0:
                this.getLagosDeOroFirstLocations();
                break;

            case 1:
                this.getAdjacentUnmapped(this.map.lagosDeOroLocations[0]);
                break;

            case 2:
                this.getLagosDeOroThirdLocations();
                break;

            default:
                this.map.selectableHexes = [];
                this.createLagosDeOro();
                break;
        }
    }

    getLagosDeOroFirstLocations() {
        const middle = {
            x: (this.currentHex.x + 14.0) / 2,
            y: (this.currentHex.y + 3.5) / 2
        };

        let minDist = 20;
        this.map.selectableHexes = Object
            .keys(this.map.hexes)
            .filter(hexKey => this.map.hexes[hexKey].terrainType.isUnexplored)
            .map(hexKey => {
                const hex = this.map.hexes[hexKey];
                const dist = Math.sqrt((middle.x - hex.x) ** 2 + (middle.y - hex.y) ** 2);

                if (dist < minDist) {
                    minDist = dist;
                }

                return {
                    hexKey: hexKey,
                    distance: dist
                }
            })
            .filter(hexDist => hexDist.distance === minDist)
            .map(hexDist => hexDist.hexKey);
    }

    getLagosDeOroThirdLocations() {
        this.map.lagosDeOroLocations.sort();

        const a = this.map.hexes[this.map.lagosDeOroLocations[0]];
        const b = this.map.hexes[this.map.lagosDeOroLocations[1]];

        let selectableHexes;
        if (a.x === b.x) {
            const y = (a.y + b.y) / 2;
            selectableHexes = [
                (a.x - 1) + ',' + y,
                (a.x + 1) + ',' + y
            ];
        } else if (a.y < b.y) {
            selectableHexes = [
                a.x + ',' + (a.y + 1),
                b.x + ',' + (b.y - 1)
            ];
        } else {
            selectableHexes = [
                a.x + ',' + (a.y - 1),
                b.x + ',' + (b.y + 1)
            ];
        }

        this.map.selectableHexes = selectableHexes.filter(hexKey => this.map.hexes[hexKey] && this.map.hexes[hexKey].terrainType.isUnexplored);
    }
}