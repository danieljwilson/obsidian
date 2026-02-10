---
title: bias
aliases: [Bias, bias error]
summary: 
created: 2020-12-21 09:44
modified: 2020-12-21 09:44
tags: []
---

[[accuracy]]
[[measurement error]]
[[measurement methods]]
[[precision]]
[[variance]]
[[total survey error framework]]

# Notes
A measure of how far the expected value of the estimate is from the **true value** of the parameter being estimated.

- low **systematic** [[measurement error]]
- bias is [[systematic error]], whereas [[variance]] is [[random error]]
- in [[causal inference]] it often arises when the treated and untreated are ==different for reasons other than the treatment itself==
	- $E[Y_0|T=1] - E[Y_0|T=0]$
	- Can be eliminated with [[randomized controlled experiment|RCT]]s

# Resources