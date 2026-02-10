---
title: variance
aliases: [variance error, variability]
summary: 
created: 2021-08-08 10:05
modified: 2021-08-08 10:05
tags: []
---

[[linear algebra]]
[[matrix rank]]
[[multicollinearity]]
[[statistics]]
[[correlation]]
[[covariance matrix]]
[[covariance]]
[[bias]]
[[bias-variance tradeoff]]
[[standard error]]
[[sampling variance]]

# Notes
The variability of prediction when data changes

- variance is a summary of variability
- Variance is a descriptive fact about the [[distribution]] of $Y_i$
- The Variance is just the same as the **Covariance** of a variable and itself.

So while the [[covariance]] of $A$ and $B$ is expressed as:
$$\mathbb{E}(AB) - \mathbb{E}(A)\mathbb{E}(B)$$
The [[variance]] of $A$ is:
$$\mathbb{E}(AA) - \mathbb{E}(A)\mathbb{E}(A)$$
or
$$\mathbb{E}(A^2) - \mathbb{E}(A)^2$$

** Sample Variance**
$$S(Y_i)^2 = \frac{1}{n}\sum_{i=1}^n(Y_i - \bar{Y})^2$$
This is just the average of the differences squared. Take the square root to get the [[standard deviation]].
# Resources
