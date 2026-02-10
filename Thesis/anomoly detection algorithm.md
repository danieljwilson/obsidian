---
title: anomoly detection algorithm
aliases: []
summary: 
created: 2022-12-27 08:43
modified: 2022-12-27 08:43
tags: []
---
[[machine learning]]
[[algorithms]]
[[gaussian distribution]]
[[probability]]

# Notes
Essentially a density estimation with a threshold that categorizes samples into anomalous or not.

- Calculate what is the probability of : $p(\vec{x}) = p(x_1;\mu_1,\sigma^2_1) * p(x_2;\mu_2,\sigma^2_2) *...* p(x_n;\mu_n,\sigma^2_n)$
- Alt notation:![[Pasted image 20221227083832.png]]
**Steps**
![[Pasted image 20221227084104.png]]

**EXAMPLE**
![[Pasted image 20221227084420.png]]

# Resources
**Papers**

**Video**
- [[Andrew Ng]] [Video](https://www.coursera.org/learn/unsupervised-learning-recommenders-reinforcement-learning/lecture/nZcu2/anomaly-detection-algorithm)
- 