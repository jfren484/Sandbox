// ReSharper disable MissingHasOwnPropertyInForeach
// ReSharper disable PossiblyUnassignedProperty

var players = [
    { 'id': 425783 },
    { 'id': 458731 },
    { 'id': 592178 }
];

var teams = {
    'ATL': { 'name': 'Atlanta Braves', 'league': 'NL', 'div': 'NLE' },
    'ARI': { 'name': 'Arizona Diamondbacks', 'league': 'NL', 'div': 'NLW' },
    'BAL': { 'name': 'Baltimore Orioles', 'league': 'AL', 'div': 'ALE' },
    'BOS': { 'name': 'Boston Red Sox', 'league': 'AL', 'div': 'ALE' },
    'CHC': { 'name': 'Chicago Cubs', 'league': 'NL', 'div': 'NLC' },
    'CIN': { 'name': 'Cincinnati Reds', 'league': 'NL', 'div': 'NLC' },
    'CLE': { 'name': 'Cleveland Indians', 'league': 'AL', 'div': 'ALC' },
    'COL': { 'name': 'Colorado Rockies', 'league': 'NL', 'div': 'NLW' },
    'CWS': { 'name': 'Chicago White Sox', 'league': 'AL', 'div': 'ALC' },
    'DET': { 'name': 'Detroit Tigers', 'league': 'AL', 'div': 'ALC' },
    'HOU': { 'name': 'Houston Astros', 'league': 'AL', 'div': 'ALW' },
    'KC': { 'name': 'Kansas City Royals', 'league': 'AL', 'div': 'ALC' },
    'LAA': { 'name': 'Los Angeles Angels', 'league': 'AL', 'div': 'ALW' },
    'LAD': { 'name': 'Los Angeles Dodgers', 'league': 'NL', 'div': 'NLW' },
    'MIA': { 'name': 'Miami Marlins', 'league': 'NL', 'div': 'NLE' },
    'MIL': { 'name': 'Milwaukee Brewers', 'league': 'NL', 'div': 'NLC' },
    'MIN': { 'name': 'Minnesota Twins', 'league': 'AL', 'div': 'ALC' },
    'NYM': { 'name': 'New York Mets', 'league': 'NL', 'div': 'NLE' },
    'NYY': { 'name': 'New York Yankees', 'league': 'AL', 'div': 'ALE' },
    'OAK': { 'name': 'Oakland A\'s', 'league': 'AL', 'div': 'ALW' },
    'PHI': { 'name': 'Philadelphia Phillies', 'league': 'NL', 'div': 'NLE' },
    'PIT': { 'name': 'Pittsburgh Pirates', 'league': 'NL', 'div': 'NLC' },
    'SD': { 'name': 'San Diego Padres', 'league': 'NL', 'div': 'NLW' },
    'SEA': { 'name': 'Seattle Mariners', 'league': 'AL', 'div': 'ALW' },
    'SF': { 'name': 'San Francisco Giants', 'league': 'NL', 'div': 'NLW' },
    'STL': { 'name': 'St. Louis Cardinals', 'league': 'NL', 'div': 'NLC' },
    'TB': { 'name': 'Tampa Bay Rays', 'league': 'AL', 'div': 'ALE' },
    'TEX': { 'name': 'Texas Rangers', 'league': 'AL', 'div': 'ALW' },
    'TOR': { 'name': 'Toronto Blue Jays', 'league': 'AL', 'div': 'ALE' },
    'WSH': { 'name': 'Washington Nationals', 'league': 'NL', 'div': 'NLE' }
};

var summaryColumns = ['PA', 'AB', 'H', 'BB', 'HBP', 'SF', 'TB', 'HR', 'K', 'RBI'];

var dateFormat = '%A, %b %e, %l:%M %p';

var qsPlayerIndex = (queryString.p ? queryString.p[0] : 0) * 1;
var player = players[qsPlayerIndex];

Highcharts.setOptions({
    lang: {
        drillUpText: '< Back'
    }
});

$('#filterOpp').add('#filterTime').on('change', function () {
    updateCountCharts();
});

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

            summaryColumns.forEach(function (col) {
                totals[col] = 0;
            });

            players[playerIndex].rows = data.rows.map(function (rowSource) {
                var rowDest = {};

                data.header.forEach(function (col, colIndex) {
                    rowDest[col.label] = rowSource[colIndex];
                    if (col.label === 'gameDate') {
                        // The times in the data are in EDT, so I'm not sure why adding GMT+0000 makes them correct in Highcharts, but it does :P
                        rowDest[col.label] += ' GMT+0000';
                    }
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
    updatePlayerData();
    updatePercentageCharts();
    updateCountCharts()
}

function updatePlayerData() {
    $('#playerName')
        .text(player.fullName);

    $('#playerImage')
        .attr('src', player.playerImage)
        .attr('alt', player.fullName + ' mugshot');

    $('#teamName')
        .text(teams[player.team].name);

    $('#teamImage')
        .attr('src', player.teamImage)
        .attr('alt', teams[player.team].name + ' logo');

    $('#opponentName')
        .text(teams[player.opponent].name);

    $('#opponentImage')
        .attr('src', player.opponentImage)
        .attr('alt', teams[player.opponent].name + ' logo');

    $('#statAVG')
        .text(player.AVG.toFixed(3));
    $('#statH')
        .text(player.totalH);
    $('#statHR')
        .text(player.totalHR);
    $('#statRBI')
        .text(player.totalRBI);
    $('#statOPS')
        .text(player.OPS.toFixed(3));

    $('#gamePA')
        .text(player.PA);
    $('#gameH')
        .text(player.H);
    $('#gameBB')
        .text(player.BB);
    $('#gameHR')
        .text(player.HR);
    $('#gameRBI')
        .text(player.RBI);

    var gamelogRows = $('#gamelog table tbody');
    gamelogRows.empty();

    for (var i = 0; i < player.rows.length; ++i) {
        var dataRow = player.rows[i];
        var gameDate = moment(dataRow.gameDate).format('MMM D');

        var tableRow = $('<tr>')
            .append($('<td>').append(gameDate))
            .append($('<td>').append('<img src="' + dataRow.opponentImage + '" alt="' + teams[dataRow.opponent].name + ' logo" class="mini-logo" /> ' + teams[dataRow.opponent].name))
            .append($('<td>').append(dataRow.PA))
            .append($('<td>').append(dataRow.H))
            .append($('<td>').append(dataRow.BB))
            .append($('<td>').append(dataRow.HR))
            .append($('<td>').append(dataRow.RBI));
        gamelogRows.append(tableRow);
    }
}

function updatePercentageCharts() {
    var avgSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), row.AVG];
    });

    var opsSeriesData = player.rows.map(function (row) {
        return [new Date(row.gameDate).getTime(), row.OPS];
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
                formatter: function () {
                    return formatPercentage(this.value);
                }
            }
        },
        tooltip: {
            dateTimeLabelFormats: {
                minute: dateFormat
            },
            pointFormatter: function () {
                return '<span style="color:' + this.color + '">\u25CF</span>' + this.series.name + ': <b>' + formatPercentage(this.y) + '</b><br />';
            },
            shared: true
        },
        series: [{
            name: 'On-base Plus Slugging (OPS)',
            data: opsSeriesData
        }, {
            name: 'Batting Average (AVG)',
            data: avgSeriesData
        }]
    });
}

function updateCountCharts() {
    var filtered = false;
    var rows = player.rows;
    var totalH = player.totalH;
    var totalAB = player.totalAB;
    var totalPA = player.totalPA;
    var totalHR = player.totalHR;
    var totalBB = player.totalBB;
    var totalK = player.totalK;
    var totalSF = player.totalSF;
    var totalHBP = player.totalHBP;

    var filterOpp = $('#filterOpp').val();
    if (filterOpp === 'div') {
        filtered = true;
        rows = rows.filter(function (row) {
            return teams[row.team].div === teams[row.opponent].div;
        });
    } else if (filterOpp === 'int') {
        filtered = true;
        rows = rows.filter(function (row) {
            return teams[row.team].league !== teams[row.opponent].league;
        });
    }

    var filterTime = $('#filterTime').val();
    if (filterTime === 'day') {
        filtered = true;
        rows = rows.filter(function (row) {
            return moment(row.gameDate).hour() < 17;
        });
    } else if (filterTime === 'night') {
        filtered = true;
        rows = rows.filter(function (row) {
            return moment(row.gameDate).hour() >= 17;
        });
    }

    if (filtered) {
        totalH = totalAB = totalPA = totalHR = totalBB = totalK = totalSF = totalHBP = 0;
        rows.forEach(function (row) {
            totalH += row['H'];
            totalAB += row['AB'];
            totalPA += row['PA'];
            totalHR += row['HR'];
            totalBB += row['BB'];
            totalK += row['K'];
            totalSF += row['SF'];
            totalHBP += row['HBP'];
        });
    }

    var hitSeriesData = rows.map(function (row) {
        return { 'x': new Date(row.gameDate).getTime(), 'y': row.H, row: row };
    });

    var abSeriesData = rows.map(function (row) {
        return { 'x': new Date(row.gameDate).getTime(), 'y': row.AB, row: row };
    });

    var tbSeriesData = rows.map(function (row) {
        return { 'x': new Date(row.gameDate).getTime(), 'y': row.TB, row: row };
    });

    var hrSeriesData = rows.map(function (row) {
        return { 'x': new Date(row.gameDate).getTime(), 'y': row.HR, row: row };
    });

    var kSeriesData = rows.map(function (row) {
        return { 'x': new Date(row.gameDate).getTime(), 'y': -row.K, row: row };
    });

    var rbiSeriesData = rows.map(function (row) {
        return { 'x': new Date(row.gameDate).getTime(), 'y': row.RBI, row: row };
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
            useHTML: true,
            formatter: function () {
                var tip = '<span style="font-size: 10px;">' + Highcharts.dateFormat(dateFormat, this.x) + '</span><br />vs ' +
                    '<img class="mini-logo" src="' + this.points[0].point.row.opponentImage + '" /> ' +
                    teams[this.points[0].point.row.opponent].name + '<br />';

                if (this.points.length === 2) {
                    tip += '<b>' + this.points[1].y + '-' + this.points[0].y + '</b>';
                } else {
                    tip += '<span style="color:' + this.points[0].color + '">\u25CF</span> ' + this.points[0].series.name + ': <b>' + this.points[0].y + '</b>';
                }

                return tip;
            },
            shared: true
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
                minute: dateFormat
            },
            shared: true
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
                formatter: function () {
                    return Math.abs(this.value);
                }
            }
        },
        tooltip: {
            dateTimeLabelFormats: {
                minute: dateFormat
            },
            pointFormatter: function () {
                return '<span style="color:' + this.color + '">\u25CF</span> ' + this.series.name + ': <b>' + Math.abs(this.y) + '</b><br/>';
            },
            shared: true
        },
        series: [{
            name: 'Runs Batted In (RBI)',
            data: rbiSeriesData
        }, {
            name: 'Strikeouts (K)',
            data: kSeriesData
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
                        y: totalH,
                        drilldown: 'Hits'
                    }, {
                        name: 'Other At-bats',
                        y: totalAB - totalH,
                        drilldown: 'Other At-bats'
                    }, {
                        name: 'Non-at-bat Plate Appearances',
                        y: totalPA - totalAB,
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
                        ['Other Hits', totalH - totalHR],
                        ['Home Runs (HR)', totalHR]
                    ]
                },
                {
                    name: 'Other At-bats',
                    id: 'Other At-bats',
                    data: [
                        ['Other (e.g. reached by Error)', totalAB - totalH - totalK],
                        ['Strikeouts (K)', totalK]
                    ]
                },
                {
                    name: 'Other Plate Appearnces',
                    id: 'Other Plate Appearnces',
                    data: [
                        ['Other (e.g. interference)', totalPA - totalAB - totalBB - totalSF - totalHBP],
                        ['Walks (BB)', totalBB],
                        ['Sacrifice Flies (SF)', totalSF],
                        ['Hit by Pitch (HBP)', totalHBP]
                    ]
                }
            ]
        }
    });
}

function updateSelect() {
    var $playerDropdown = $('#player');

    players.forEach(function (player, playerIndex) {
        $playerDropdown.append($('<option>', {
            value: playerIndex,
            html: player.fullName,
            selected: playerIndex === qsPlayerIndex
        }));
    });

    $playerDropdown.selectedIndex = qsPlayerIndex;

    $playerDropdown.on('change', function () {
        window.location.href = 'index.html?p=' + this.selectedOptions[0].value;
    });
}

function formatPercentage(val) {
    return val < 1
        ? val.toFixed(3).substring(1)
        : val.toFixed(3);
}
