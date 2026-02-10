---
title: coefficient of variation
aliases: []
summary: 
created: 2021-06-16 11:32
modified: 2021-06-16 11:32
tags: []
---

[[statistics]]
[[standard error]]
[[summary statistics]]
[[sample mean]]
[[measure of dispersion]]
[[standard deviation]]

# Notes
Measure of the dispersion of data points in a data series around the mean.

- represents the ratio of the standard deviation to the mean
- useful statistic for comparing the degree of variation from one data series to another, even if the means are drastically different from one another
- ==Note that if the expected return in the denominator is negative or zero, the coefficient of variation could be misleading.==
- particularly helpful when your data follow a lognormal distribution^[In these distributions, the standard deviation changes depending on the portion of the distribution you are assessing. However, the coefficient of variation remains constant throughout a lognormal distribution.]
- Can be used when measurements use different scales (however seems like you could just standardize the data first and then compare SD, no?)
- don't use with [[interval scale]]^[e.g. temperature in celsius or any scale where 0 does not represent absence/lack of characteristic] - only [[ratio scale]]^[e.g. weight, where "zero" weight indicates a complete absence of weight]

**FORMULA**

$${\rm CV} = \frac{\sigma}{\mu} * 100\%$$
Or for sample:
$${\rm CV} = \frac{s}{\overline{x}} * 100\%$$

Where
- $\sigma$/$s$ = [[standard deviation]] (population/sample)
- $\mu$/$\overline{x}$ = [[mean]](population/sample)

**PROBLEM**
Age:
[4,5,6]
SD = 1
CV = 1/5 = 20%
SE = $\frac{1}{\sqrt3}$

[99,100,101]
SD = 1
CV = 1/100 = 1%
SE = $\frac{1}{\sqrt3}$

# Resources
**WEB PAGE**
- [Coefficient of Variation in Statistics](https://statisticsbyjim.com/basics/coefficient-variation/)