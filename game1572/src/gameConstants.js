const hexWidth = 80;
const hexHeight = 70;

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

export const digitWords = ['zero', 'one', 'two', 'three', 'four', 'five', 'six'];

const expeditionTypeTemplate = {
    allVillagesPeaceful: false,
    deathRemovesFood: false,
    immuneToFever: false,
    huntingBonus: 0,
    musketBonus: 0,
    placeTrail: false,
    trailLeadsToInterestOnTerrainChange: false,
    wildAdjust: 0
}
export const expeditionTypes = {
    1: {
        ...expeditionTypeTemplate,
        id: 1,
        label: 'Cartography',
        description: 'You may place a trail once per hex if you end Phase 12 of your turn with 3 or more Movement Progress.',
        placeTrail: true
    },
    2: {
        ...expeditionTypeTemplate,
        id: 2,
        label: 'Botany',
        description: 'You are immune to fever icons. Add 1 to your Hunting Score total (you are foraging instead).',
        immuneToFever: true,
        huntingBonus: 1
    },
    3: {
        ...expeditionTypeTemplate,
        id: 3,
        label: 'Military',
        description: 'Add 2 to your score when you use a Musket.',
        musketBonus: 2
    },
    4: {
        ...expeditionTypeTemplate,
        id: 4,
        label: 'Archeology',
        description: 'Trails will always lead to an interest in the next hex if the terrain is different than your current hex.',
        trailLeadsToInterestOnTerrainChange: true
    },
    5: {
        ...expeditionTypeTemplate,
        id: 5,
        label: 'Religious',
        description: 'All villages are peaceful villages (but not advanced civilizations).',
        allVillagesPeaceful: true
    },
    6: {
        ...expeditionTypeTemplate,
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
        key: 'planning',
        label: 'Planning',
        instructions: 'You set your sights downstream and start the day anew. What adventures or tragedies lie ahead, you know not.',
        nextPhase: 'movement'
    },
    movement: {
        index: 2,
        key: 'movement',
        label: 'Movement',
        instructions: 'The only way to get out of this is to keep moving. In this environment sloth is more than a deadly sin, it\'s a deadly consequence.',
        canReroll: true,
        nextPhase: 'mapping'
    },
    mapping: {
        index: 3,
        key: 'mapping',
        label: 'Mapping',
        instructions: 'From this vista point you can clearly see the lands below. You take a moment to admire the natural beauty before you get back to your map.',
        canReroll: false,
        nextPhase: 'exploring'
    },
    exploring: {
        index: 4,
        key: 'exploring',
        label: 'Exploring',
        instructions: 'There has to be something of use in this wilderness.',
        canReroll: true,
        friendlyVillagesHelp: true,
        nextPhase: 'nativeContact'
    },
    nativeContact: {
        index: 5,
        key: 'nativeContact',
        label: 'Native Contact',
        instructions: 'They have been trailing you for miles. You realize that there\'s no way to outdistance them, so you approach to parley.',
        canReroll: true,
        nextPhase: 'hunting'
    },
    hunting: {
        index: 6,
        key: 'hunting',
        label: 'Hunting',
        instructions: 'The creatures of this land are exotic and voracious. What really makes them dangerous is that they have no fear of man.',
        canReroll: true,
        friendlyVillagesHelp: true,
        nextPhase: 'interests'
    },
    interests: {
        index: 7,
        key: 'interests',
        label: 'Interests',
        instructions: 'You come across strange painted images that appears to hold clues describing the location of something very interesting.',
        canReroll: false,
        nextPhase: 'eatRations'
    },
    eatRations: {
        index: 8,
        key: 'eatRations',
        label: 'Eat Rations',
        instructions: 'Only one meal a day. You know that with fewer people you\'ll be able to eat better. That thought has become more frequent - and more enticing - over the past few days...',
        nextPhase: 'mapTravel'
    },
    mapTravel: {
        index: 9,
        key: 'mapTravel',
        label: 'Map Travel',
        instructions: 'You catch a glimpse of the Atlantic off in the distance, closer now.',
        nextPhase: 'moraleAdjustment'
    },
    moraleAdjustment: {
        index: 10,
        key: 'moraleAdjustment',
        label: 'Morale Adjustment',
        instructions: 'Only by the grace of God will we survive.',
        nextPhase: 'trackDay'
    },
    trackDay: {
        index: 11,
        key: 'trackDay',
        label: 'Track Day',
        instructions: 'The Trade Winds will die down at the end of the season and there won\'t be any ships until next year.',
        nextPhase: 'journalEntry'
    },
    journalEntry: {
        index: 12,
        key: 'journalEntry',
        label: 'Journal Entry',
        instructions: 'Before you rest for the night, you record the event of the day in your journal.',
        nextPhase: 'cartographerTrail'
    },
    cartographerTrail: {
        index: 13,
        key: 'cartographerTrailAction',
        label: 'Cartographer Trail Action',
        instructions: 'As a cartographer, you can often find trails that appear invisible to others.'
    }
}

export const hexDirections = {
    none: {
        name: 'none',
        dirX: 0,
        dirY: 0,
        moraleAdjustment: -1,
        pX: 0,
        pY: 0,
		pOffX: 0,
		pOffY: 0,
        rotationDegrees: 0
    },
    northwest: {
        name: 'northwest',
        dirX: -1,
        dirY: -0.5,
        moraleAdjustment: -3,
        pX: hexWidth / 8,
        pY: hexHeight / 4,
		pOffX: 1.5,
		pOffY: 1,
        rotationDegrees: 120
    },
    north: {
        name: 'north',
        dirX: 0,
        dirY: -1,
        moraleAdjustment: -1,
        pX: hexWidth / 2,
        pY: 0,
		pOffX: 0,
		pOffY: 3,
       rotationDegrees: 0
    },
    northeast: {
        name: 'northeast',
        dirX: 1,
        dirY: -0.5,
        moraleAdjustment: 1,
        pX: hexWidth * 7 / 8,
        pY: hexHeight / 4,
		pOffX: -2.5,
		pOffY: 2,
        rotationDegrees: 60
    },
    southeast: {
        name: 'southeast',
        dirX: 1,
        dirY: 0.5,
        moraleAdjustment: 3,
        pX: hexWidth * 7 / 8,
        pY: hexHeight * 3 / 4,
		pOffX: -2.5,
		pOffY: -1,
        rotationDegrees: 120
    },
    south: {
        name: 'south',
        dirX: 0,
        dirY: 1,
        moraleAdjustment: 1,
        pX: hexWidth / 2,
        pY: hexHeight,
		pOffX: 0,
		pOffY: -2,
        rotationDegrees: 0
    },
    southwest: {
        name: 'southwest',
        dirX: -1,
        dirY: 0.5,
        moraleAdjustment: -1,
        pX: hexWidth / 8,
        pY: hexHeight * 3 / 4,
		pOffX: 1.5,
		pOffY: -1,
        rotationDegrees: 60
    }
}

export const interestTypes = {
    diegoMendoza: {
        id: 'diegoMendoza',
        label: 'Deigo Mendoza',
        description: 'Gain 1 Conquistador and 1 Musket. You may add 1 to a total once per turn whenever rolling on Phases 2-7. This effect persists until the end of the game.'
    },
    lagosDeOro: {
        id: 'lagosDeOro',
        label: 'Lagos De Oro',
        description: 'Create a 3-hex lake halfway between your current location and the River Delta. The 3 hexes must all be adjacent to each other. Then indicate a tiny island at the corner where the three hexes meet. The three hexes count as 1 hex for all purposes.You are immune to Fever while at Lagos De Oro.'
    },
    migration: {
        id: 'migration',
        label: 'Migration',
        description: 'Skip the Ration Phase while in and adjacent to this hex. You may expend 1 musket to fill your Food reserves to 6.'
    },
    naturalWonder: {
        id: 'naturalWonder',
        label: 'Natural Wonder',
        description: 'Add 5 to you current Morale. Add 2 to your end game Victory Points if you win (for each Natural Wonder discovered). Describe this Natural Wonder in detail in your journal.'
    },
    none: {
        id: 'none',
        isNone: true
    },
    pending: {
        id: 'pending',
        isPending: true
    },
    predictEclipse: {
        id: 'predictEclipse',
        label: 'Predict Eclipse',
        description: 'The next two times you roll on the Native Contact Chart, choose any result instead of rolling.'
    },
    princessKantyi: {
        id: 'princessKantyi',
        label: 'Princess Kantyi',
        description: 'Reroll 1s and 2s on either/both dice whenever rolling on the Native Contact Chart. This effect persists until the end of the game.'
    },
    ruinedMission: {
        id: 'ruinedMission',
        label: 'Ruined Mission',
        description: 'You find a crate of Muskets. Gain 5 Muskets. Add a Trail to any adjacent hex.'
    }
}

export const map = {
    cols: 15,
    rows: 4.5,
    delta: {
        x: 14,
        y: 3.5
    },
    hexPad: 2,
    hexWidth: hexWidth,
    hexHeight: hexHeight,
    hexDrawWidth: hexWidth * 3 / 4,
    hexPoints: [
        { x: 0,                y: hexHeight / 2 },
        { x: hexWidth / 4,     y: 0 },
        { x: hexWidth * 3 / 4, y: 0 },
        { x: hexWidth,         y: hexHeight / 2 },
        { x: hexWidth * 3 / 4, y: hexHeight },
        { x: hexWidth / 4,     y: hexHeight },
    ],
    border: {
        rX: 19.5,
        rY: 1.5
    },
    cataract: {
        rX: 10,
        rY: 6
    },
    pathNode: {
        pX: hexWidth * 0.5,
        pY: hexHeight * 0.5,
        rX: 6,
        rY: 6
    },
    trail: {
        rX: 8,
        rY: 10
    }
}

export const riverTypes = {
    bodyOfWater: 'bodyOfWater',
    delta: 'delta',
    source: 'source',
    swse: 'swse',
    swne: 'swne',
    nse: 'nse',
    nwne: 'nwne',
    nws: 'nws',
    nwse: 'nwse'
}

export const riverTypesDownstreamDirections = {
    bodyOfWater: hexDirections.none.name, // Special case
    delta: hexDirections.south.name,
    source: hexDirections.northeast.name,
    swse: hexDirections.southeast.name,
    swne: hexDirections.northeast.name,
    nse: hexDirections.southeast.name,
    nwne: hexDirections.northeast.name,
    nws: hexDirections.south.name,
    nwse: hexDirections.southeast.name
}

const terrainTypeTemplate = {
    cannotBreakFever: false,
    diceRollAdjustments: {},
    exploring: 0,
    hunting: 0,
    isUnexplored: false,
    isWater: false,
    movementProgress: 0,
    nativeContact: 0,
    noVillages: false,
    suffix: ''
};
export const terrainTypes = {
    forest: {
        ...terrainTypeTemplate,
        name: 'Forest',
        diceRollAdjustments: { 6: 1 }
    },
    hills: {
        ...terrainTypeTemplate,
        name: 'Hills',
        diceRollAdjustments: { 2: -1, 5: 1 }
    },
    jungle: {
        ...terrainTypeTemplate,
        name: 'Jungle',
        diceRollAdjustments: { 2: -1, 4: -1 }
    },
    lagosDeOro: {
        ...terrainTypeTemplate,
        name: 'Lagos De Oro',
        immuneToFever: true,
        isWater: true
    },
    lake: {
        ...terrainTypeTemplate,
        name: 'Lake',
        diceRollAdjustments: { 2: 1 },
        isWater: true,
        noVillages: true
    },
    mountains: {
        ...terrainTypeTemplate,
        name: 'Mountains',
        diceRollAdjustments: { 2: -1, 6: 1 }
    },
    plains: {
        ...terrainTypeTemplate,
        name: 'Plains',
        diceRollAdjustments: { 2: 1 }
    },
    swamp: {
        ...terrainTypeTemplate,
        name: 'Swamp',
        diceRollAdjustments: { 2: -1 },
        cannotBreakFever: true
    },
    unexplored: {
        ...terrainTypeTemplate,
        name: 'Unexplored',
        isUnexplored: true
    }
}

export const villageInterestOffsets = [
    { pX: hexWidth * 0.2, pY: hexHeight * 0.5,  },
    { pX: hexWidth * 0.3, pY: hexHeight * 0.3,  },
    { pX: hexWidth * 0.5, pY: hexHeight * 0.17, },
    { pX: hexWidth * 0.7, pY: hexHeight * 0.3,  },
    { pX: hexWidth * 0.8, pY: hexHeight * 0.5,  },
    { pX: hexWidth * 0.7, pY: hexHeight * 0.7,  },
    { pX: hexWidth * 0.5, pY: hexHeight * 0.83, },
    { pX: hexWidth * 0.3, pY: hexHeight * 0.7,  }
]