---
title: Angrist_JD_Mastering Metrics_The path from cause to effect
aliases: []
summary: 
created: 2021-12-14 10:36
modified: 2021-12-14 10:36
tags: [book]
---

# Info
**Title**: 
**Journal**: 
**Year**:
**Authors**: [[Joshua D. Angrist]], [[Jörn-Steffen Pischke]]
**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:

[[causality]]
[[econometrics]]

# Notes
## Summary
### Introduction
Going to introduce 5 main tools:
1. [[random assignment]]
2. [[regression]]
3. [[instrumental variable]]
4. [[regression discontinuity design]]
5. [[differences in differences]]

### 1 | Randomized Trials
Randomized assignment eliminates [[selection bias]]
- this means the [[conditional expectation]] is equal for different randomly assigned groups! (as long as sample is large enough, see [[law of large numbers]])
- can have both [[random sample]]ing and [[random assignment]]

**Example of Affordable Care Act...**
The causal effect of insurance on health is:
$$Y_{1i}-Y_{0i} = \kappa$$
Where $Y$ is the outcome and $1i$ is subject $i$ under treatment, and $0i$ is that same subject without treatment.

- [[average causal effect]] + [[selection bias]] = Difference in group means
	- [[selection bias]] in this case is defined as the difference in average $Y_{0i}$ between the groups being compared.
		- This is everything about person $i$ related to health, ==other than insurance status==
	- if the only source of selection bias is a set of differences in characteristics that we can observe and measure,selection bias is (relatively) easy to fix.
- [[checking for balance]] still required even in [[randomized controlled experiment|RCT]]s...
- also need to quantify **sampling uncertainty** (e.g. [[standard error]])
- also interested in [[variance|variability]] (in addition to [[mean|average]]s)
	- typical method is to look at the average squared deviations from the mean

### 2 | Regression
[[regression|Regression]] 
- is a way to make other things equal, but equality is generated only for variables included as controls on the right-hand side of the model.
- efficient in the sense of providing the most statistically precise estimates of ==average causal effects== that we can hope to obtain from a given sample.

**Example**
Does attending a private school vs. public school (university) affect income later on?

[[Ceteris Paribus]] 

[[regression sensitivity analysis]]
[[omitted variable bias]] - one of the most important ideas in the 'metrics canon

## Thoughts


# Resources
 [R Code](https://jrnold.github.io/masteringmetrics/)

I don't think that smoking is morally wrong.
- advertising perhaps
- smoking in an enclosed space with a child yes...


