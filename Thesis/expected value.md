---
title: expected value
aliases: []
summary: 
created: 2021-12-15 09:33
modified: 2021-12-15 09:33
tags: []
---

[[statistics]]
[[probability]]
[[mean]]
[[sample statistics]]

# Notes

- Expectations can be written as a weighted average of all possible values that the variable $Y_i$ can take on, with weights given by the probability these values appear in the population
- For a given population, there is only one $E[Y_i]$, while there are many $Avg_n[Y_i]$, depending on how we choose $n$ and just who ends up in our sample
- $Avg_n[Y_i]$ can also be written as $\bar{Y}$...this is a good estimator of $E[Y_i]$
	- If this **is the case** then $\bar{Y}$ is an [[unbiased estimator]] of the parameter. Formally:
		- UNBIASEDNESS OF THE SAMPLE MEAN $E[\bar{Y}] = E[Y_i]$
- Because $E[Y_i]$ is a fixed feature of a particular population,we call it a [[parameter]]

# Resources
**Papers**