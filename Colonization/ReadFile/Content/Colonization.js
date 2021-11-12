let fileHandle;
let gameData;

let zoomLevel = 4;
const zoomLevelSizes = ['8px', '16px', '24px', '32px', '40px', '50px', '60px', '70px']

const tileVisibilityClasses = ['hide-from-english', 'hide-from-french', 'hide-from-spanish', 'hide-from-dutch'];

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
            const cell = $('<div>')
                .addClass('map-cell')
                .addClass('ter-base')
                .addClass('ter-base-' + gameData.Map[index].TerrainBase.toLowerCase())
                .data('index', index);
            row.append(cell);

            gameData.Map[index].TerrainBaseName = gameData.Map[index].TerrainBase;
            gameData.Map[index].TerrainFeatureName = '';

            const treeLayer = $('<div>').addClass('ter-tree');
            cell.append(treeLayer);

            const featLayer = $('<div>').addClass('ter-feat');
            switch (gameData.Map[index].TerrainFeature) {
                case 'Elevation':
                    featLayer.addClass('ter-feat-hills');
                    gameData.Map[index].TerrainBaseName = 'Hills';
                    break;
                case 'Elevation, Major':
                    featLayer.addClass('ter-feat-mountains');
                    gameData.Map[index].TerrainBaseName = 'Mountains';
                    break;
                case 'River':
                    featLayer.addClass('ter-feat-minor-river');
                    gameData.Map[index].TerrainFeatureName = 'Minor River';
                    break;
                case 'River, Major':
                    featLayer.addClass('ter-feat-major-river');
                    gameData.Map[index].TerrainFeatureName = 'Major River';
                    break;
            }
            treeLayer.append(featLayer);

            const visLayer = $('<div>').addClass('visibility-screen');
            for (let i = 0; i < 4; ++i) {
                if (!gameData.Map[index].VisibleToNations[i]) {
                    visLayer.addClass(tileVisibilityClasses[i]);
                }
            }
            featLayer.append(visLayer);
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
