---
title: transition model
aliases:
  - transition matrix
summary: 
created: 2023-10-23 09:37
modified: 2023-10-23 09:37
tags:
---
[[search]]
[[agent]]
[[state(cs)]]
[[action|actions]]
[[machine learning]]
[[state space]]
[[goal test]]
[[path cost]]
[[machine learning]]
[[artificial intelligence|AI]]
[[CS50AI Intro to AI with Python - Harvard]]

# Notes
A description of what state results from performing any applicable action in any state. 

- More precisely, the transition model can be defined as a function.
	- Upon receiving state `s` and action `a` as input, `Results(s, a)` returns the state resulting from performing action `a` in state `s`. 
 
 **EXAMPLE**
 Given a certain configuration of a _15 puzzle_ (state `s`), moving a square in any direction (action `a`) will bring to a new configuration of the puzzle (the new state).
# Resources
**Papers**