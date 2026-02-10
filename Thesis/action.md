---
title: action
aliases:
  - actions
summary: 
created: 2023-10-23 09:33
modified: 2023-10-23 09:33
tags:
---
[[search]]
[[agent]]
[[state(cs)]]
[[transition model]]
[[machine learning]]
[[state space]]
[[goal test]]
[[path cost]]
[[machine learning]]
[[artificial intelligence|AI]]
[[CS50AI Intro to AI with Python - Harvard]]
# Notes
Choices that can be made in a [[state]]. 

- actions can be defined as a function. 
- Upon receiving state `s` as input, `Actions(s)` returns as output the set of actions that can be executed in state `s`. 

**EXAMPLE**
in a _15 puzzle_, the actions of a given state are the ways you can slide squares in the current configuration (4 if the empty square is in the middle, 3 if next to a side, 2 if in the corner).

![[Pasted image 20231023093515.png]]
# Resources
**Papers**