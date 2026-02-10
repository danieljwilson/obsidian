---
title: greedy best-first search
aliases: 
summary: 
created: 2023-10-25 10:09
modified: 2023-10-25 10:09
tags:
---
[[A* search]]
[[informed search algorithm]]
[[node]]
# Notes
Expands the node that is the closest to the goal, as determined by a **heuristic function** _h(n)_. 

- As its name suggests, the function estimates how close to the goal the next node is, but it can be mistaken. 
- The efficiency of the _greedy best-first_ algorithm depends on how good the heuristic function is.

# Resources
**Papers**