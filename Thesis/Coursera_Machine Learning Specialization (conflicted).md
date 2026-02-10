---
title: Coursera_Supervised Machine Learning - Regression and Classification
aliases: []
summary: 
created: 2022-06-23 11:50
modified: 2022-06-23 11:50
tags: [learning, Coursera]
---

[[machine learning]]
[[training data|training data set]]
[[algorithms]]
[[Andrew Ng]]

# 1. Regression and Classification
## Week 1
### Regression
$x$ = input variable = feature
$y$ = output variable = target
$m$ = number of training examples

($x, y$) = single training example
($x^i, y^i$) = $i$th training example

$f_{w,b}(x^{(i)}) = wx^{(i)} + b$

### Cost Function

We want to find $w$, $b$ such that $\hat{y}^{(i)}$ (our prediction) is close to the real value of $y$ (target) for all "points". In other words you feed in the $x^{(i)}$ value and estimate the $y$ value ($\hat{y}^{(i)}$) and then see how far off it is...then use a [[cost function]] to minimize this [[error]]...
![[Pasted image 20220705114033.png]]

We want to minimize $J$ as a function of $w$ and $b$

![[Pasted image 20220706134548.png]]

### Regularization
![[Pasted image 20220902114621.png]]
![[Pasted image 20220902114719.png]]




# 2. Advanced Learning Algorithms
![[Pasted image 20220906102825.png]]
## Week 1
Neural Networks

## Week 2
[[objective function|loss function]] is the error on a given example or trial, while the [[cost function]] is the AVERAGE of the [[objective function|loss function]] across all trials/samples.

 ![[Pasted image 20221012091800.png]]

