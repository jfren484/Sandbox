import sys

class Point:
    def __init__(self, row = 0, col = 0):
        self.row, self.col = row, col
directions = [Point(1, 0), Point(0, -1), Point(-1, 0), Point(0, 1)]

# main
while (True):
    line = input()
    parts = line.split()
    size = int(parts[0])
    pos = int(parts[1])

    if (size == 0 or pos == 0):
        break

    row = size//2+1
    col = size//2+1
    dir = 0
    len = 1
    currPos = 1
    while currPos < pos:
        if len > pos - currPos:
            len = pos-currPos
        row += directions[dir].row*len
        col += directions[dir].col*len
        currPos += len
        dir = (dir + 1) % 4
        if dir % 2 == 0:
            len += 1

    print("Line = " + str(row) + ", " + "column = " + str(col) + ".")