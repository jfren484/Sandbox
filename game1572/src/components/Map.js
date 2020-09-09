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
                const trailOffset = availableTrailLocation.offset;
                shapes.push(<g key={'ATRL-' + trailOffset.key} className="highlightTrail">
                    <rect x={xBase + trailOffset.pX - 8} y={yBase + trailOffset.pY - 12} width="16" height="24" className="hl"
                        transform={'rotate(' + trailOffset.rotate + ', ' + (xBase + trailOffset.pX) + ', ' + (yBase + trailOffset.pY) + ')'} />
                    <use href="#trail" className="highlightTrail" cursor="pointer" pointerEvents="visible" opacity="0.5"
                        transform={'translate(' + (xBase + trailOffset.pX - gameConstants.map.trail.rX) + ', ' + (yBase + trailOffset.pY - gameConstants.map.trail.rY) + ') ' +
                            'rotate(' + trailOffset.rotate + ', ' + gameConstants.map.trail.rX + ', ' + gameConstants.map.trail.rY + ')'}
                        onClick={() => this.props.onTrailClick(availableTrailLocation.key, trailOffset)} />
                </g>);
            }
        }
    }

    generateAdvancedCivBorder(hex, xBase, yBase, shapes) {
        if (!hex.advancedCiv) {
            return;
        }

        for (let hexNeighborOffsetKey in gameConstants.hexNeighborOffsets) {
            const hexNeighborOffset = gameConstants.hexNeighborOffsets[hexNeighborOffsetKey];
            const neighborHexKey = (hex.x + hexNeighborOffset.x) + ',' + (hex.y + hexNeighborOffset.y);

            if (!this.props.mapData.hexes[neighborHexKey] || !this.props.mapData.hexes[neighborHexKey].advancedCiv) {
                shapes.push(<use href="#border" key={'BORD-' + hex.key + '-' + hexNeighborOffset.key}
                    transform={'translate(' + (xBase + hexNeighborOffset.pX - gameConstants.map.border.rX) + ', ' +
                        (yBase + hexNeighborOffset.pY - gameConstants.map.border.rY) + ') ' +
                        'rotate(' + hexNeighborOffset.rotate + ', ' + gameConstants.map.border.rX + ', ' + gameConstants.map.border.rY + ')'} />);
            }
        }
    }

    generateCataract(hex, xBase, yBase, shapes) {
        if (hex.cataract) {
            const offset = gameConstants.hexNeighborOffsets[hex.riverType.downstream.name];
            shapes.push(<use href="#cataract" key={'CAT-' + hex.key}
                transform={'translate(' + (xBase + offset.pX - gameConstants.map.cataract.rX) + ', ' + (yBase + offset.pY - gameConstants.map.cataract.rY) + ') ' +
                    'rotate(' + offset.rotate + ', ' + gameConstants.map.cataract.rX + ', ' + gameConstants.map.cataract.rY + ')'} />);
        }
    }

    generateHexBase(hex, xBase, yBase, shapes) {
        const stroke = hex.key === this.props.mapData.currentLocationKey ? 'red' : 'black';
        shapes.push(<use href={'#Terrain.' + hex.terrainType.name} key={'HEX-' + hex.key} transform={'translate(' + xBase + ', ' + yBase + ')'} stroke={stroke} />);
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
        for (; v < featureSpots && v < hex.villages + hex.friendlyVillages + hex.interests.length; ++v) {
            this.generateHexFeature(hex, xBase, yBase, 'interest', 'INT', v, 6, gameConstants.villageInterestOffsets[v], shapes);
        }
    }

    generateHighlight(key, xBase, yBase, shapes) {
        const hlTravel = this.props.mapData.adjacentTravelCandidates.find(adj => adj.target === key);
        if (hlTravel || this.props.mapData.adjacentUnmappedHexes.includes(key)) {
            shapes.push(<g key={'HL-' + key} cursor="pointer" pointerEvents="visible" onClick={() => this.props.onHexClick(key)}>
                <use href="#hex" className="highlightHex" transform={'translate(' + xBase + ', ' + yBase + ')'} />
                {hlTravel
                    ? <title>Movement Cost: {hlTravel.movementCost}, Morale Adjustment: {hlTravel.hexDirection.moraleAdjustment}</title>
                    : <title>Map this Hex?</title>}
            </g>);
        }
    }

    generateRiver(hex, xBase, yBase, shapes) {
        if (hex.riverType && !hex.terrainType.isWater) {
            shapes.push(<use href={'#River.' + hex.riverType.name} key={'RIVER-' + hex.key} transform={'translate(' + xBase + ', ' + yBase + ')'} />);
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
            const trailOffset = this.props.mapData.trails[trailKey].offset;
            const hex = this.props.mapData.hexes[this.props.mapData.trails[trailKey].hexKey];

            shapes.push(<use href="#trail" key={'TRL-' + trailKey}
                transform={'translate(' + (hex.x * gameConstants.map.hexDrawWidth + trailOffset.pX + gameConstants.map.hexPad - gameConstants.map.trail.rX) + ', ' +
                    (hex.y * gameConstants.map.hexHeight + trailOffset.pY + gameConstants.map.hexPad - gameConstants.map.trail.rY) + ') ' +
                    'rotate(' + trailOffset.rotate + ', ' + gameConstants.map.trail.rX + ', ' + gameConstants.map.trail.rY + ')'} />);
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
