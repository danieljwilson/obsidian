---
title: frontier
aliases:
  - stack, LIFO
summary: 
created: 2023-10-26 08:01
modified: 2023-10-26 08:01
tags:
---
[[node]]
[[search]]
[[machine learning]]
[[last-in first-out|stack]]

# Notes
Represents all of the states that we **could** explore **next**.

Important to consider how we

**How it works**
- Start with a frontier that contains the initial state.
![[Pasted image 20231026080236.png]]
- Repeat
	- If the frontier is empty then no solution
	- Remove a node from the frontier^[this seems like you are choosing a node from the frontier, you don't really remove it unless the chosen node does not contain the goal state]
	- If the node contains goal state, return solution
	- Expand node, add resulting nodes to the frontier^[again I find this language kind of weird, to me it seems like you are finding all direct possible descendants/children of the node]

To avoid repeated exploration of non-goal states we can add an "explored set" data structure.

**Revised Process**
- Start with a frontier that contains the initial state.
- ==Start with an empty explored set==
- Repeat
	- If the frontier is empty then no solution
	- Remove a node from the frontier
	- If the node contains goal state, return solution
	- ==Add the node to the explored set==
	- Expand node, add resulting nodes to the frontier ==if they aren't already in the frontier or the explored set==.
 ![[Pasted image 20231026081751.png]]
 
# Resources
**Papers**