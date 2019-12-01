#ifndef ADJLIST_H
#define ADJLIST_H
#include <vector>
#include <queue>

template <typename Weight, bool Undirected=true>
class AdjMatrix {
public:
	typedef unsigned int Vertex;
	const Weight NoEdge;
private:
	std::vector<std::vector<Weight> > adj;
	unsigned int nEdges;
public:
	AdjList(Weight noEdge ) : NoEdge(noEdge) { ; }
	
	void addVertex(Vertex u) { 
		// u+1 needs to be <= size
		if (adj.size() <= u) { adj.resize(u+1); }
		for (auto &vec : adj) { vec.resize(u+1, NoEdge); }
	}
	
	void addEdge(Vertex src, Vertex dest, Weight w) {
		// make sure both src and dest are valid indices
		addVertex(src < dest ? dest : src);
		
		adj[src][dest]=w;
		if (Undirected) {
			adj[dest][src]=w;
		}
		++nEdges;
	}
};

#endif