---
title: A* search
aliases: 
summary: 
created: 2023-10-25 10:06
modified: 2023-10-25 10:06
tags:
---
[[greedy best-first search]]
[[search]]

# Notes
Search algorithm that expands node with lowest value of $g(n) + h(n)$
- $g(n)$ = cost to reach node
- $h(n)$ = estimated cost to goal


**Example**
Add $1$ for every step/action to the [[Manhattan distance]] to the goal.

![[Pasted image 20231025100954.png]]
# Resources
**Papers**