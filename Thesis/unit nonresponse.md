---
title: unit nonresponse
aliases: []
summary: 
created: 2021-11-18 09:37
modified: 2021-11-18 09:37
tags: []
---

[[measures|measure]]
[[measure development best practices]]
[[total survey error framework]]
[[surveys]]
[[experimental social psychology]]
[[experimental design]]
[[error]]
[[non-probability sampling]]
[[stratified sampling]]
[[post-stratification]]
[[item nonresponse]]
[[nonresponse]]
[[bias]]

# Notes
Some people that are selected into the sample population don’t respond to the survey at all.

- researchers control the process of selecting the sample,but they don’t control which of those sampled people become respondents

**Most common reasons:**
- sampled person cannot be contacted
- sampled person is contacted but refused to participate

---

Researchers often think about surveys with [[unit nonresponse]] as a **two-stage sampling process**:
1. sample selection ($s$) such that each person has a probability of inclusion $\pi_i$ (where $0 < \pi_i \leq 1$)
2. people who are selected into the sample respond with probability $\phi_i$ (where $0 < \phi_i \leq 1$)

This results in a final set of respondents $r$.

Combining stage 1 and 2 the probability that someone will be a respondent is:
$$pr(i \in r) = \pi_i\phi_i$$

---
Nonresponse does not **necessarily** introduce [[bias]]...
Based on the equation:
![[Pasted image 20211118095448.png]]
you can see that the bias will be 0 if:
- there is no correlation between response propensity and the outcome/measure (e.g. unemployment status), $cor(\phi,y) = 0$
- There is no variation (i.e. [[standard deviation]] = 0) in the measure/outcome, $S(y) = 0$
- There is not variation in response propensities, $S(\phi) = 0$

==However, these conditions are unlikely==

---

To make an estimate with nonresponse you can use [[auxiliary information]] to conduct [[post-stratification]]. 

The post-stratification estimator is
![[Pasted image 20211118095838.png]]
where:
- $cor(\phi, y)^{(h)}$ = correlation between response propensity and measure/outcome
- $S(y)^{(h)}$ = standard deviation of the outcome/measure
- $S(\phi)^{(h)}$ = standard deviation of the response propensity
- $\bar\phi^{h}$ = mean response propensity

and $h$ is the stratification group (e.g. state of residence).

- the overall bias will be small if the bias in each post-stratification group is small
- to make the bias small:
	- try to form homogeneous groups where there is little variation in both response propensity ($S(\phi)^{(h)} \approx 0$) and outcome ($S(y)^{(h)} \approx 0$)
	- try to form groups where the people you "see" are like the people you don't see ($cor(\phi, y)^{(h)} \approx 0$)

# Resources
**Papers**
- Gelman and Carlin, 2002
- Smith, 1991

**Books**
- Bethlehem, Cobben, and Schouten,  2011 (section 8.2.1)