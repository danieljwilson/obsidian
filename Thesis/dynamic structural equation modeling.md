---
title: dynamic structural equation modeling
aliases: [DSEM]
summary: 
created: 2022-10-11 09:11
modified: 2022-10-11 09:11
tags: []
---

[[statistics]]
[[structural equations modeling]]
[[confirmatory factor analysis]]
[[intensive longitudinal data]]

# Notes

- Model for one unit measured intensively over time
- focus on predicting future state from past state (inertia or carry-over)
- which variable is **leader** and which is the **lag** (**spillover** from one process to another)
- [[dynamic structural equation modeling|DSEM]] is fully multivariate
![[Pasted image 20221011093117.png]]
- Eventually we want to move from [[idiographic]] approach to [[nomothetic]] analysis in order to **generalize inferences**
![[Pasted image 20221011093738.png]]
![[Pasted image 20221011093925.png]]
- can also incorporate individual difference variables as predictors in these equations

#### [[path analysis]]
- aka [[simultaneous equations]] model
- can have multiple predictors and multiple outcomes...
- can have a causal chain in which one outcome predicts another...
- involves exclusively observed variables
- confirmatory factor analysis allows us to consider latent variables
#### [[confirmatory factor analysis]]
- latent variables

#### [[structural equations modeling|SEM]]
- combines structural model of path analysis along with the measurement model of [[confirmatory factor analysis]]
**Modeling Steps**
1. Specification
2. Identification
3. Estimation
4. Evaluation
5. Re-specification
6. Interpretation
   - which effects significant? 
   - which are practically meaningful?
👇
![[Pasted image 20230330154438.png]]
==Traditionally SEM focuses on single time point==
- there are already well-developed [[structural equations modeling|SEM]]s for longitudinal panel data (3-6 assessments)
	- e.g. **[[Auto-Regressive Cross-Lagged Panel Model]]**
	![[Pasted image 20221011092031.png]]
	- [[Latent Curve Model]]^[Seems like it is assuming linearity in changes over time??]
		- estimates underlying "trajectory"
		- popular approach to modeling panel data (typically small number of widely spaced repeated measures)
	- ![[Pasted image 20230330154908.png]]

### Questions
How justified is the assumption of [[stationarity]]?
- idea that [[mean]], [[variance]], and [[correlation]]s of [[repeated measures]] (at a given lag) do not change over time.
- can de-trend model, or expand the model to account for changes, but this is not part of the standard model

# Resources
**Papers**
- Hamaker et al., 2018
- Gidhagen et al., 2021

**Video**
- [Bauer and Curran Livestream Workshop](https://centerstat.org/apa-ild/)![[ILD-Day-3.pdf]]