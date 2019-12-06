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
private:
	std::vector<std::vector<VertexWeight> > adj;
	unsigned int nEdges;
public:
	AdjList() { ; }
	
	void addVertex(Vertex u) { 
		// u+1 needs to be <= size
		if (adj.size() <= u) { adj.resize(u+1); }
	}
	
	void addEdge(Vertex src, Vertex dest, Weight w) {
		// make sure both src and dest are valid indices
		addVertex(src < dest ? dest : src);
		
		adj[src].push_back({dest, w});
		if (Undirected) {
			adj[dest].push_back({src, w});
		}
		++nEdges;
	}
	
	void dijkstra(Vertex start, 
		std::vector<Vertex> &foundBy, // which vertex found ...
		std::vector<Weight> &dist, Weight NoEdge) {
		std::vector<bool> processed(adj.size(), false);
		std::priority_queue<VertexWeight, std::vector<VertexWeight>, 
			std::greater<VertexWeight>> vertices;
		
		// Clear and resize since we do not know what is in them		
		foundBy.clear(); foundBy.resize(adj.size());
		dist.clear(); dist.resize(adj.size(), NoEdge);
		dist[start] = 0;
		
		unsigned int nProcessed = 0;
		vertices.push({start,0});
		while (!vertices.empty() && nProcessed < adj.size()) {
			VertexWeight currPair = vertices.top();
			vertices.pop();
			if (processed[currPair.v]) { continue; }
			
			++nProcessed;
			processed[currPair.v] = true;
			//dist[currPair.v] = currPair.w; // now we know its distance
			
			for (VertexWeight edge : adj[currPair.v]) {
				if (processed[edge.v]) { continue; }
				Weight newDist = edge.w+currPair.w;
				// update distances
				if (NoEdge == dist[edge.v] || newDist < dist[edge.v]) {
					dist[edge.v] = newDist;
					foundBy[edge.v] = currPair.v;
					vertices.push({edge.v, newDist});
				}
			}
		}
	}
	
	void prims(Vertex start, 
		std::vector<Vertex> &foundBy, // which vertex found ...
		std::vector<Weight> &dist, Weight NoEdge) {
		std::vector<bool> processed(adj.size(), false);
		std::priority_queue<VertexWeight, std::vector<VertexWeight>, 
			std::greater<VertexWeight>> vertices;
		
		// Clear and resize since we do not know what is in them		
		foundBy.clear(); foundBy.resize(adj.size());
		dist.clear(); dist.resize(adj.size(), NoEdge);
		
		unsigned int nProcessed = 0;
		vertices.push({start,0});
		while (!vertices.empty() && nProcessed < adj.size()) {
			VertexWeight currPair = vertices.top();
			vertices.pop();
			if (processed[currPair.v]) { continue; }
			
			++nProcessed;
			processed[currPair.v] = true;
			//dist[currPair.v] = currPair.w; // now we know its distance
			
			for (VertexWeight edge : adj[currPair.v]) {
				if (processed[edge.v]) { continue; }
				Weight newDist = edge.w;
				// update distances
				if (NoEdge == dist[edge.v] || newDist < dist[edge.v]) {
					dist[edge.v] = newDist;
					foundBy[edge.v] = currPair.v;
					vertices.push({edge.v, newDist});
				}
			}
		}
	}
};

#endif
