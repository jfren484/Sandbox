import sys

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

	# TODO: check if you can bicolor

	cond = ""

	print(f"{cond}BICOLORABLE.")
	
	nodes = int(input())
