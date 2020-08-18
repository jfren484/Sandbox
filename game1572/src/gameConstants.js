export const diceTrayModes = {
    empty: 'empty',
    preroll: 'preroll',
    rolling: 'rolling',
    rerollAll: 'rerollAll',
    rerollPartial: 'rerollPartial',
    rerolling: 'rerolling',
    postroll: 'postroll',
    confirmed: 'confirmed'
};

export const diceTrayTitles = {
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
        description: 'Two or more WILDs break a Fever. Death Icons remove Food instead of Conquistadors.',
        wildAdjust: -1,
        deathRemovesFood: true
    }
}

export const gamePhases = {
    planning: {
        index: 1,
        label: 'Planning',
        instructions: 'You set your sights downstream and start the day anew. What adventures or tragedies lie ahead, you know not.'
    },
    movement: {
        index: 2,
        label: 'Movement',
        instructions: 'The only way to get out of this is to keep moving. In this environment sloth is more than a deadly sin, it\'s a deadly consequence.'
    },
    mapping: {
        index: 3,
        label: 'Mapping',
        instructions: 'From this vista point you can clearly see the lands below. You take a moment to admire the natural beauty before you get back to your map.'
    },
    exploring: {
        index: 4,
        label: 'Exploring',
        instructions: 'There has to be something of use in this wilderness.'
    },
    nativeContact: {
        index: 5,
        label: 'Native Contact',
        instructions: 'They have been trailing you for miles. You realize that there\'s no way to outdistance them, so you approach to parley.'
    },
    hunting: {
        index: 6,
        label: 'Hunting',
        instructions: 'The creatures of this land are exotic and voracious. What really makes them dangerous is that they have no fear of man.'
    },
    interests: {
        index: 7,
        label: 'Interests',
        instructions: ''
    },
    eatRations: {
        index: 8,
        label: 'Eat Rations',
        instructions: 'Only one meal a day. You know that with fewer people you\'ll be able to eat better. That thought has become more frequent — and more enticing — over the past few days...'
    },
    mapTravel: {
        index: 9,
        label: 'Map Travel',
        instructions: 'You catch a glimpse of the Atlantic off in the distance, closer now.'
    },
    moraleAdjustment: {
        index: 10,
        label: 'Morale Adjustment',
        instructions: 'Only by the grace of God will we survive.'
    },
    trackDay: {
        index: 11,
        label: 'Track Day',
        instructions: 'The Trade Winds will die down at the end of the season and there won\'t be any ships until next year.'
    },
    journalEntry: {
        index: 12,
        label: 'Journal Entry',
        instructions: ''
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