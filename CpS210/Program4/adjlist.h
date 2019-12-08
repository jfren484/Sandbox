#ifndef ADJLIST_H
#define ADJLIST_H
#include <vector>
#include <queue>
#include <functional>

template <typename Weight, bool Undirected=true>
class AdjList {
public:
	typedef unsigned int Vertex;
	struct VertexWeight {
		Vertex v;
		Weight w;
		VertexWeight(Vertex _v, Weight _w) : v(_v), w(_w) { ; }
		bool operator >(VertexWeight rhs) const { return (w > rhs.w); }
	};
	struct Edge {
		Vertex v1, v2;
		Weight w;
		//Edge(Vertex _v1, Vertex _v2, Weight _w) : v1(_v1), v2(_v2), w(_w) { ; }
		bool operator >(Edge rhs) const { return (w > rhs.w); }
	};
	class DisjointSet {
	public:
		int numVertices, numEdges;
	private:
		Edge* edges;
		int counter;
	public:
		DisjointSet(int _numVertices, int _numEdges): numVertices(_numVertices), numEdges(_numEdges), counter(0) {
			edges = new Edge[_numEdges * sizeof(Edge)];
		}
		~DisjointSet() {
			delete[] edges;
		}

		int size() {
			return counter;
		}

		Edge& operator[] (int i) {
			return edges[i];
		}

		void addEdge(Edge e) {
			edges[counter].v1 = e.v1;
			edges[counter].v2 = e.v2;
			edges[counter++].w = e.w;
		}

		void removeLast() {
			--counter;
		}

		int find(int subsets[], int i)
		{
			if (subsets[i] == -1)
				return i;
			return find(subsets, subsets[i]);
		}

		void Union(int subsets[], int srcRoot, int destRoot)
		{
			int srcSet = find(subsets, srcRoot);
			int destSet = find(subsets, destRoot);
			if (srcSet != destSet)
			{
				subsets[srcSet] = destSet;
			}
		}

		int hasLoop()
		{
			int* subsets = new int[numVertices * sizeof(int)];

			memset(subsets, -1, sizeof(int) * numVertices);

			for (int i = 0; i < counter; ++i)
			{
				int srcRoot = find(subsets, edges[i].v1);
				int destRoot = find(subsets, edges[i].v2);

				if (srcRoot == destRoot)
					return 1;

				Union(subsets, srcRoot, destRoot);
			}
			return 0;
		}
	};

	class CompareEdges
	{
	public:
		bool operator() (Edge a, Edge b)
		{
			return a.w > b.w;
		}
	};
private:
	std::vector<std::vector<VertexWeight> > adj;
	std::priority_queue<Edge, std::vector<Edge>, CompareEdges> edges;
	unsigned int nEdges;
public:
	AdjList(): nEdges(0) {; }
	
	int size() {
		return adj.size();
	}

	void addVertex(Vertex u) { 
		// u+1 needs to be <= size
		if (adj.size() <= u) { adj.resize(u+1); }
	}
	
	void addEdge(Vertex src, Vertex dest, Weight w) {
		addVertex(src < dest ? dest : src);
		
		adj[src].push_back({dest, w});
		if (Undirected) {
			adj[dest].push_back({src, w});
		}
		edges.push({src, dest, w});
		++nEdges;
	}

	void kruskals(DisjointSet &dj) {
		
		while (dj.size() < adj.size()-1) {
			Edge currSmallest = edges.top();
			edges.pop();

			dj.addEdge(currSmallest);
			if (dj.hasLoop()) {
				dj.removeLast();
			}
		}
	}
};

#endif
