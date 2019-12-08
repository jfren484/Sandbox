import sys

class Graph:
	def __init__(self):
		self.graph = {}

	def add+vertex(self, v):
		if not self.graph.has_key(v):
			self.graph[v] = set()

	def add_edge(self, src, dest):
		self.addVertex(src)
		self.addVertex(dest)
		
		self.graph[src].add(dest)
		self.graph[dest].add(src)

	def find_shortest_path(self, start, end, path=[]):
        path = path + [start]
		
        if start == end:
            return path

        if not self.graph.has_key(start):
            return None

        shortest = None
        for node in self.graph[start]:
            if node not in path:
                newpath = self.find_shortest_path(node, end, path)
                if newpath:
                    if not shortest or len(newpath) < len(shortest):
                        shortest = newpath

        return shortest

# main
testCases = int(sys.stdin.readline())
sys.stdin.readline() # read the blank line

for tc in range(testCases):
	vals = sys.stdin.readline().split()
	roads = int(parts[0])
	queries = int(parts[1])

	g = Graph()

	for i in range(roads):
		cities = sys.stdin.readline().split()
		a = cities[0][0]
		b = cities[1][0]
		g.addEdge(a, b)

	for i in range(queries):
		cities = sys.stdin.readline().split()
		a = cities[0][0]
		b = cities[1][0]
		
		shortest = g.find_shortest_path(a, b)

		print(shortest)
