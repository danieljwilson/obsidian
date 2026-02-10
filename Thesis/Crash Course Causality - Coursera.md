---
title: Crash Course Causality - Coursera
aliases: []
summary: 
created: 2022-03-18 14:45
modified: 2022-03-18 14:45
tags: []
---

#Coursera
#course 

[[causality]]
[[learning]]
[[spurious correlation]]
[[counterfactual]]
[[propensity score matching|propensity scores]]
[[casual assumptions]]

# A Crash Course In Causality

# Week 1
## Overview
Even if there is a causal relationship the direction is not always clear...

- formal definitions of [[causal effect]]s
- how to identify [[causal effect]]s from data (assumptions required)
- [[sensitivity analysis]] 

## Potential Outcomes + [[counterfactual]]s
- [[treatment]]
- [[outcome]]


## Hypothetical interventions
Potential outcomes is basically what could happen before an [[intervention]]...
Once you intervene, then there is only the [[counterfactual]] left...

==The problem with [[causal inference]]== is that we can only observe one outcome, so at the **INDIVIDUAL LEVEL** we are stuck. But if we look at population levels and assume random sampling we can come up with rates of outcome for each intervention.^[How do we know how accurate these may be for any individual?]

**NOTE**
- ==one version of treatment== (i.e. BMI could be reduced due to diet, surgery, exercise, or smoking - the different forms of treatment mess up the outcome that we think is influenced by BMI...lifespan for example)
- ==immutable variables== such as age, race, etc. Can't really manipulate directly...

## Causal Effects
#### [[average causal effect]]s
- difference between two worlds where in one everyone is treated and the other NOT...
- Important equations:
$$E(Y^1 - Y^0)$$ This is the two worlds equation...which does **==NOT EQUAL==** (generally) 
$$E(Y|A=1) - E(Y|A=0)$$
In the above there is a subpopulation inferred (those that have A = 1 or A = 0)...
- This is generally **NOT** a causal effect as it is comparing two different populations...
- these subpopulations could differ from the general population in important ways...
	- people more likely to get the flu might also be more likely to get a flu shot...


#### [[causal effect of treatment on the treated]]
$$E(Y^1 - Y^0|A = 1)$$
## Causal Assumptions
Identifiability of [[causal effect]]s requires some ==**untestable assumptions**==...

[[causal assumptions]]

## Stratification
We want a marginal causal effect, averaged over the distribution of $X$ (standardization)
![[Pasted image 20220318192534.png]]

Standardization involves stratifying and then adding the weighted means for each level.

However this approach of  stratification/standardization becomes problematic with many covariates (can imagine many empty cells)
Need alternatives...

## Incident user and active comparator designs
[[selection bias]]

[[incident user design]]

# Week 2
## Confounding
[[confounding|confounder]] is a variable that effects **both** [[treatment]] and [[outcome]].
- can get rid of confounding by adding covariates (which allow us to achieve condition of [[ignorability]])

Such a huge assumption that we can identify the variables $X$ which we need to control for...

Causal graphs can help...

## Causal Graphs
[[causal graph framework|causal graph]]s are often known as [[causal graph framework|directed acyclic graph]]s
## DAGS and Probability Distributions
 Isn't this wrong?
 ![[Pasted image 20220411132706.png]]
Shouldn't D be independent of A??

Or is the language - conditioned on makes it sounds like there is a causal arrow?
Are we just saying that there is a correlation between variables?

But P(D) is the best predictor of P(D|A,B,C), no?? Nothing is added if we also know A...only would be adding NOISE

![[Pasted image 20220411132850.png]]
Shouldn't you be conditioning only on things that are UPSTREAM (parents), not downstream children??

He uses the statement at one point that variable X gives no new information on the distribution of variable Y - IS THIS NOT THE CASE FOR D above? How are we getting ==new information== by knowing A and B??

![[Pasted image 20220411133151.png]]
## Decomposition of Joint Distrubution
**root** = node with no parents
To decompose:
- start with roots (independent random variables)
- look for children of roots

Doesn't this decomposition support my point?!
![[Pasted image 20220411133538.png]]

A DAG and can be **compatible**

![[Pasted image 20220411133857.png]]
This is a bad example because he is NOT showing us an example of DAGs that re both compatible with a single probability function. He is showing us that they are both NOT compatible with a single function but there are infinite functions for which that is true. A meaningless example. What would an ACTUAL example look like?

## Paths
Fork - information from one variable going to two other variables
Collider (inverse fork) - information from two variables getting blocked by a third
## Conditional Independence
d-separation
## Confounding and DAGs
If a backdoor path is blocked by a [[collider]] then there is no confounding
- if you control for the "collision" variable then you OPEN A PATH 
	- - need to control for another variable in that case..
## Disjunctive Cause Criterion


https://mit.zoom.us/my/hause

# Resources
**Papers**

# Week 4


# Week 5
- [[complier average causal effect|local average treatment effect]]
	- aka [[complier average causal effect]]
	- no inference about defiers, always-takers or never-takers
- [[instrumental variable]]s
	- [[exclusion restriction]]
		- Seems like the same problem we discussed before...how tf do you know if you have unmeasured confounder??
		- ![[Pasted image 20220516154425.png]]

- [[monotonicity assumption]] 
	- idea that there are no defiers...seems safe to assume

#### Weak Instruments
- strength of instrument can be measured by estimating the **proportion of compliers**
- $E(A|Z=1) - E(A|Z=0)$
	- can imagine encouraging women not to smoke during pregnancy would be a weak instrument since you would probably have a large number of **always takers** (i.e. would never smoke while pregnant anyway) and those that would smoke would likely be **never-takers** since if they are already smoking given the messaging it is hard to imaging that your encouragement might change that...very few actual **compliers**
- Weak instrument increases [[variance]] (noisy estimates)
- Strengthening IVs...

