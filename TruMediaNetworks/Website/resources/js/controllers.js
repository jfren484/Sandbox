// ReSharper disable MissingHasOwnPropertyInForeach
// ReSharper disable PossiblyUnassignedProperty

var playerStatsApp = angular.module('playerStatsApp', ['highcharts-ng']);

playerStatsApp.controller('playerStatsController', function($scope, $http) {
    $scope.players = [
        { 'id': 425783 },
        { 'id': 458731 },
        { 'id': 592178 }
    ];

    $scope.players.forEach(function(player) {
        $http.get('mlb-' + player.id + '.json')
            .success(function(data) {
                var totals = {};

                ['PA', 'AB', 'H', 'BB', 'HBP', 'SF', 'TB'].forEach(function(col) {
                    totals[col] = 0;
                });

                player.rows = data.rows.map(function(rowSource) {
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

                var lastRow = player.rows[player.rows.length - 1];
                for (var lastRowProp in lastRow) {
                    player[lastRowProp] = lastRow[lastRowProp];
                }
            });
    });

    $scope.player = $scope.players[0];

    $scope.lineChart = {
        options: {
            chart: {
                type: 'line'
            }
        },
        xAxis: {
            type: 'datetime'
        },
        series: [
            {
                name: 'Batting Average (AVG)',
                data: !$scope.player.rows ? null : $scope.player.rows.map(function(row) {
                    return [row.gameDate, row.AVG];
                })
            }, {
                name: 'On-base Plus Slugging (OPS)',
                data: [10, 15, 12, 8, 7]
            }
        ],
        title: {
            text: 'Player Stats Over Time'
        },
        loading: false
    };
});