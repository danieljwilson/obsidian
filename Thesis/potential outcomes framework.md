---
title: potential outcomes framework
aliases: []
summary: 
created: 2021-11-09 12:18
modified: 2021-11-09 12:18
tags: []
---

[[causality]]
[[causal inference]]
[[causal graph framework]]
[[Donald Rubin]]
[[natural experiments]]

# Notes

Consists of three main elements:
1. `units`
2. `treatments`
3. `potential outcomes`

In addition to defining the treatment effect for an entire population, it is possible to define a treatment effect for a subset of people. This is typically called a [[conditional average treatment effect]] (CATE).

**[[Stable Unit Treatment Value Assumption]]** (SUTVA)
the assumption that the only thing that matters for person $i$’s outcome is whether that person was in the treatment or control condition.

**EXAMPLE**
In Angrist (1990) looking at the effect of military service on earnings:
`units` = people eligible for the 1970 draft ($i = 1, ..., N$)
`treatments` = serving in military ($W_i = 1$) and not serving in military ($W_i = 0$)
`potential outcomes` =  amount that they *would* have earned in 1978 if they served in the military ($Y_i(1)$), and the amount that they would have earned in 1978 if they did not serve in the military ($Y_i(0)$)

- $Y_i(1)$ and $Y_i(0)$ are considered ==fixed quantities==
- $W_i$ is a ==[[random variable]]==

The [[causal effect]] of the [[treatment]] on person $i$ at $\tau_i$:
$$\tau_i = Y_i(1) - Y_i(0)$$

![[Pasted image 20211109123045.png]]

**Note**: The physical inability to observe both potential outcomes - $Y_i(1)$ and $Y_i(0)$ - has been called the [[fundamental problem of causal inference]]...

This means that we can't estimate an individual-level treatment effect but we can estimate the [[average treatment effect]] for all `units`.

![[Pasted image 20211109123947.png]]

![[Pasted image 20211109124001.png]]

However we need to keep in mind that treatment assignment **may not be independent** of outcome (it it is then that is a conditions sometimes called [[ignorability]]). And without random assignment of treatment, the treatment allocation is probably related to potential outcomes.
![[Pasted image 20211109124523.png]]
Basically we want to compare the compliers in the above table...

# Resources
**Papers**