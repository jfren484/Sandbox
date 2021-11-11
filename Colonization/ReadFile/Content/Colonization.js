let fileHandle;
let gameData;

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

function loadMap() {
    $('#filename').text(fileHandle.name);

    let i = 0;
    for (let y = 0; y < gameData.MapSize.Height; ++y) {
        const row = $('<div>')
            .addClass('map-row');

        for (let x = 0; x < gameData.MapSize.Width; ++x, ++i) {
            const cell = $('<div>')
                .addClass('map-cell')
                .addClass('ter-base')
                .addClass('ter-base-' + gameData.Map[i].TerrainBase.toLowerCase())
                .data('index', i);

            gameData.Map[i].TerrainBaseName = gameData.Map[i].TerrainBase;
            gameData.Map[i].TerrainFeatureName = '';

            const treeLayer = $('<div>')
                .addClass('ter-tree');
            cell.append(treeLayer);

            if (gameData.Map[i].TerrainFeature !== 0) {
                const featLayer = $('<div>')
                    .addClass('ter-feat');

                switch (gameData.Map[i].TerrainFeature) {
                    case 'Elevation':
                        featLayer.addClass('ter-feat-hills');
                        gameData.Map[i].TerrainBaseName = 'Hills';
                        break;
                    case 'Elevation, Major':
                        featLayer.addClass('ter-feat-mountains');
                        gameData.Map[i].TerrainBaseName = 'Mountains';
                        break;
                    case 'River':
                        featLayer.addClass('ter-feat-minor-river');
                        gameData.Map[i].TerrainFeatureName = 'Minor River';
                        break;
                    case 'River, Major':
                        featLayer.addClass('ter-feat-major-river');
                        gameData.Map[i].TerrainFeatureName = 'Major River';
                        break;
                }

                treeLayer.append(featLayer);
            }

            row.append(cell);
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
}

$(function () {
    // OnStart
    $('body > div.container').height($('body').height() - $('body > nav').height());
});
