let fileHandle;
let gameData;

let zoomLevel = 4;
const zoomLevelSizes = ['8px', '16px', '24px', '32px', '40px', '50px', '60px', '70px']

const tileVisibilityClasses = ['hide-from-english', 'hide-from-french', 'hide-from-spanish', 'hide-from-dutch'];

const terrainFeatures = {
    'Elevation': 'Hills',
    'Elevation, Major': 'Mountains',
    'River': 'Minor River',
    'River, Major': 'Major River'
}

$('#openFile').on('click', async () => {
    // Destructure the one-element array.
    [fileHandle] = await window.showOpenFilePicker();

    const file = await fileHandle.getFile();
    const json = await file.text();
    gameData = JSON.parse(json);

    loadMap();
});

$('#map').on('click', '.map-cell', function () {
    loadCellInfo($(this).data('index'));
});

$('#visibilityButtons').on('click', 'button', function () {
    $('#map')
        .removeClass('view-all')
        .removeClass('view-english')
        .removeClass('view-french')
        .removeClass('view-spanish')
        .removeClass('view-dutch')
        .addClass($(this).data('visibility-class'));
});

$('#zoomIn').on('click', function () {
    if (zoomLevel < 7) {
        $(':root').css('--tile-size', zoomLevelSizes[++zoomLevel]);
    }
});

$('#zoomOut').on('click', function () {
    if (zoomLevel > 0) {
        $(':root').css('--tile-size', zoomLevelSizes[--zoomLevel]);
    }
});

function loadMap() {
    $('#filename').text(fileHandle.name);

    let index = 0;
    for (let y = 0; y < gameData.MapSize.Height; ++y) {
        const row = $('<div>')
            .addClass('map-row');

        for (let x = 0; x < gameData.MapSize.Width; ++x, ++index) {
            const layers = [];
            layers.push($('<div>')
                .addClass('map-cell')
                .addClass('ter-base')
                .addClass('ter-base-' + gameData.Map[index].TerrainBase.toLowerCase())
                .data('index', index));

            gameData.Map[index].TerrainBaseName = gameData.Map[index].TerrainBase;
            gameData.Map[index].TerrainFeatureName = '';

            layers.push($('<div>').addClass('ter-tree'));

            const feat = terrainFeatures[gameData.Map[index].TerrainFeature];
            if (feat) {
                layers.push($('<div>')
                    .addClass('ter-feat')
                    .addClass('ter-feat-' + feat.toLowerCase().replace(' ', '-')));
                gameData.Map[index].TerrainBaseName = feat;
            }

            const town = gameData.Towns.find(t => t.Location.X === gameData.Map[index].Coordinates.X && t.Location.Y === gameData.Map[index].Coordinates.Y);
            if (town) {
                const townLayer = $('<div>').addClass('tile-icon');
                if (town.Buildings[Enumerations.Buildings.Fortress]) {
                    townLayer.addClass('tile-icon-town-fortress');
                } else if (town.Buildings[Enumerations.Buildings.Fort]) {
                    townLayer.addClass('tile-icon-town-fort');
                } else if (town.Buildings[Enumerations.Buildings.Stockade]) {
                    townLayer.addClass('tile-icon-town-stockade');
                } else {
                    townLayer.addClass('tile-icon-town');
                }
                layers.push(townLayer);

                layers.push($('<div>')
                    .addClass('tile-icon')
                    .addClass('tile-icon-flag-' + town.Nation.toLowerCase()));
            } else {
                const village = gameData.Villages.find(v => v.Location.X === gameData.Map[index].Coordinates.X && v.Location.Y === gameData.Map[index].Coordinates.Y);
                if (village) {
                    const villLayer = $('<div>').addClass('tile-icon');
                    if (village.Nation === 'Inca') {
                        villLayer.addClass('tile-icon-village-pyramid-inca');
                    } else if (village.Nation === 'Aztec') {
                        villLayer.addClass('tile-icon-village-pyramid-aztec');
                    } else if (village.Nation === 'Arawaks' || village.Nation === 'Cherokee' || village.Nation === 'Iroquois') {
                        villLayer.addClass('tile-icon-village-longhouse');
                    } else {
                        villLayer.addClass('tile-icon-village-teepee');
                    }
                    layers.push(villLayer);
                }
            }

            const visLayer = $('<div>').addClass('visibility-screen');
            for (let i = 0; i < 4; ++i) {
                if (!gameData.Map[index].VisibleToNations[i]) {
                    visLayer.addClass(tileVisibilityClasses[i]);
                }
            }
            layers.push(visLayer);

            let curLayer = row;
            let nextLayer = layers.shift();
            while (nextLayer) {
                curLayer.append(nextLayer);

                curLayer = nextLayer;
                nextLayer = layers.shift();
            }
        }

        $('#map').append(row);
    }
}

function loadCellInfo(index) {
    const cell = gameData.Map[index];

    $('#locatX').text(cell.Coordinates.X);
    $('#locatY').text(cell.Coordinates.Y);
    $('#locatArea').text(cell.DistinctBodyNumber);

    $('#locatNation').toggle(cell.NationName !== '');
    $('#locatNationName').text(cell.NationName);
    $('#locatTerrainBaseName').text(cell.TerrainBaseName);
    $('#locatTerrainFeat').toggle(cell.TerrainFeatureName !== '');
    $('#locatTerrainFeatName').text(cell.TerrainFeatureName);
    $('#locatUnknown1').text(cell.UnknownByte1);
    $('#locatUnknown2').text(cell.UnknownNibble2[1]);

    $('.location-info').toggle(true);
}

$(function () {
    // OnStart
    $('.map-container').height($('body').height() - $('body > nav').height() - $('.map-head').height());
});
