---
title: standard error
aliases: [standard error of the mean, Standard error]
summary: 
created: 2021-06-16 10:21
modified: 2021-06-16 10:21
tags: []
---

[[statistics]]
[[standard deviation]]
[[summary statistics]]
[[sample mean]]
[[central limit theorem]]
[[population mean]]
[[measure of dispersion]]
[[sampling variance]]
[[t-statistic]]

# Notes
Measure of precision of a sample mean, i.e. the [[variance]] of the [[sample mean]] ($\bar x$).

**ALT1**
==indicates our uncertainty== around the estimate of our mean measurement...

**ALT2**
Summarizes the variability in an estimate due to random sampling.

- means vary between samples
- the sampled means have their own distribution (see [[central limit theorem]])
- [[standard error]] is a type of [[standard deviation]]...
- depends on [[standard deviation]] and [[sample size]]
- [[standard error]] **decreases** as [[sample size]] ($n$) **increases**^[note that the [[standard deviation]] does **not** tend to decrease with increased sample size!]
- useful for calculating a [[confidence interval]]
	- For a "large" sample the [[confidence interval|95% confidence interval]] = $\pm 1.96 * {\rm SE}$
- simplest interpretation of the measure uses a [[t-statistic]]

**FORMULA**
$${\rm var}({\bar x})= \frac{{\sigma ^2 }}{n}$$
$${\rm OR}$$
$${\rm SE} = \frac{\sigma}{\sqrt{n}}$$

Where:
- ${\rm SE}$ = [[standard error]] of the [[sample]]
- $\sigma$  = [[sample]] [[standard deviation]]
- $n$ = number of samples

**Note**
- in general population quantities such as the [[standard deviation]] must be estimated...
- therefore we are calculating ==estimated standard error==
	- replace $\sigma_Y$ with $S(Y_i)$...this can be written as:

$$\hat{SE}(\bar{Y}) = \frac{S(Y_i)}{\sqrt{n}}$$

# Resources
**CODE**
```r
## Calculate standard error manually in R
# note that this removes nas for calculation of SD and SE...
  
SE = sd(Data$ Fish, na.rm=TRUE) /   
 	 sqrt(length(Data$Fish[!is.na(Data$ Fish)]))
```