import sys
from collections import deque

class Point:
	def __init__(self, row = 0, col = 0):
		self.row, self.col = row, col

class GridData:
	location, from_location, value, steps = Point(), Point(), 0, 0

class Square:
	cells = []
	
	def __init__(self, rows, cols):
		self.rows, self.cols = rows, cols
		for i in range(rows * cols):
			self.cells.append(GridData())

	def at(self, row, col):
		return self.cells[self.cols * row + col]

def calculateLongestRun(grid):
	todoQueue = deque([])

	for row in range(grid.rows):
		for col in range(grid.cols):
			todoQueue.append(grid.at(row, col).location)

	directions = [Point(-1, 0), Point(1, 0), Point(0, -1), Point(0, 1)]

	while len(todoQueue):
		coords = todoQueue.popleft()

		for direction in directions:
			neighborCoords = Point(coords.row + direction.row, coords.col + direction.col)

			if neighborCoords.row < 0 or neighborCoords.row >= grid.rows or neighborCoords.col < 0 or neighborCoords.col >= grid.cols:
				continue

			# Neighbor value must be lower to move there.
			if grid.at(neighborCoords.row, neighborCoords.col).value >= grid.at(coords.row, coords.col).value:
				continue

			steps = grid.at(coords.row, coords.col).steps + 1
			if steps > grid.at(neighborCoords.row, neighborCoords.col).steps:
				todoQueue.append(neighborCoords)
				grid.at(neighborCoords.row, neighborCoords.col).from_location = coords
				grid.at(neighborCoords.row, neighborCoords.col).steps = steps

	stepsList = []
	for row in range(grid.rows):
		for col in range(grid.cols):
			stepsList.append(grid.at(row, col).steps)

	return max(stepsList) + 1

# main
parts = []

testCases = int(sys.stdin.readline())
for tc in range(testCases):
	parts = sys.stdin.readline().split()
	name = parts[0]
	rows = int(parts[1])
	cols = int(parts[2])

	grid = Square(rows, cols)

	for row in range(rows):
		parts = sys.stdin.readline().split()

		for col in range(cols):
			grid.at(row, col).location.row = row
			grid.at(row, col).location.col = col
			grid.at(row, col).value = int(parts[col])

	longestRun = calculateLongestRun(grid)

	print(f"{name}: {longestRun}")
