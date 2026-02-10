---
title: exclusion restriction
aliases: []
summary: 
created: 2021-11-09 11:42
modified: 2021-11-09 11:42
tags: []
---

[[causality]]
[[causal inference]]
[[instrumental variable]]

# Notes
Idea that **all** of the **effect** of the treatment assignment (or secondary treatment/encouragement) ($Z$) is passed through the (primary) treatment ($D$) itself. In other words, one has to assume that there is no direct effect of encouragement on outcomes ($Y$)

- i.e. Cannot have common cause of the instrument and the outcome
- Assumption required for causal models with [[encouragement design]]
- this is a **strong assumption**
- needs to be justified on a case-by-case basis
- cannot be justified with just a random assignment of the encouragement (see example)
- common practical challenge with instrumental variable analysis comes when the encouragement has little effect on the uptake of treatment ($ITT_W$ is small)...called a ==weak instrument==
- problem with weak instruments is that $\widehat{CACE}$ ([[complier average causal effect|CACE]]) can be sensitive to small biases in $\widehat{ITT_Y}$ —potentially due to violations of the exclusion restriction—because these biases get magnified by a small $\widehat{ITT_W}$

**Graphical Model**
![[Pasted image 20211109115319.png]]

**EXAMPLE**
![[Pasted image 20211110121408.png]]

# Resources
**Papers**
- Angrist, Imbens, and Rubin 1996
- Imbens and Rosenbaum 2005
- Murray 2006
- Jones 2015