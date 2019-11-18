import sys

def isBicolorable(graph, colors):
	toCheck = [0]
	colors[0] = 1
	while len(toCheck):
		curr = toCheck.pop(0)
		color = 1 if colors[curr] == 2 else 2
		for neighbor in graph[curr]:
			if colors[neighbor] == 0:
				colors[neighbor] = color
				toCheck.append(neighbor)
			elif colors[neighbor] != color:
				return False
	return True

nodes = int(input())

while (nodes):
	graph = {}
	colors = {}

	# Set up dictionaries for edges and colors
	# (color is 1 or 2 - 0 means not colored yet)
	for i in range(nodes):
		graph[i] = set()
		colors[i] = 0

	# Read all edges and create graph
	edges = int(input())
	for i in range(edges):
		ints = list(map(int, input().split()))
		graph[ints[0]].add(ints[1])
		graph[ints[1]].add(ints[0])

	# Check if you can bicolor
	bi = isBicolorable(graph, colors)

	print(f"{'' if bi else 'NOT '}BICOLORABLE.")
	
	nodes = int(input())
