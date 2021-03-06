import React from 'react';
import { FeatureDefs } from './patterns/FeatureDefs';
import { RiverDefs } from './patterns/RiverDefs';
import { TerrainDefs } from './patterns/TerrainDefs';
import * as gameConstants from '../gameConstants';

export class Map extends React.Component {
    generateAdjacentTrailOptions(key, xBase, yBase, shapes) {
        if (key === this.props.mapData.currentLocationKey && this.props.mapData.availableTrailLocations.length > 0) {
            for (let t = 0; t < this.props.mapData.availableTrailLocations.length; ++t) {
                const availableTrailLocation = this.props.mapData.availableTrailLocations[t];
                const trailDirection = availableTrailLocation.direction;
                shapes.push(<g key={'ATRL-' + trailDirection.name} className="highlightTrail">
                    <rect x={xBase + trailDirection.pX - 8} y={yBase + trailDirection.pY - 12} width="16" height="24" className="hl"
                        transform={'rotate(' + trailDirection.rotationDegrees + ', ' + (xBase + trailDirection.pX) + ', ' + (yBase + trailDirection.pY) + ')'} />
                    <use href="#trail" className="highlightTrail" cursor="pointer" pointerEvents="visible" opacity="0.5"
                        transform={'translate(' + (xBase + trailDirection.pX - gameConstants.map.trail.rX) + ', ' + (yBase + trailDirection.pY - gameConstants.map.trail.rY) + ') ' +
                            'rotate(' + trailDirection.rotationDegrees + ', ' + gameConstants.map.trail.rX + ', ' + gameConstants.map.trail.rY + ')'}
                        onClick={() => this.props.onTrailClick(availableTrailLocation.key, trailDirection)} />
                </g>);
            }
        }
    }

    generateAdvancedCivBorder(hex, xBase, yBase, shapes) {
        if (!hex.advancedCiv) {
            return;
        }

        for (let hexDirectionKey in gameConstants.hexDirections) {
            if (hexDirectionKey === gameConstants.hexDirections.none.name) {
                continue;
            }

            const hexDirection = gameConstants.hexDirections[hexDirectionKey];
            const neighborHexKey = (hex.x + hexDirection.dirX) + ',' + (hex.y + hexDirection.dirY);

            if (!this.props.mapData.hexes[neighborHexKey] || !this.props.mapData.hexes[neighborHexKey].advancedCiv) {
                shapes.push(<use href="#border" key={'BORD-' + hex.key + '-' + hexDirection.name} data={'BORD-' + hex.key + '-' + hexDirection.name}
                    transform={'translate(' + (xBase + hexDirection.pX - gameConstants.map.border.rX + hexDirection.pOffX) + ', ' +
                        (yBase + hexDirection.pY - gameConstants.map.border.rY + hexDirection.pOffY) + ') ' +
                        'rotate(' + hexDirection.rotationDegrees + ', ' + gameConstants.map.border.rX + ', ' + gameConstants.map.border.rY + ')'} />);
            }
        }
    }

    generateCataract(hex, xBase, yBase, shapes) {
        if (hex.cataract) {
            const direction = gameConstants.hexDirections[hex.connections.find(conn => conn.isDownstream).direction];
            shapes.push(<use href="#cataract" key={'CAT-' + hex.key}
                transform={'translate(' + (xBase + direction.pX - gameConstants.map.cataract.rX) + ', ' + (yBase + direction.pY - gameConstants.map.cataract.rY) + ') ' +
                    'rotate(' + direction.rotationDegrees + ', ' + gameConstants.map.cataract.rX + ', ' + gameConstants.map.cataract.rY + ')'} />);
        }
    }

    generateHexBase(hex, xBase, yBase, shapes) {
        const stroke = hex.key === this.props.mapData.currentLocationKey ? 'red' : 'black';
        shapes.push(<use href={'#Terrain.' + hex.terrainType.name + hex.terrainType.suffix} key={'HEX-' + hex.key}
            transform={'translate(' + xBase + ', ' + yBase + ')'} stroke={stroke} />);
    }

    generateHexFeature(hex, xBase, yBase, feature, keyPrefix, v, r, offset, shapes) {
        shapes.push(<use href={'#' + feature} key={keyPrefix + '-' + hex.key + '-' + v} stroke="black"
            transform={'translate(' + (xBase + offset.pX - r) + ', ' + (yBase + offset.pY - r) + ')'} />);
    }

    generateHexFeatures(hex, xBase, yBase, shapes) {
        const featureSpots = gameConstants.villageInterestOffsets.length;

        let v = 0;
        for (; v < featureSpots && v < hex.villages; ++v) {
            this.generateHexFeature(hex, xBase, yBase, 'village', 'VIL', v, 2, gameConstants.villageInterestOffsets[v], shapes);
        }
        for (; v < featureSpots && v < hex.villages + hex.friendlyVillages; ++v) {
            this.generateHexFeature(hex, xBase, yBase, 'friendlyVillage', 'FVIL', v, 3, gameConstants.villageInterestOffsets[v], shapes);
        }
        const interestCount = hex.interestType.isNone ? 0 : 1;
        for (; v < featureSpots && v < hex.villages + hex.friendlyVillages + interestCount; ++v) {
            this.generateHexFeature(hex, xBase, yBase, 'interest', 'INT', v, 6, gameConstants.villageInterestOffsets[v], shapes);
        }
    }

    generateHighlight(key, xBase, yBase, shapes) {
        const hlTravel = this.props.mapData.adjacentTravelCandidates.find(adj => adj.target === key);
        const lagosDeOroLoc = this.props.mapData.lagosDeOroLocations.includes(key);

        if (hlTravel || this.props.mapData.selectableHexes.includes(key) || lagosDeOroLoc) {
            shapes.push(<g key={'HL-' + key} cursor="pointer" pointerEvents="visible" onClick={() => this.props.onHexClick(key)}>
                <use href="#hex" className={'highlightHex' + (lagosDeOroLoc ? '2' : '')} transform={'translate(' + xBase + ', ' + yBase + ')'} />
                {hlTravel
                    ? <title>Movement Cost: {hlTravel.movementCost}, Morale Adjustment: {hlTravel.hexDirection.moraleAdjustment}</title>
                    : lagosDeOroLoc
                        ? <title>Deselect this Hex</title>
                        : <title>Map this Hex?</title>}
            </g>);
        }
    }

    generatePath(shapes) {
        let x2 = undefined, y2 = undefined;
        for (let i = 0; i < this.props.mapData.path.length; ++i) {
            const hex = this.props.mapData.hexes[this.props.mapData.path[i]];

            const x1 = hex.x * gameConstants.map.hexDrawWidth + gameConstants.map.hexPad + gameConstants.map.pathNode.pX;
            const y1 = hex.y * gameConstants.map.hexHeight + gameConstants.map.hexPad + gameConstants.map.pathNode.pY;
            shapes.push(<use href="#pathNode" key={'PATH-NODE-' + hex.key}
                transform={'translate(' + (x1 - gameConstants.map.pathNode.rX) + ', ' + (y1 - gameConstants.map.pathNode.rY) + ')'} />);

            if (x2) {
                shapes.push(<line key={'PATH-LINE-' + hex.key} x1={x1} y1={y1} x2={x2} y2={y2} stroke="red" strokeWidth="4" />);
            }

            x2 = x1;
            y2 = y1;
        }
    }

    generateRiver(hex, xBase, yBase, shapes) {
        if (hex.riverType && !hex.terrainType.isWater) {
            shapes.push(<use href={'#River.' + hex.riverType} key={'RIVER-' + hex.key} transform={'translate(' + xBase + ', ' + yBase + ')'} />);
        }
    }

    generateShapesForHex(hexKey, hexShapes, crossHexFeatureShapes, highlightShapes) {
        const hex = this.props.mapData.hexes[hexKey];
        const xBase = hex.x * gameConstants.map.hexDrawWidth + gameConstants.map.hexPad;
        const yBase = hex.y * gameConstants.map.hexHeight + gameConstants.map.hexPad;

        this.generateHexBase(hex, xBase, yBase, hexShapes);

        this.generateRiver(hex, xBase, yBase, hexShapes);
        this.generateCataract(hex, xBase, yBase, crossHexFeatureShapes);
        this.generateHexFeatures(hex, xBase, yBase, hexShapes);
        this.generateAdvancedCivBorder(hex, xBase, yBase, hexShapes);

        this.generateHighlight(hexKey, xBase, yBase, highlightShapes);
        this.generateAdjacentTrailOptions(hexKey, xBase, yBase, highlightShapes);
    }

    generateTrails(shapes) {
        for (let trailKey in this.props.mapData.trails) {
            const trailDirection = this.props.mapData.trails[trailKey].direction;
            const hex = this.props.mapData.hexes[this.props.mapData.trails[trailKey].hexKey];

            shapes.push(<use href="#trail" key={'TRL-' + trailKey}
                transform={'translate(' + (hex.x * gameConstants.map.hexDrawWidth + trailDirection.pX + gameConstants.map.hexPad - gameConstants.map.trail.rX) + ', ' +
                    (hex.y * gameConstants.map.hexHeight + trailDirection.pY + gameConstants.map.hexPad - gameConstants.map.trail.rY) + ') ' +
                    'rotate(' + trailDirection.rotationDegrees + ', ' + gameConstants.map.trail.rX + ', ' + gameConstants.map.trail.rY + ')'} />);
        }
    }

    render() {
        let hexShapes = [];
        let crossHexFeatureShapes = [];
        let highlightShapes = [];

        for (let hexKey in this.props.mapData.hexes) {
            if (hexKey === this.props.mapData.currentLocationKey) {
                // Do current hex last so red border isn't covered up.
                continue;
            }

            this.generateShapesForHex(hexKey, hexShapes, crossHexFeatureShapes, highlightShapes);
        }
        this.generateShapesForHex(this.props.mapData.currentLocationKey, hexShapes, crossHexFeatureShapes, highlightShapes);

        this.generateTrails(crossHexFeatureShapes);

        this.generatePath(crossHexFeatureShapes);

        return (
            <div className="map">
                <svg width={gameConstants.map.hexDrawWidth * (gameConstants.map.cols - 1) + gameConstants.map.hexWidth + gameConstants.map.hexPad * 2}
                    height={gameConstants.map.hexHeight * (gameConstants.map.rows) + gameConstants.map.hexPad * 2}>
                    <defs>
                        <FeatureDefs />
                        <TerrainDefs />
                        <RiverDefs />
                    </defs>
                    {hexShapes}
                    {crossHexFeatureShapes}
                    {highlightShapes}
                </svg>
            </div>
        );
    }
}
