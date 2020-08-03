export const diceTrayModes = {
    empty: 'empty',
    preroll: 'preroll',
    rolling: 'rolling',
    rerollAll: 'rerollAll',
    rerollPartial: 'rerollPartial',
    postroll: 'postroll',
    confirmed: 'confirmed'
};

export const diceTrayInstructions = {
    expeditionType: 'Roll to determine Expedition Type'
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

export const hexSides = {
    northwest: { name: 'northwest' },
    north: { name: 'north' },
    northeast: { name: 'northeast' },
    southeast: { name: 'southeast' },
    south: { name: 'south' },
    southwest: { name: 'southwest' }
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

const hexWidth = 80;
const hexHeight = 70;

export const map = {
    cols: 15,
    rows: 4.5,
    hexPad: 2,
    hexWidth: hexWidth,
    hexHeight: hexHeight,
    renderViewBox: '0 0 80 70',
    hexPoints: [
        { x: 0, y: hexHeight / 2 },
        { x: hexWidth / 4, y: 0 },
        { x: hexWidth * 3 / 4, y: 0 },
        { x: hexWidth, y: hexHeight / 2 },
        { x: hexWidth * 3 / 4, y: hexHeight },
        { x: hexWidth / 4, y: hexHeight },
    ]
}

export const riverTypes = {
    delta: {
        name: 'delta',
        downstream: hexSides.south
    },
    source: {
        name: 'source',
        downstream: hexSides.northeast
    },
    swse: {
        name: 'swse',
        downstream: hexSides.southeast
    },
    swne: {
        name: 'swne',
        downstream: hexSides.northeast
    },
    nse: {
        name: 'nse',
        downstream: hexSides.southeast
    },
    nwne: {
        name: 'nwne',
        downstream: hexSides.northeast
    },
    nws: {
        name: 'nws',
        downstream: hexSides.south
    },
    nwse: {
        name: 'nwse',
        downstream: hexSides.southeast
    }
}

export const terrainTypes = {
    forest: {
        name: 'forest',
        hunting: 1
    },
    hills: {
        name: 'hills',
        movementProgress: -1,
        nativeContact: 1
    },
    jungle: {
        name: 'jungle',
        movementProgress: -1,
        exploring: -1
    },
    lake: {
        name: 'lake',
        movementProgress: 1,
        noVillages: true
    },
    mountains: {
        name: 'mountains',
        movementProgress: -1,
        hunting: 1
    },
    plains: {
        name: 'plains',
        movementProgress: 1
    },
    swamp: {
        name: 'swamp',
        movementProgress: -1,
        cannotBreakFever: true
    },
    unexplored: {
        name: 'unexplored'
    }
}