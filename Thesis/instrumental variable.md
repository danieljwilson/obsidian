---
title: instrumental variable
aliases: [IV]
summary: 
created: 2021-11-09 11:37
modified: 2021-11-09 11:37
tags: []
---

[[causality]]
[[causal inference]]
[[natural experiments]]
[[econometrics]]
[[differences in differences]]
[[exclusion restriction]]

# Notes
Rely on finding a plausibly exogeneous source of variation in treatment intake.

**ALT**: An [[instrumental variable]] is **an observable source of "randomness"** that affects the treatment.

==For example, this could just be **encouragement**!==
- e.g. encourage some mothers to breast feed...randomly assign encouragement...should expect some effect of encouragement which should allow is to see if there is any effect of breastfeeding on the outcome of interest...

- [[variable|Variable]] that can affect the outcome only through the [[treatment]].
- Assumptions
	1. [[independence]]
	2. [[exclusion restriction]]
	3. [[monotonicity]]

Population can generally be split into 4 groups:
![[Pasted image 20211110114429.png]]

Analysis of an instrumental variable takes place in three steps:
1. Define the effect of the encouragement on the primary treatment^[e.g. effect of getting drafted on serving in the military]
2. Define the effect of the encouragement on the outcome^[e.g. effect of getting drafted on income]
3. Combine these two effects to get an estimate of the effect of treatment on a specific group

**EQUATIONS**
==Encouragement effect on primary treatment==
$$ITT_{W,i} = W_i(1) - W_i(0)$$
and at the population level:
$$ITT_W = \frac{1}{N}\sum_{i=1}^{N} [W_i(1) - W_i(0)]$$
and an estimate using data:
$$\widehat{ITT_W} = \bar{W_{1}^{obs} - \bar{W_{0}^{obs}}}$$
where $W_1$ is the rate of treatment for those who were encouraged and $W_0$ is the rate for those who were **not**...also known as [[uptake rate]]

==Encouragement effect on outcome==
Estimate using data:
$$\widehat{ITT_Y} = \bar{Y_{1}^{obs} - \bar{Y_{0}^{obs}}}$$
Where $Y_1$ and $Y_0$ are the observed outcomes for those who were encouraged and not...

==Primary treatment effect on outcome==^[what we are really interested in...]
We can then estimate the [[complier average causal effect]]^[Generally is not possible to estimate the effect of treatment on all units]
$$CACE = \frac{1}{N_{co}}\sum_{i:G_i = co} [Y(1, W_i(1)) - Y(0, W_i(0))]$$

Where $G_i$ indicates the group of a person (in this case $co$ indicates "complier").
- note that it is actually not really possible to identify compliers from observed data as you would need to observe both conditions (e.g. drafted and not drafted) and the subsequent behavior...
- it is possible to estimate [[complier average causal effect|CACE]] from observed data with **three assumptions**:
	1. assignment to treatment is random^[reasonable in case of draft lottery]
	2. no defiers (also known as the [[monotonicity assumption]])
	3. the [[exclusion restriction]]

If these conditions are met then we can estimate CACE:
$$\widehat{CACE} = \frac{\widehat{ITT_Y}}{\widehat{ITT_W}}$$

One way to think about CACE is that it is the difference in outcomes between those who were encouraged and those not encouraged, inflated by the uptake rate.^[Think of a situation in which only very few people actually moved from encouragement to primary treatment uptake, yet there was STILL a sizable difference in the outcome variable for the groups that did and didn't receive the encouragement/secondary treatment. This means that the effect of the treatment of interest must be very strong! Also at the extreme if everyone who gets encouraged gets the primary treatment then you are just dividing by 1...]

Note: The problem with **weak instruments** is that $\widehat{CACE}$ ([[complier average causal effect|CACE]]) can be sensitive to small biases in $\widehat{ITT_Y}$ —potentially due to violations of the exclusion restriction—because these biases get magnified by a small $\widehat{ITT_W}$

**EXAMPLES**
-   Distance to college or to school for studying the impact of college or school enrollement on education, earnings and other outcomes.
-   Random draft lottery number for investigating the impact of military experience on earnings and other outcomes.
-   Randomized encouragement to participate in order to study the impact of a program.

# Resources
**Papers**
- Sovey and Green (2011)
- Angrist and Krueger (2001)

**Books**
- Imbens and Rubin (2015), in their chapters 23 and 24

**Videos**
- [Josh Angrist Introduction to Instrumental Variables](https://www.youtube.com/watch?v=eoJUPd6104Q)