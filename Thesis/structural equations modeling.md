---
title: structural equations modeling
aliases: [SEM]
summary: 
created: 2021-11-19 10:50
modified: 2021-11-19 10:50
tags: []
---

[[statistics]]
[[latent variables]]
[[factor analysis]]
[[measures|measurement]]
[[path analysis]]
[[regression]]
[[simultaneous equations]]
[[error]]
[[measurement error]]
[[random error]]
[[causality]]
[[nested models]]
[[model identification]]

# Notes
A set of statistical techniques used to measure and analyze the relationships of observed and latent variables.

- can be seen as a combination of [[path analysis]] with [[confirmatory factor analysis]]
- specify 'systems' of relationships rather than a dependent variable and set of predictors
- examines linear relationships among variables, while simultaneously accounting for [[measurement error]]
- uses the [[variance/covariance matrix]] ($S$)
	- goal is to summarise $S$ by specifying a simpler underlying structure (the SEM)
- estimates model parameters using [[maximum likelihood estimate|maximum likelihood]]
	- also use this to select the best model...$\chi^2$^[though I think this only works with nested models]
	- **assumption**: ==multivariate normal data==!
- **Parameter Constraints**
	- we fix some model parameters to specific values (often 0 or 1)
	- constrain other model parameters to be equal to other model parameters
- Generally we want an [[over-identified model]]


# Resources
**Papers**