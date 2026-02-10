---
title: McNeish_D_2023_Measurement in Intensive Longitudinal Data
aliases: []
summary: 
created: 2023-03-14 10:06
modified: 2023-03-14 10:06
tags: []
---

# Info
**Title**: Measurement in Intensive Longitudinal Data
**Journal**: #structural-equations-modeling-journal
**Year**: #y2021 
**Authors**: [[Daniel McNeish]], [[David P. Mackinnon]], [[Lisa A. Marsch]], [[Russell A. Poldrack]]
**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:
[[structural equations modeling]]
[[intensive longitudinal data]]
[[dynamic structural equation modeling]]
[[passive data collection]]
[[digital traces|digital trace data]]

# Notes
## Summary

>This paper demonstrates how to incorporate measurement models into DSEM to:
>(1) provide more rigorous measurement of constructs used in intensive longitudinal  studies and 
>(2) assess whether scales are invariant across time and across people, which is not possible when item responses are summed or averaged. 

>We provide an example from an  ecological momentary assessment study on self-regulation in adults with binge eating disorder and  walkthrough how to fit the model in Mplus and how to interpret the results.

**One problem**
==approaches for modeling intensive longitudinal data often relegate or omit measurement  models for the variables included in the model==

##### Invariance over Time and People...
For example the change in measurement over time could be due to the change in the level of the construct (e.g. increasing depression) or else a change in the measurement instrument (and how people use it...). 

In the former case (and what we are hoping for) the measurement tool can be understood to be time **invariant**.
👆This is necessary to have valid within subject analyses (and I guess between as well...but between also requires the second invariance as well 👇)

There is also **invariance across people**. In other words people interpret and respond to the measure in essentially the same way.
👆This is required to have valid between subject analyses.

##### Approximate Invariance Testing
>Between-person and between-time random effects can 
be placed on item parameters to quantify how much variability exists across people and measurement occasions. If the variance is reasonably small, then one can conclude that the  item parameters are approximately invariant and measurement properties are stable. If the  variability is large, this can indicate that non-invariance may exist.

[[dynamic structural equation modeling]] integrates time-series analysis, multilevel models, and  structural equation models into one unified framework

## Thoughts
So for a given measure it seems they are suggesting it could be useful to look at variance within and between subjects, as well as within and between time points.

![[Pasted image 20230315103208.png]]
Their claim:
>clustering by both time and people with a cross-classified model can be helpful  to assess invariance over both levels of clustering

What makes this a "cross-classified model"? Seems just like confusing jargon.

Overall I don't feel like I have really grokked what they are doing and why...

# Resources
