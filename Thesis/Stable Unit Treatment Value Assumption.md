---
title: Stable Unit Treatment Value Assumption
aliases: [no interference, no spillovers, no hidden treatments, excludibility, SUTVA]
summary: 
created: 2021-11-24 19:25
modified: 2021-11-24 19:25
tags: []
---

[[causality]]
[[causal inference]]
[[causal graph framework]]
[[potential outcomes framework]]

# Notes
Two assumptions:

1. **No Interference:**
	1. Units do not interfere with each other
	2. Treatment of one unit does not affect the outcome of another unit
	3. The assumption that the only thing that matters for person $i$’s outcome is whether that person was in the treatment or control condition.
2. **One version of treatment:**
	1. The assumption that the only relevant treatment is the one that the researcher delivers (aka no hidden treatments, or excludibility)

- i.e. person $i$ is not impacted by the treatment given to other people
- also called "no interference" or "no spillovers"
- can be violated if the treatment from one person spills over onto another person, either positively or negatively

**Formula**
![[Pasted image 20211124192657.png]]
where $\vec{W}_{-i}$ is a vector of treatment statuses for everyone except person $i$.

# Resources
**Papers**

**Books**
- Salganik 2020 (good discussion in chapter 4 Mathematical Notes)^[[[Salganik_Matthew_J_2017_Bit by Bit]]]
- section 2.7 of Gerber and Green (2012)
- section2.5 of Morgan and Winship (2014)
- section 1.6 of Imbens and Rubin(2015)