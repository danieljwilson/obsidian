---
title: maximum likelihood estimate
aliases: [maximum likelihood]
summary: 
created: 2021-08-08 10:18
modified: 2021-08-08 10:18
tags: []
---

[[modeling]]
[[model fitting]]
[[logistic regression]]

# Notes
- More flexible than [[mean squared error|MSE]]
	- adds noise (typically Gaussian but you can change this)
- Can be problematic at scale
- Actually use log-likelihood instead of likelihood
	- specifically minimize the negative log-likelihood ([[cross-entropy loss]])
- [[unbiased]] and efficient


# Resources
- Dylan Festa's [notes](https://neurostars.org/t/some-notes-on-maximum-likelihood-estimate/14447) ([[Neuromatch]] TA)