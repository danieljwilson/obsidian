---
title: Dragicevic_P_2019_Increasing the Transparency of Research Papers with Explorable Multiverse Analyses
aliases: []
summary: 
created: 2022-09-22 07:27
modified: 2022-09-22 07:27
tags: []
---

# Info
**Title**: Increasing the Transparency of Research Papers with Explorable Multiverse Analyses
**Journal**: #conferencePaper
**Year**: #y2019 
**Authors**: [Pierre Dragicevic], [Yvonne Jansen], [Abhraneel Sarma], [Matthew Kay], [Fanny Chevalier]
**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:
[[multiverse analysis]]
[[science of science]]
[[statistics]]
[[replication crisis]]
[[replication]]
[[specification curve analysis]]

# Notes
## Summary
multiverse analysis + explorable explanations

>[!Quote]
>a common and damaging form of opacity is **undisclosed flexibility**^[should we not be performing a correction (bonferroni or other) each time we test a model?]

![[Pasted image 20220922074536.png]]
👆 How often do we actually have things as tightly specified as in **b**?

> researchers identify sets of defensible analysis choices

**Analysis Parameters by Level of Analysis**
- ==Data substitution parameters== offer to switch between different raw datasets, either collected or simulated
- ==Data processing parameters== offer to process the same raw data in different ways before it is analyzed. (e.g. log transforming data, selecting subgroups of interest)
- ==Modeling parameters== offer different ways of analyzing the same processed data (e.g. correcting for multiple comparisons, bootstrap vs t-distribution CI)
- ==Presentation parameters== offer different ways of present- ing analysis outcomes. (e.g. confidence interval, histogram bin size)

>[!Quote]
>...a better alternative is to write **statements that are true for the entire multiverse**—this has the benefit of forcing authors to focus on reliable effects, and refrain from commenting on fragile effects


## Thoughts
**Key point is to show how fragile/robust findings are**
- sensitivity analysis vs. multiverse analysis
- any difference with specification curve analysis? 
- Unlike, for example, a p-curve analysis (Simonsohn, Nelson, & Simmons, 2014), it is **not a formal test of questionable research practices**, such as selective reporting, or a method to estimate the strength of the evidence for an effect

**Multiverse analysis not that useful if no one reads it in the supplementary materials...**
- Interactive results section
- allow “the reader to play with the author’s assumptions and analyses, and see the consequences”

**Is there a Distill replacement?**
- Would prefer a drop down/sliders with the default at the top, and then additional options
- Hard to know where the changes are taking place
	- Need some sort of changes summary...
	- Makes more sense in terms of the figures themselves than in a paper context?
- all analysis outcomes are summarized in a static overview figure to facilitate comparison^[this seems like a better approach as it allows not just changes but COMPARISON]
	- also seems like the key difference is clearly the experiment and not the method of analysis...that said obviously the methods CAN matter 👇
![[Pasted image 20220922080842.png]]
- especially in the last example (DANCE) we can see that things are changing but not clear WHAT changes are being made...

**Self Selection**
- how much will it improve science if people who would do good science anyway are the most likely to take this approach


# Resources

- adversarial collaborations
- analysis
