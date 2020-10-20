[[clustering]]
[[graphical models]]
[[graphs]]
[[algorithms]]
[[community detection]]

# Notes
Algorithm for detecting communities in networks. 

- maximizes a modularity score for each community
- the modularity quantifies the quality of an assignment of nodes to communities. 
- idea is to evaluate how much **more densely connected** the nodes within a community are, compared to how connected they would be in a [[random network]].
- a hierarchical clustering algorithm
	- recursively merges communities into a single node and executes the modularity clustering on the condensed graphs.

# Resources
**Papers**
- [Lu, 2014](https://arxiv.org/pdf/1410.1237.pdf)