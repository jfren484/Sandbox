// ReSharper disable MissingHasOwnPropertyInForeach
// ReSharper disable PossiblyUnassignedProperty

var players = [
    { 'id': 425783 },
    { 'id': 458731 },
    { 'id': 592178 }
];

var summaryColumns = ['PA', 'AB', 'H', 'BB', 'HBP', 'SF', 'TB', 'HR', 'K'];

var qsPlayerIndex = (queryString.p ? queryString.p[0] : 0) * 1;
var player = players[qsPlayerIndex];

players.forEach(function (player, i) {
    readPlayerData(i);
});

function readPlayerData(playerIndex) {
    $.get('mlb-' + players[playerIndex].id + '.json')
        .done(function (data) {
            if (typeof data !== 'object') {
                data = JSON.parse(data);
            }
            var totals = {};

            summaryColumns.forEach(function(col) {
                totals[col] = 0;
            });

            players[playerIndex].rows = data.rows.map(function (rowSource) {
                var rowDest = {};

                data.header.forEach(function(col, colIndex) {
                    rowDest[col.label] = rowSource[colIndex];
                });

                rowDest.PA = rowDest.AB + rowDest.HBP + rowDest.BB + rowDest.SF;

                for (var rowProp in totals) {
                    totals[rowProp] += rowDest[rowProp];
                    rowDest['total' + rowProp] = totals[rowProp];
                }

                rowDest.AVG = totals.AB ? totals.H / totals.AB : 0;
                rowDest.OBP = totals.PA ? (totals.H + totals.HBP + totals.BB) / totals.PA : 0;
                rowDest.SLG = totals.AB ? totals.TB / totals.AB : 0;
                rowDest.OPS = rowDest.OBP + rowDest.SLG;

                return rowDest;
            });

            var lastRow = players[playerIndex].rows[players[playerIndex].rows.length - 1];
            for (var lastRowProp in lastRow) {
                players[playerIndex][lastRowProp] = lastRow[lastRowProp];
            }

            if (playerIndex === qsPlayerIndex) {
                updatePage();
            }

            if (playerIndex === players.length - 1) {
                updateSelect();
            }
        });
}

function updatePage() {
    $('#playerName')
        .text(player.fullName);

    $('#playerImage')
        .attr('src', player.playerImage)
        .attr('alt', player.fullName + ' mugshot');

    $('#teamName')
        .text(player.team);

    $('#teamImage')
        .attr('src', player.teamImage)
        .attr('alt', player.team + ' logo');

    Highcharts.setOptions({
        lang: {
            drillUpText: '< Back'
        }
    });

    var avgSeriesData = player.rows.map(function(row) {
        return [new Date(row.gameDate).getTime(), row.AVG];
    });

    var opsSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), row.OPS];
    });

    var hitSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), row.H];
    });

    var abSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), row.AB];
    });

    var tbSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), row.TB];
    });

    var hrSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), row.HR];
    });

    var kSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), -row.K];
    });

    var rbiSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), row.RBI];
    });

    $('#pctChart').highcharts({
        chart: {
            zoomType: 'x'
        },
        credits: {
            enabled: false
        },
        title: {
            text: 'Averages over Time'
        },
        xAxis: {
            type: 'datetime'
        },
        yAxis: {
            title: {
                enabled: false
            },
            labels: {
                format: '{value:.3f}'
            }
        },
        tooltip: {
            dateTimeLabelFormats: {
                minute: '%A, %b %e, %l:%M %p'
            },
            valueDecimals: 3
        },
        series: [{
            name: 'Batting Average (AVG)',
            data: avgSeriesData
        }, {
            name: 'On-base Plus Slugging (OPS)',
            data: opsSeriesData
        }]
    });

    $('#countChart').highcharts({
        chart: {
            type: 'area',
            zoomType: 'x'
        },
        credits: {
            enabled: false
        },
        title: {
            text: 'Hits/At Bats over Time'
        },
        xAxis: {
            type: 'datetime'
        },
        yAxis: {
            title: {
                enabled: false
            },
            allowDecimals: false
        },
        tooltip: {
            dateTimeLabelFormats: {
                minute: '%A, %b %e, %l:%M %p'
            }
        },
        series: [{
            name: 'At Bats (AB)',
            data: abSeriesData
        }, {
            name: 'Hits (H)',
            data: hitSeriesData
        }]
    });

    $('#powerChart').highcharts({
        chart: {
            type: 'area',
            zoomType: 'x'
        },
        credits: {
            enabled: false
        },
        title: {
            text: 'Power over Time'
        },
        xAxis: {
            type: 'datetime'
        },
        yAxis: {
            title: {
                enabled: false
            },
            allowDecimals: false
        },
        tooltip: {
            dateTimeLabelFormats: {
                minute: '%A, %b %e, %l:%M %p'
            }
        },
        plotOptions: {
            area: {
                stacking: 'normal'
            }
        },
        series: [{
            name: 'Total Bases (TB)',
            data: tbSeriesData
        }, {
            name: 'Home Runs (HR)',
            data: hrSeriesData
        }]
    });

    $('#valueChart').highcharts({
        chart: {
            type: 'area',
            zoomType: 'x'
        },
        credits: {
            enabled: false
        },
        title: {
            text: 'Contributions over Time'
        },
        xAxis: {
            type: 'datetime'
        },
        yAxis: {
            title: {
                enabled: false
            },
            allowDecimals: false,
            labels: {
                formatter: function() {
                    return Math.abs(this.value);
                }
            }
        },
        tooltip: {
            dateTimeLabelFormats: {
                minute: '%A, %b %e, %l:%M %p'
            },
            pointFormatter: function () {
                return '<span style="color:' + this.color + '">\u25CF</span> ' + this.series.name + ': <b>' + Math.abs(this.y) + '</b><br/>.';
            }
        },
        series: [{
            name: 'Strikeouts (K)',
            data: kSeriesData
        }, {
            name: 'Runs Batted In (RBI)',
            data: rbiSeriesData
        }]
    });

    $('#countPie').highcharts({
        chart: {
            type: 'pie'
        },
        credits: {
            enabled: false
        },
        title: {
            text: 'Plate Appearance Breakdown'
        },
        subtitle: {
            text: 'Click the slices to drill down.'
        },
        plotOptions: {
            series: {
                dataLabels: {
                    enabled: true,
                    format: '{point.name}: {point.percentage:.1f}%'
                }
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y}</b><br/>'
        },
        series: [
            {
                name: 'Plate Appearance Type',
                colorByPoint: true,
                data: [
                    {
                        name: 'Hits',
                        y: player.totalH,
                        drilldown: 'Hits'
                    }, {
                        name: 'Other At-bats',
                        y: player.totalAB - player.totalH,
                        drilldown: 'Other At-bats'
                    }, {
                        name: 'Non-at-bat Plate Appearances',
                        y: player.totalPA - player.totalAB,
                        drilldown: 'Other Plate Appearnces'
                    }
                ]
            }
        ],
        drilldown: {
            series: [
                {
                    name: 'Hits',
                    id: 'Hits',
                    data: [
                        ['Other Hits', player.totalH - player.totalHR],
                        ['Home Runs (HR)', player.totalHR]
                    ]
                },
                {
                    name: 'Other At-bats',
                    id: 'Other At-bats',
                    data: [
                        ['Other (e.g. reached by Error)', player.totalAB - player.totalH - player.totalK],
                        ['Strikeouts (K)', player.totalK]
                    ]
                },
                {
                    name: 'Other Plate Appearnces',
                    id: 'Other Plate Appearnces',
                    data: [
                        ['Other (e.g. interference)', player.totalPA - player.totalAB - player.totalBB - player.totalSF - player.totalHBP],
                        ['Walks (BB)', player.totalBB],
                        ['Sacrifice Flies (SF)', player.totalSF],
                        ['Hit by Pitch (HBP)', player.totalHBP]
                    ]
                }
            ]
        }
    });
}

function updateSelect() {
    var $playerDropdown = $('#player');

    players.forEach(function(player, playerIndex) {
        $playerDropdown.append($('<option>', {
            value: playerIndex,
            html: player.fullName,
            selected: playerIndex === qsPlayerIndex
        }));
    });

    $playerDropdown.selectedIndex = qsPlayerIndex;

    $playerDropdown.on('change', function() {
        window.location.href = 'index.html?p=' + this.selectedOptions[0].value;
    });
}
