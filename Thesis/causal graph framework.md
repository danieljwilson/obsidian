---
title: causal graph
aliases:
  - causal graph
  - directed acyclic graph
  - DAG
  - directed graph
summary: 
created: 2021-11-09 12:17
modified: 2021-11-09 12:17
tags:
---

[[Judea Pearl]]
[[causality]]
[[causal inference]]
[[mathematics]]
[[potential outcomes framework]]

# Notes
Help determine the set of variables needed to avoid confounding...

Help make explicit the assumptions that go into achieving [[ignorability]]

A [[causal graph framework|DAG]] will tell us:
- which variables are [[independence|independent]] from each other
- which variables are [[conditional independence|conditionally independent]] from each other
	- i.e. was that we can ==factor and simplify== the joint distribution


**RULES**
- no undirected paths
- no cycles
**TERMS**
- vertices/nodes/variables
- edge/directed path
- parents
- children
- ancestors
- descendents


# Resources
**Papers**
- Pearl, Glymour, and Jewell (2016)
- Pearl (2009)