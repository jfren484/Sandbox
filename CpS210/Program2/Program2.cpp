#include <cstdio>
#include <cstring>
#include <iostream>
#include <queue>
#include <string>
#include <vector>
#include "maze.h"
#include <stack>
using namespace std;

int main(int argc, const char* argv[]) {
	bool DEBUG = argc > 1 && (strcmp(argv[1], "DEBUG") == 0);

	string line;
	vector<string> lines;
	while (getline(cin, line))
	{
		lines.push_back(line);
	}

	maze m(lines);

	if (DEBUG) {
		cout << "maze:" << endl;
		m.print(cout);
	}

	queue<point> todoQueue;
	todoQueue.push(m.Entrance);

	vector<point> directions(4);
	directions[0].Row = -1;
	directions[1].Row = 1;
	directions[2].Col = -1;
	directions[3].Col = 1;

	point exit = m.Entrance;

	for (; !todoQueue.empty(); todoQueue.pop()) {
		point coords = todoQueue.front();

		for (int i = 0; i < 4; ++i) {
			point neighborCoords = coords;
			neighborCoords.Row += directions[i].Row;
			neighborCoords.Col += directions[i].Col;

			if (neighborCoords.Row < 0 || neighborCoords.Row >= m.ROWS || neighborCoords.Col < 0 || neighborCoords.Col >= m.COLS) {
				if (coords.Row != m.Entrance.Row || coords.Col != m.Entrance.Col) {
					exit = coords;
				}
				continue;
			}

			if (m.at(neighborCoords.Row, neighborCoords.Col).Value == '1') {
				continue;
			}

			int steps = m.at(coords.Row, coords.Col).Steps + 1;
			if (steps < m.at(neighborCoords.Row, neighborCoords.Col).Steps) {
				todoQueue.push(neighborCoords);
				m.at(neighborCoords.Row, neighborCoords.Col).FromLocation = coords;
				m.at(neighborCoords.Row, neighborCoords.Col).Steps = steps;
			}
		}
	}
	if (exit.Row == m.Entrance.Row && exit.Col == m.Entrance.Col) {
		printf("No exit found\n");
		return 1;
	}
	point current = exit;
	stack<point> path;
	while (current.Row != m.Entrance.Row || current.Col != m.Entrance.Col) {
		path.push(current);
		current = m.at(current.Row, current.Col).FromLocation;
	}

	for (; !path.empty(); path.pop()) {
		point coords = path.top();
		m.at(coords.Row, coords.Col).Value = '*';
		printf("%d, %d\n", coords.Row, coords.Col);
	}
	m.print(cout);
	
}

/*
				var center = { 'x': 12, 'y': 12 };
				$scope.mapData[12][12] = { 'coords': center, 'range': 1900 };
				$scope.todoQueue = [center];

				$scope.directions = [
					{ 'x':  0, 'y':  1 },
					{ 'x':  1, 'y':  0 },
					{ 'x':  0, 'y': -1 },
					{ 'x': -1, 'y':  0 }
				];

				$scope.nav = function () {
					currentQueue.forEach(function(toCheckCoords) {
						var self = $scope.mapData[toCheckCoords.x][toCheckCoords.y];
						$scope.directions.forEach(function (direction) {
							var neighborCoords = { 'x': toCheckCoords.x + direction.x, 'y': toCheckCoords.y + direction.y };
							if (neighborCoords.x < 0 || neighborCoords.x > 24 || neighborCoords.y < 0 || neighborCoords.y > 24) {
								// Off the map
								return;
							}

							var neighborData = { 'coords': neighborCoords, 'range': self.range - oceanData.range };

							if (!$scope.mapData[neighborCoords.x][neighborCoords.y] || neighborData.range > $scope.mapData[neighborCoords.x][neighborCoords.y].range) {
								$scope.todoQueue.push(neighborCoords);
								$scope.mapData[neighborCoords.x][neighborCoords.y] = neighborData;
							}
						});
					});
				}
*/