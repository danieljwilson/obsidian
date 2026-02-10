---
title: multilevel model
aliases: []
summary: 
created: 2022-10-06 09:12
modified: 2022-10-06 09:12
tags: []
---
[[statistics]]
[[intra-class correlation]]

# Notes

##### Two forms of dependence to account for!
- standard linear model assumes [[independence]] of observations!
	- not the case for observations that are nested within some construct (person, school, etc.)
- [[serial correlation]] is also an issue (especially when time points are close together)
	- knowing one observation allows us to predict the next one
	- standard MLM does not account for this, but it is an issue in longitudinal data, especially when sampling events close to each other.
	- can use a [[continuous-time autoregressive residual structure]]

**Simple Equations (level 1 and level 2)**
![[Pasted image 20221006092619.png]]
![[Pasted image 20221006093239.png]]
👆 Reduced form has both a [[fixed effects|fixed effect]], $\gamma$, (average heart rate of population for example), 
and [[random effect]] $u$ (or [[residual]]).

- Predictors at level 1 are time dependent
	- e.g. level of stress
- Predictors at level 2 are time independent (e.g. sex)
	- They can also predict slopes!
		- Does sex affect the slope of the stress predictor? Are females more susceptible to stress?

**Example**
Heart rate
![[Pasted image 20221006092342.png]]

# Resources
**Papers**

**Tutorials**
- [Multilevel Modeling Primer in TensorFlow Probability](https://www.tensorflow.org/probability/examples/Multilevel_Modeling_Primer)

**Workshop**
Dan Bauer and Patrick Curran
![[ILD-Day-2.pdf]]