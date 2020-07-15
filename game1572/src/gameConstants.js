import React from 'react';

export const diceTrayModes = {
    empty: 'empty',
    preroll: 'preroll',
    rolling: 'rolling',
    postroll: 'postroll',
    confirmed: 'confirmed'
};

export const expeditionTypes = {
    1: {
        id: 1,
        label: 'Cartography',
        description: 'You may place a trail once per hex if you end Phase 12 of your turn with 3 or more Movement Progress.',
        placeTrail: true
    },
    2: {
        id: 2,
        label: 'Botany',
        description: 'You are immune to fever icons. Add 1 to your Hunting Score total (you are foraging instead).',
        immuneToFever: true,
        huntingBonus: 1
    },
    3: {
        id: 3,
        label: 'Military',
        description: 'Add 2 to your score when you use a Musket.',
        musketBonus: 2
    },
    4: {
        id: 4,
        label: 'Archeology',
        description: 'Trails will always lead to an interest in the next hex if the terrain is different than your current hex.',
        trailLeadsToInterestOnTerrainChange: true
    },
    5: {
        id: 5,
        label: 'Religious',
        description: 'All villages are peaceful villages (but not the empire).',
        allVillagesPeaceful: true
    },
    6: {
        id: 6,
        label: 'Doctor',
        description: 'Two or more WILDs break the Fever. Death Icons remove Food instead of Conquistadors.',
        wildAdjust: -1,
        deathRemovesFood: true
    }
}

export const interestTypes = {
    diegoMendoza: {
        label: 'Deigo Mendoza',
        description: 'Gain 1 Conquistador and 1 Musket. You may add 1 to a total once per turn whenever rolling on Phases 2-7. This effect persists until the end of the game.'
    },
    lagosDeOro: {
        label: 'Lagos De Oro',
        description: 'Create a 3-hex lake halfway between your current location and the River Delta. The 3 hexes must all be adjacent to each other. Then indicate a tiny island at the corner where the three hexes meet. The three hexes count as 1 hex for all purposes.You are immune to Fever while at Lagos De Oro.'
    },
    migration: {
        label: 'Migration',
        description: 'Skip the Ration Phase while in and adjacent to this hex. You may expend 1 musket to fill your Food reserves to 6.'
    },
    naturalWonder: {
        label: 'Natural Wonder',
        description: 'Add 5 to you current Morale. Add 2 to your end game Victory Points if you win (for each Natural Wonder discovered). Describe this Natural Wonder in detail in your journal.'
    },
    pending: {},
    predictEclipse: {
        label: 'Predict Eclipse',
        description: 'The next two times you roll on the Native Contact Chart, choose any result instead of rolling.'
    },
    princessKantyi: {
        label: 'Princess Kantyi',
        description: 'Reroll 1s and 2s on either/both dice whenever rolling on the Native Contact Chart. This effect persists until the end of the game.'
    },
    ruinedMission: {
        label: 'Ruined Mission',
        description: 'You find a crate of Muskets. Gain 5 Muskets. Add a Trail to any adjacent hex.'
    }
}

export const terrainTypes = {
    forest: {
        hunting: 1,
        draw(x, y) {
            const baseX = x + 24;
            const treeY = y + 37;
            const lineHeight = 20;
            const treeRadius = 8;

            let trees = [];
            for (let i = 0; i < 3; ++i) {
                const treeX = baseX + i * 18;
                trees.push(<line key={"TER-" + x + "-" + y + "-l-" + i} x1={treeX} y1={treeY} x2={treeX} y2={treeY + lineHeight} />);
                trees.push(<circle key={"TER-" + x + "-" + y + "-c-" + i} cx={treeX} cy={treeY - treeRadius} r={treeRadius} />);
            }

            return <g key={"TER-" + x + "-" + y} stroke="black" strokeWidth="1" fill="transparent">
                {trees}
            </g>;
        }
    },
    hills: {
        movementProgress: -1,
        nativeContact: 1,
        draw(x, y) {
            const offsets = [
                { x: 17, y: 38 },
                { x: 43, y: 38 },
                { x: 30, y: 56 }
            ];
            const hillRadius = 25;

            let hills = [];
            for (let i = 0; i < 3; ++i) {
                const hillX = x + offsets[i].x;
                const hillY = y + offsets[i].y;
                const path = 'M ' + hillX + ' ' + hillY +
                    ' C ' + hillX + ' ' + (hillY - hillRadius) + ', ' +
                    (hillX + hillRadius) + ' ' + (hillY - hillRadius) + ', ' +
                    (hillX + hillRadius) + ' ' + hillY;
                hills.push(<path key={"TER-" + x + "-" + y + "-" + i} d={path} />);
            }

            return <g key={"TER-" + x + "-" + y} stroke="black" strokeWidth="1" fill="transparent">
                {hills}
            </g>;
        }
    },
    jungle: {
        movementProgress: -1,
        exploring: -1,
        draw(x, y) {
            const baseX = x + 29;
            const baseY = y + 28;
            const lineHeight = 25;
            const branchWidth = 10;
            const branchHeight = 8;

            let trees = [];
            for (let i = 0; i < 2; ++i) {
                const treeX = baseX + i * 25;
                const treeY = baseY + i * 5;
                trees.push(<line key={"TER-" + x + "-" + y + "-l1-" + i} x1={treeX} y1={treeY} x2={treeX} y2={treeY + lineHeight} />);
                trees.push(<line key={"TER-" + x + "-" + y + "-l2-" + i} x1={treeX - branchWidth} y1={treeY + branchHeight} x2={treeX + branchWidth} y2={treeY - branchHeight} />);
                trees.push(<line key={"TER-" + x + "-" + y + "-l3-" + i} x1={treeX - branchWidth} y1={treeY - branchHeight} x2={treeX + branchWidth} y2={treeY + branchHeight} />);
            }

            return <g key={"TER-" + x + "-" + y} stroke="black" strokeWidth="1" fill="transparent">
                {trees}
            </g>;
        }
    },
    lake: {
        movementProgress: 1,
        noVillages: true,
        draw(x, y) {
            const waveWidth = 6;
            const waveHeight = 3;
            const lakeRadius = 31;

            let parts = [];
            parts.push(<circle key={"TER-" + x + "-" + y + "-c"} cx={x + 42} cy={y + 37} r={lakeRadius} />);
            for (let i = 0; i < 3; ++i) {
                const waveX = x + 29 + i * 13;
                const waveY = y + 10 + (i === 0 ? 3 : i) * 12;
                parts.push(<line key={"TER-" + x + "-" + y + "-l1-" + i} x1={waveX - waveWidth} y1={waveY + waveHeight} x2={waveX} y2={waveY} />);
                parts.push(<line key={"TER-" + x + "-" + y + "-l2-" + i} x1={waveX} y1={waveY} x2={waveX + waveWidth} y2={waveY + waveHeight} />);
            }

            return <g key={"TER-" + x + "-" + y} stroke="black" strokeWidth="1" fill="transparent">
                {parts}
            </g>;
        }
    },
    mountains: {
        movementProgress: -1,
        hunting: 1,
        draw(x, y) {
            const mt1 = (x + 12) + ',' + (y + 44) + ' ' + (x + 30) + ',' + (y + 8) + ' ' + (x + 45) + ',' + (y + 55);
            const mt2 = (x + 40) + ',' + (y + 34) + ' ' + (x + 50) + ',' + (y + 13) + ' ' + (x + 67) + ',' + (y + 55);
            return <g key={"TER-" + x + "-" + y} stroke="black" strokeWidth="1" fill="transparent">
                <polyline key={"TER-" + x + "-" + y + "-0"} points={mt1} />
                <polyline key={"TER-" + x + "-" + y + "-1"} points={mt2} />
            </g>;
        }
    },
    plains: {
        movementProgress: 1,
        draw(x, y) {
            const baseX = x + 20;
            const baseY = y + 25;
            const lineWidth = 20;

            let lines = [];
            for (let i = 0; i < 3; ++i) {
                const lineX = baseX + i * 10;
                const lineY = baseY + i * 15;
                lines.push(<line key={"TER-" + x + "-" + y + "-" + i} x1={lineX} y1={lineY} x2={lineX + lineWidth} y2={lineY} />);
            }

            return <g key={"TER-" + x + "-" + y} stroke="black" strokeWidth="1">
                {lines}
            </g>;
        }
    },
    swamp: {
        movementProgress: -1,
        cannotBreakFever: true,
        draw(x, y) {
            const plantWidth = 8;
            const plantHeight = 8;

            let plants = [];
            for (let i = 0; i < 2; ++i) {
                const plantX = x + 29 + i * 25;
                const plantY = y + 32 + i * 5;
                plants.push(<line key={"TER-" + x + "-" + y + "-l0-" + i} x1={plantX} y1={plantY - plantHeight} x2={plantX} y2={plantY + plantHeight} />);
                plants.push(<line key={"TER-" + x + "-" + y + "-l1-" + i} x1={plantX - plantWidth} y1={plantY + plantHeight + 1} x2={plantX + plantWidth} y2={plantY + plantHeight + 1} />);
                plants.push(<line key={"TER-" + x + "-" + y + "-l2-" + i} x1={plantX - plantWidth} y1={plantY} x2={plantX} y2={plantY + plantHeight} />);
                plants.push(<line key={"TER-" + x + "-" + y + "-l3-" + i} x1={plantX} y1={plantY + plantHeight} x2={plantX + plantWidth} y2={plantY} />);
            }

            return <g key={"TER-" + x + "-" + y} stroke="black" strokeWidth="1" fill="transparent">
                {plants}
            </g>;
        }
    },
    unexplored: {},
}