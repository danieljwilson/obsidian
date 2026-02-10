---
title: Horvitz-Thompson estimator
aliases: []
summary: 
created: 2021-11-18 09:15
modified: 2021-11-18 09:15
tags: []
---

[[statistics]]
[[stratified sampling]]
[[probability sampling]]
[[auxiliary information]]

# Notes
A weighted sample mean where the weights are inversely related to the probability of selection.

- the less likely a person is to be included in the sample, the more weight that person should get in the estimate.

**EQUATION**
![[Pasted image 20211118082621.png]]
where $\hat{\bar{y}}$ is the estimate of the rate (e.g. unemployment) and $\pi_i$ is person $i$'s probability of inclusion.

The [[Horvitz-Thompson estimator]] can also be rewritten as:
![[Pasted image 20211118091339.png]]
where $w_i = \frac{1}{\pi_i}$

---
Note that the probability of inclusion, $\pi_i$ is:
![[Pasted image 20211118092252.png]]
where $n_h$ is the size of the sample (taken from a given strata), and $N_H$ is the total size of the strata.

# Resources
**Papers**
- Horvitz and Thompson, 1952