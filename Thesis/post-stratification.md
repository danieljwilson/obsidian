---
title: post-stratification
aliases: []
summary: 
created: 2021-11-15 12:40
modified: 2021-11-15 12:40
tags: []
---

[[measures|measure]]
[[measure development best practices]]
[[total survey error framework]]
[[surveys]]
[[experimental social psychology]]
[[experimental design]]
[[error]]
[[probability sampling]]
[[non-probability sampling]]
[[multilevel regression with post-stratification]]
[[calibration estimators]]
[[stratified sampling]]

# Notes
A technique that is also widely used to adjust probability samples that have coverage errors and nonresponse.

- use auxiliary information about the [[target population]] to help improve the estimate that comes from a sample
- helps correct for an imbalanced sample by bringing in auxiliary information about the sizes of the groups
- can produce unbiased estimates under the [[homogeneous-response-propensities-within-groups assumption]]

---
To make an estimate with [[nonresponse]] you can use [[auxiliary information]] to conduct [[post-stratification]]. 

The post-stratification estimator is
![[Pasted image 20211118095838.png]]
where:
- $cor(\phi, y)^{(h)}$ = correlation between response propensity and measure/outcome
- $S(y)^{(h)}$ = standard deviation of the outcome/measure
- $S(\phi)^{(h)}$ = standard deviation of the response propensity
- $\bar\phi^{h}$ = mean response propensity

and $h$ is the stratification group (e.g. state of residence).

- the overall bias will be small if the bias in each post-stratification group is small
# Resources
**Papers**
- Holt and Smith, 1979
- Smith, 1991
- Little, 1993

**Books**
- Särndal, Swensson, and Wretman, 2003 (section 7.6)