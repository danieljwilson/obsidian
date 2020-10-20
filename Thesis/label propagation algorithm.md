[[clustering]]
[[graphical models]]
[[graphs]]
[[algorithms]]
[[community detection]]

# Notes
Intuition behind the algorithm is that a single label can quickly become dominant in a densely connected group of nodes, but will have trouble crossing a sparsely connected region.

- fast
- uses [[network structure]] alone as a guide
- doesn't require a pre-defined [[objective function]] or prior information about the communities
- nodes can be assigned **preliminary labels** to narrow down the range of solutions generated
	- i.e. semi-supervised technique
# Resources
**Papers**
- [Raghavan et al., 2007](https://arxiv.org/pdf/0709.2938.pdf)

**Links**
- neo4j [description](https://neo4j.com/docs/graph-algorithms/current/algorithms/label-propagation/)