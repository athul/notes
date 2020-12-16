---
title: "Graph Theory - Module 6"
summmary: "Notes of GCT mod 6"
tags: ["College","Notes"]
---
# Algorithms in Graphs

## Input Repr

### Adjacency Matrix
- Cannot be used with parallel edges
- requires $n^{2}$ bits of memory

### Incidence Matrix
- Parallel Edges can be represented
- Repesented by $A(G)$
- requires $n.e > n^{2}$ bits of memory
### Edge Listing
- List out edges in ordered edge pairs
- Eg: $(1,2),(2,3) \dots$
- can also repr self loops and $\parallel$ edges
- Bits req to label(1 thorugh $n$) each vertex is b, where
$2^{b-1}< n \leq 2^{b}$
- If the matrix is sparse, edge listing is more efficient

### Successor Listing
- Number vertexes from $1 - n$
- Repr as a linear array
- $n(1+d_{avg})$ is the storage requirements

---

## Algorithms for Connectedness and Components

- Uses fusion of adjacent vertices

1. We start with some vertice in the graph and fuse all vertices that are adjacent to it
2. 
