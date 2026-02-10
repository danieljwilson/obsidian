---
title: Hamaker_EL_2018_At the Frontiers of Modeling Intensive Longitudinal Data
aliases: []
summary: 
created: 2023-03-30 13:50
modified: 2023-03-30 13:50
tags: []
---

# Info
**Title**: At the Frontiers of Modeling Intensive Longitudinal Data
**Journal**: #multivariate-behavioral-research
**Year**: #y2018 
**Authors**: [[Ellen L. Hamaker]], [[T. Asparouhov]], [[A. Brose]], [[F. Schmiedek]], [[B. Muthen]]
**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:

[[intensive longitudinal data]]
[[dynamic structural equation modeling|DSEM]]

# Notes
## Summary

>Here we use dynamic multilevel modeling, as it is incorporated in the new dynamic structural equation modeling (DSEM) toolbox in Mplus, to analyze the affective data from the COGITO study.

#### The Study
- ==100 people analyzed for 100 days==
- Composite neg/pos affect
- multilevel vector autoregressive model
	- to allow for individual differences in means, autoregressions, and cross-lagged effect
- extend the model to include random residual variances and covariance ^[What does this mean?]
- investigate whether prior depression affects later depression scores through the random effects of the daily diary measures

Value of [[intensive longitudinal data]] is that it ==provides a
unique opportunity to study processes within-person as they unfold over time (Bolger & Laurenceau, 2013; Hamaker & Wichers, 2017; Walls & Schafer, 2006)

**Bottom up approach**
- also referred to as *replicated time series analyses*
- data are first analyzed per person, and subsequently similarities between the dynamics of different individuals are sought
	- there are packages that search for these similarities...
- purely idiographic research form that allows for a maximum degree of idiosyncracies in the results.

**Top down approach**
- also referred to as *dynamic multilevel modeling*
- based on choosing a particular time series model or differential equation to describe the variability within an individual at level 1, while allowing for quantitative differences at level 2 in the parameters that govern these dynamics.
- somewhere in between idiographic and nomothetic research
- assumed that the functional form of the level 1 model is the same for individuals^[this seems like a really strong assumption. basically seems like you are saying you know the algorithm by which a process unfolds...just need to tweak the parameters to describe different individuals...]
  
## Thoughts


# Resources
