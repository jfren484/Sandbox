var playerStatsApp = angular.module('playerStatsApp', []);

playerStatsApp.controller('playerStatsController', function ($scope, $http) {
    $scope.players = [
        { 'id': 425783 },
        { 'id': 458731 },
        { 'id': 592178 }
    ];

    $scope.players.forEach(function(player) {
        $http.get('mlb-' + player.id + '.json')
             .success(function (data) {
                 var totalAB = 0, totalH = 0, totalBB = 0, totalSF = 0, totalTB = 0;
                 var totals = {};

                 ['PA', 'AB', 'H', 'BB', 'HBP', 'SF', 'TB'].forEach(function (col) {
                     totals[col] = 0;
                 });

                 player.rows = data.rows.map(function (rowSource) {
                     var rowDest = {};

                     data.header.forEach(function (col, colIndex) {
                         rowDest[col.label] = rowSource[colIndex];
                     });

                     rowDest.PA = rowDest.AB + rowDest.HBP + rowDest.BB + rowDest.SF;

                     for (var prop in totals) {
                         totals[prop] += rowDest[prop];
                         rowDest['total' + prop] = totals[prop];
                     }

                     rowDest.AVG = totals.AB ? totals.H / totals.AB : 0;
                     rowDest.OBP = totals.PA ? (totals.H + totals.HBP + totals.BB) / totals.PA : 0;
                     rowDest.SLG = totals.AB ? totals.TB / totals.AB : 0;
                     rowDest.OPS = rowDest.OBP + rowDest.SLG;

                     return rowDest;
                 });

                 var lastRow = player.rows[player.rows.length - 1];
                 for (var prop in lastRow) {
                     player[prop] = lastRow[prop];
                 }
             });
    });

    $scope.player = $scope.players[0];
});