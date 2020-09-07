import React from 'react';

export class TerrainDefs extends React.Component {
    render() {
        return (
            <g id="TerrainDefs">
                <g id="Terrain.Forest">
                    <use href="#hex" strokeWidth="2" fill="seagreen" />

                    <use href="#tree" transform="translate(14, 14)" />
                    <use href="#tree" transform="translate(32, 9)" />
                    <use href="#tree" transform="translate(50, 14)" />
                </g>
                <g id="Terrain.Hills">
                    <use href="#hex" strokeWidth="2" fill="antiquewhite" />

                    <use href="#hill" transform="translate(14, 15)" stroke="saddlebrown" />
                    <use href="#hill" transform="translate(42, 15)" stroke="saddlebrown" />
                    <use href="#hill" transform="translate(28, 33)" stroke="saddlebrown" />
                </g>
                <g id="Terrain.Jungle">
                    <use href="#hex" strokeWidth="2" fill="yellowgreen" />

                    <use href="#palm" transform="translate(17, 18)" />
                    <use href="#palm" transform="translate(42, 23)" />
                </g>
                <g id="Terrain.LagosDeOro">
                    <use href="#threeHexRegion" stroke="black" strokeWidth="2" fill="lightskyblue" />

                    <use href="#wave" transform="translate(33, 22)" stroke="white" />
                    <use href="#wave" transform="translate(19, 38)" stroke="white" />
                    <use href="#wave" transform="translate(49, 34)" stroke="white" />
                    <use href="#wave" transform="translate(30, 55)" stroke="white" />

                    <use href="#wave" transform="translate(26, 81)" stroke="white" />
                    <use href="#wave" transform="translate(43, 97)" stroke="white" />
                    <use href="#wave" transform="translate(20, 108)" stroke="white" />
                    <use href="#wave" transform="translate(44, 118)" stroke="white" />

                    <use href="#wave" transform="translate(68, 46)" stroke="white" />
                    <use href="#wave" transform="translate(93, 54)" stroke="white" />
                    <use href="#wave" transform="translate(78, 66)" stroke="white" />
                    <use href="#wave" transform="translate(109, 69)" stroke="white" />
                    <use href="#wave" transform="translate(90, 83)" stroke="white" />
                    <use href="#wave" transform="translate(68, 89)" stroke="white" />

                    <use href="#island" transform="translate(43, 58) scale(0.006)" stroke="black" strokeWidth="70" fill="antiquewhite" />
                </g>
                <g id="Terrain.Lake">
                    <use href="#hex" strokeWidth="2" fill="lightskyblue" />

                    <use href="#wave" transform="translate(23, 44)" stroke="white" />
                    <use href="#wave" transform="translate(33, 22)" stroke="white" />
                    <use href="#wave" transform="translate(49, 34)" stroke="white" />
                </g>
                <g id="Terrain.Mountains">
                    <use href="#hex" strokeWidth="2" fill="lightgray" />

                    <polyline points="10,42 28,6 43,53" fill="none" stroke="black" />
                    <polyline points="39,32 48,11 65,53" fill="none" stroke="black" />
                </g>
                <g id="Terrain.Plains">
                    <use href="#hex" strokeWidth="2" fill="lightgreen" />

                    <use href="#grass" transform="translate(18, 20)" stroke="darkgreen" />
                    <use href="#grass" transform="translate(28, 35)" stroke="darkgreen" />
                    <use href="#grass" transform="translate(38, 50)" stroke="darkgreen" />
                </g>
                <g id="Terrain.Swamp">
                    <use href="#hex" strokeWidth="2" fill="peru" />

                    <use href="#bush" transform="translate(19, 22)" stroke="brown" />
                    <use href="#bush" transform="translate(44, 27)" stroke="brown" />
                </g>
                <g id="Terrain.Unexplored">
                    <use href="#hex" strokeWidth="2" fill="white" />
                </g>
            </g>
        );
    }
}