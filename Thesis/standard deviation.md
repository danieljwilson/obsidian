---
title: standard deviation
aliases: []
summary: 
created: 2021-06-16 10:19
modified: 2021-06-16 10:19
tags: []
---

[[statistics]]
[[standard error]]
[[summary statistics]]
[[sample mean]]
[[measure of dispersion]]
[[coefficient of variation]]
[[Bessel's correction]]

# Notes
Measure of variability, used as an ==estimate of the variability of the population from which the sample was drawn==.

- about 95% of individuals will have values within 2 standard deviations of the mean
- valid measure of variability regardless of the distribution^[for skewed distributions those outside the 2 SD limit may be all at one end...and it can make sense to choose a different summary statistic when dealing with a [[skewed distribution]]]
- is not generally affected by [[sample size]] ($n$)...

**FORMULA**
$$\sigma = \sqrt{\frac{1}{N-1} \sum_{i=1}^N (x_i - \overline{x})^2}$$^[In statistics, Bessel's correction is the **use** of **n** − **1 instead of n** in the formula for the **sample** variance and **sample standard deviation**, where **n** is the **number** of observations in a **sample**. This method corrects the bias in the estimation of the **population** variance]^[Has to do with [[degrees of freedom]] - if you know one value and the mean you automatically know the remaining value - it does not contain any additional information. Not sure why exactly this means we do it this way...]

# Resources
**Web Page**
- [Why use n-1 when calculating a standard deviation?](https://www.graphpad.com/support/faqid/1383/)