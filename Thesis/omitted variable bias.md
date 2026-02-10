---
title: omitted variable bias
aliases: [OVB]
summary: 
created: 2022-02-18 21:19
modified: 2022-02-18 21:19
tags: []
---

[[regression]]
[[econometrics]]
[[unbiased estimator]]


# Notes
Occurs when a statistical model leaves out one or more relevant variables.

Bias in the [[ordinary least squares]] estimator that arises when the regressor, $X$, is _correlated_ with an omitted variable. For omitted variable bias to occur, two conditions must be fulfilled:

1.  $X$ is correlated with the omitted variable.
2.  The omitted variable is a determinant of the dependent variable $Y$.

Together, 1. and 2. result in a violation of the first OLS assumption $E(u_i|X_i)=0$. Formally, the resulting bias can be expressed as:

![[Pasted image 20220218212955.png]]

# Resources
**Papers**