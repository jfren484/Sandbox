#ifndef MULTILIST_H
#define MULTILIST_H

#include <vector>
#include <iostream>

template <typename Weight>
class Multilist {
public:
    typedef unsigned int Vertex;
    typedef int Index;
    const Index EndOfList;

    struct Edge {
        Vertex u, v;
        Weight w;
        Index nextU, nextV;
        Edge(Vertex _u=0, Vertex _v=0, Weight _w=0, Index _nu=0, Index _nv=0)
            : u(_u), v(_v), w(_w), nextU(_nu), nextV(_nv) { ; }

        // Assumes that x is either u or v
        Index next(Vertex x) { return ((x == u) ? nextU : nextV); }
    };

    class Iterator {
        const Vertex u;
        std::vector<Edge> *pEdges;
        Index pos;
    public:
        Iterator(Vertex _u=0, std::vector<Edge> *_pEdges=nullptr, Index _pos=0)
            : u(_u), pEdges(_pEdges), pos(_pos) { ; }
        bool operator ==(const Iterator rhs) const {
            return (u == rhs.u && pEdges == rhs.pEdges && pos == rhs.pos);
        }

        bool operator !=(const Iterator rhs) const { return !((*this) == rhs); }

        Edge operator *() {
            if (nullptr != pEdges && pos >= 0) {
                return (*pEdges)[pos];
            }
            return Edge();
        }

        Iterator operator ++() {
            if (nullptr != pEdges && pos >= 0) {
                pos = (*pEdges)[pos].next(u);
            }
            return (*this);
        }
    };
private:
    std::vector<Index> adj;
    std::vector<Edge> edges;
public:
    Multilist() : EndOfList(-1) { ; }
    Multilist(std::istream & is) : EndOfList(-1) {
        Vertex u, v;
        Weight w;
        while (is >> u >> v >> w) {
            addEdge(u,v,w);
        }
    } 
    void addVertex(Vertex u) {
        // is u already a vertex?
        if (u+1 < adj.size()) { return; }
        adj.resize(u+1, EndOfList);
    }

    void addEdge(Vertex u, Vertex v, Weight w) {
        // make sure both vertices are valid
        addVertex((u < v) ? v : u);
        Index new_location = edges.size();
        edges.push_back({u, v, w, adj[u], adj[v]});
        adj[u] = adj[v] = new_location;
    }

    // the first location is empty
    typename std::vector<Edge>::const_iterator begin() const { return edges.begin(); }
    typename std::vector<Edge>::const_iterator end() const { return edges.end(); }

    Iterator begin(Vertex u) { return Iterator(u, &edges, adj[u]); }
    Iterator end(Vertex u) { return Iterator(u, &edges, EndOfList); }

    std::ostream &print(std::ostream &os, char sep=' ') {
        for (Vertex v = 0; v < adj.size(); ++v) {
			for (Iterator pos=begin(v); pos != end(v); ++pos) {
				os << '(' << (*pos).u << ", " << (*pos).v << ", " << (*pos).w << ") ";
			}
			os << std::endl;
		}
        return os;
    }

    // return the total cost as the return value
    Weight Prims(std::vector<Vertex> &parent, Vertex start=0) {
        return 0;
    }
}; // end of class Multilist

#endif // for ifndef MULTILIST_H
