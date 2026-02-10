---
title: Salganaik_M_J_2017_Bit by Bit
aliases: []
summary: 
created: 2021-11-01 11:36
modified: 2021-11-01 11:36
tags: []
---

# Info
**Title**: Bit by Bit: Social Research in the Digital Age
**Journal**: #book 
**Year**: #y2017 
**Authors**: [[Matthew J. Salganik]]
**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:
[[data science]]
[[science of science]]
[[observational data]]
[[data sets]]
[[causal inference]]

# Notes
### Chapter 1
Idea of ==readymade data== (Fountain by Duchamp) vs. ==custommade data== (David by Michelangelo)

[[digital traces]]: by-products of everyday actions that produce **data**
[[big data]]: data held by government and business on citizens/people

==**Key idea** = REPURPOSING existing data==

**NOTE 1**
> Because “found” data are designed by someone, I always recommend that you try to understand as much as possible about the people and processes that created your data.

**NOTE 2**
>when you are repurposing data, it is often extremely helpful to imagine the ideal dataset for your problem and then compare that ideal dataset with the one that you are using. Noticing these differences will help clarify what you can and cannot learn from the data you have, and it might suggest new data that you should collect.

**SOURCES**
- often exclusively focus on online data such as social media and search engine logs...
- lots of data from digital devices in physical world (usually used by coporations)
- lots of data created by government
	- government administrative records include things like tax records, school records, vital statistics, etc.
	- plus things like the [[American Community Survey]]...

### Chapter 2: Observing behavior
#### 10 general characteristics of big data sources
1. ==Big== 
	- While bigness does reduce the need to worry about random error, it actually increases the need to worry about systematic errors (bias)..
2. ==Always on==
	- enable researchers to study unexpected events and provide real-time information to policy makers.
	-  however, often not well suited for tracking changes over very long periods of time..(idea of **drift**)
3. ==Nonreactive==
	- Measurement in big data sources is much less likely to change behavior.
	- however, even though some big data sources are nonreactive, they are not always free of [[social desirability bias]]
4. ==Incomplete==
	- big data tends to be missing three types of information useful for social research:
		- demographic information about participants
		- behavior on other platforms
		- data to operationalize [[theoretical construct]]s.
	- The third of these issues is hard to solve. The other two can be gotten at by:
		- Collect the data you need (Chapter 3)
		- [[imputation|user-attribute inference]]
		- [[record linkage]]
5. ==Inaccessible==
	- Data help by companies and governments are difficult for researchers to access
		- very little upside for companies to share data (AOL search records fiasco)
6. ==Nonrepresentative==
	- Bad for out [[out-of-sample prediction]]
	- Important to distinguish between questions that require [[out-of-sample prediction|out-of-sample generalization]] and those that can benefit from [[within-sample prediction|within-sample comparison]]s.
	- Generalization from sample->population = statistical issue, but the question of [[transportability]] of a pattern found in one group to another is largely a nonstatistical issue^[Pearl and Bareinboim 2014; Pearl 2015].
7. ==Drifting==
	- [[population drift]], [[behavioral drift]], and [[system drift]] make it hard to use big data sources to study long-term trends.
8. ==Algorithmically confounded==
	- Behavior in big data systems in not natural; it is driven by the engineering goals of the systems
	- the digital systems that record behavior are highly engineered to induce specific behaviors (such as clicking on ads or posting content).
	- The ways that the goals of system designers can introduce patterns into data is called [[algorithmic confounding]].
9. ==Dirty==
	- BIg data often include information that does not reflect action of interest to researchers
	- Example: ![[Pasted image 20211108111719.png]]
	- No foolproof way to avoid, but very helpful to understand how the data were created.
10. ==Sensitive==
	-	Some of the information that companies and governments haveis sensitive.

#### Research Strategies
 Three main strategies for learning from big data sources: 
 1. ==Counting things==
	 - Simple counting can be interesting if you combine a good question with good data.
	 - classic study that does this is taxicab drivers' hours driven depending on rate of earnings which arbitrated between neoclassical economic models and behavioral economics thinking (found that people drove more when rates were higher - neoclassical)^[Henry Farber 2015]
	 - Measuring user sentiment in social media posts falls into this category (sentiment analysis can be done using [[supervised learning]] )
 2. ==forecasting things==
	 - Predicting the future is hard, but predicting the present is easier.
	 - [[nowcasting]]
	 - can be especially useful to governments and companies that require timely and accurate measures of the world
	 - example is Google Flu Trends
	 - when evaluating any forecast or nowcast, it is important to compare against a baseline.
 3. approximating experiments
	 - We can approximate experiments that we can’t do. Two approaches that especially benefit from the digital age are [[natural experiments]] and [[matching]].
	 - [[randomized controlled experiment]]s are not always possible

**Chapter Conclusions**
-  big data sources can allow researchers to decide between competing theoretical predictions (Farber 2015 NYC taxi cabs)
-  can enable improved measurement for policy through [[nowcasting]] (Ginsberg et al. 2009 Google Flu Trends)
-  can help researches make [[causal inference]]s without running experiments (Mas and Moretti 2009 Peer effects on cashier productivity)  

Big data sources enable researchers to do [[empirically driven theorizing]]!

> In a world where data collection was expensive, it made sense to collect only the data that theories suggest will be the most useful. But in a world where enormous amounts of data are already available for free, it makes sense to also try a data-first approach (Goldberg 2015).

### Chapter 3: Asking questions

#### 3.2 Asking vs Observing
- **Non-Response rate** in telephone surveys can exceed 90% (Kohut et al. 2012)

- We are often trying to learn about or understand ==[[internal states]]==, such as emotions, knowledge, expectations and opinions. 

#### 3.3 The [[total survey error framework]]
==Takeaway== Error reduction is a process/balance. You can minimize error at the expense of other dimensions of quality and can really ratchet up the cost/time requirements.

#### 3.4 Who to Ask
- [[probability sampling]] vs. [[non-probability sampling]]
- digital affordances mean that it can make sense to consider [[non-probability sampling]] which had fallen out of favor...
- [[probability sampling]] hard to do in practice while [[non-probability sampling]] has been getting faster and cheaper
	- [[probability sampling]] in theory and in practice are often **not the same**...
- > When there are high rates of nonresponse—as there are in real surveys now—the actual probabilities of inclusion for respondents are not known, and thus probability samples and non-probability samples are not so different as many researchers believe.


#### 3.5 New ways of asking questions...
The fact that things are mostly computerized now in terms of survey delivery can help mitigate [[social desirability bias]] and [[interviewer effects]], as well as reduces cost and increases flexibility
- [[ecological momentary assessment]] much easier with our new tools
- may need to employ [[gamification]] strategies to maintain subject engagement
#### 3.6 Linking surveys to big data sources
- [[enriched asking]] and [[amplified asking]]

**EXAMPLE**
![[Pasted image 20211118081509.png]]

#### Mathematical Notes
**PROBABILITY SAMPLING**
Estimation of rate from sample mean:
![[Pasted image 20211118082545.png]]

Estimation of rate where there are unequal probabilities of inclusion ([[Horvitz-Thompson estimator]]):
![[Pasted image 20211118082621.png]]
where $\hat{\bar{y}}$ is the estimate of the rate (e.g. unemployment) and $\pi_i$ is person $i$'s probability of inclusion.

The [[Horvitz-Thompson estimator]] can also be rewritten as:
![[Pasted image 20211118091339.png]]
where $w_i = \frac{1}{\pi_i}$

### Chapter 4: Running experiments
[[causality]]
[[confounding]]
> Experiments enable researchers to move beyond the correlations in naturally occurring data in order to reliably answer certain cause-and-effect questions.

- [[experiment]] vs. [[randomized controlled experiment]]
#### 4.5 Making it happen
- discuss [[experimental design]] option...(e.g. do it yourself, use existing environment, partner with powerful...)
- building your own product seen as high-risk, high-reward...
**[[Pasteur's Quadrant]]**:
![[Pasted image 20211124175012.png]]

#### 4.6 Advice
1. Think as much as possible before any data is collected. Most of the work should be done before you collect data.
2. Think about experiments as a reinforcing **series**. No single experiment will be perfect...(armada strategy)
3. Create zero variable cost data
	- use automation and create designs that subjects enjoy...
4. Build ethics into your design
	- decreased cost means that ethics will become an increasingly important part of research design ^[why?]
	- three principles that should guide animal research: ==replace, refine,and reduce==^[**Replace** experiments with less invasive methods if possible. **Refine** the treatment to make it as harmless as possible. **Reduce** the number of participants in your experiment as much as possible.]

- [[power analysis]]

### Chapter 5: Creating Mass Collaboration
>  **I hope to convince you of two things**: 
>  1. collaboration can be harnessed for social research
>  2. researchers who use mass collaboration will be able to solve problems that had previously seemed impossible

**Three types of projects**:
1. Human computation
2. Open call
3. Distributed data collection


## Thoughts


# Resources



