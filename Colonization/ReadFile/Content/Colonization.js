let fileHandle;
$('#openFile').on('click', async () => {
    // Destructure the one-element array.
    [fileHandle] = await window.showOpenFilePicker();

    const file = await fileHandle.getFile();
    const json = await file.text();
    const obj = JSON.parse(json);

    loadData(obj);
});

function loadData(obj) {
    $('#filename').text(fileHandle.name);

    var i = 0;
    for (var y = 0; y < obj.MapSize.Height; ++y) {
        var row = $('<div class="map-row"></div>');

        for (var x = 0; x < obj.MapSize.Width; ++x, ++i) {
            var cell = $('<div class="map-cell ter-base ter-base-' + obj.Map[i].TerrainBase.toLowerCase() + '"></div>');
            var terrain = obj.Map[i].TerrainBase;

            var nationName = obj.Map[i].NationName;
            if (nationName.length > 0) {
                nationName += '\r\n';
            }

            if (obj.Map[i].TerrainFeature !== 0) {
                var layer = $('<div class="ter-feat"></div>')
                switch (obj.Map[i].TerrainFeature) {
                    case 'Elevation':
                        layer.addClass('ter-feat-hills');
                        terrain = 'Hills';
                        break;
                    case 'Elevation, Major':
                        layer.addClass('ter-feat-mountains');
                        terrain = 'Mountains';
                        break;
                    case 'River':
                        layer.addClass('ter-feat-minor-river');
                        terrain += ')\r\n(Minor River';
                        break;
                    case 'River, Major':
                        layer.addClass('ter-feat-major-river');
                        terrain += ')\r\n(Major River';
                        break;
                }
                cell.append(layer);
            }

            var title = 'Locat: (' + obj.Map[i].Coordinates.X + ', ' + obj.Map[i].Coordinates.Y + ') ' + obj.Map[i].DistinctBodyNumber + '\r\n' +
                nationName + '(' + terrain + ')\r\nOccupied: ' + obj.Map[i].IsOccupied + '\r\nUnknown1: ' + obj.Map[i].UnknownByte1 + '\r\n' +
                'VisibleTo: ' + obj.Map[i].VisibleToNations + '\r\nUnknown2: ' + obj.Map[i].UnknownNibble2;
            cell.attr('title', title);

            row.append(cell);
        }

        $('#map').append(row);
    }
}

$(function () {
    // OnStart
});
