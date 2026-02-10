---
title: Ryan_O_2023_Towards a Generative Model for Emotion Dynamics
aliases: []
summary: 
created: 2023-03-30 14:07
modified: 2023-03-30 14:07
tags: []
---

# Info
**Title**: Towards a Generative Model for Emotion Dynamics
**Journal**: #preprint 
**Year**: #y2023
**Authors**: [[Oisin Ryan]], [[Fabian Dablander]], [[Jonas Haslbeck]]
**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:

[[emotion|emotions]]


# Notes
## Summary
==Emotions track the extent to which outcomes align with our goals and motivate us to act on our internal and external environments

>ESM studies seem particularly suited to advancing our understanding of the adaptive and dynamic nature of emotions in daily life

>existing theories do not predict the extent to which we would expect emotions to correlate with themselves and with other emotions on a given timescale, or how this might vary across individuals

- disconnect between statistical models and theories

A formalized theory makes clear predictions about the patterns we expect to see in a particular type of empirical data, predictions that can then be tested using statistical models (Haslbeck et al., 2021; van Dongen et al., 2022)

==The core feature of our model is the seemingly simple idea that emotions in daily life are reactions to situations we encounter
- identify nine stable phenomena about how how emotions unfold in daily life
- outline concrete steps for using ideas from existing emotion theories to extend our model to a complete feedback loop between situations, attention, emotion and action, and learning mechanisms
- discuss how our model can guide measurement, study design, and statistical analyses.

-> feedback loop between situations, attention, emotions, and actions

#### Theories of Emotion
Affect Program
Constructivist
Appraisal

**Two core features**
- emotions unfold over time (typically over seconds to minutes; Gross & Feldman Barrett, 2011; Mauss et al., 2005)
- emotions are a response to events or situations that are meaningful to the individual (Keltner & Gross, 1999)
- different types of situations elicit different patterns of emotion

![[Pasted image 20230330142600.png]]

#### The Model
==we assume that emotionally relevant situations that we encounter in daily life unfold on an hourly timescale

>we choose a timescale of hours (with an abstract time step equal to one hour), a value of α = 0.60 would reflect that there is a 60% chance of being in the same situation from hour to hour. After two hours, there is a 36% (0.60 × 0.60) chance of staying in the same situation, meaning that it is more likely than not that the situation will change, and so on, i thought $\alpha$ was describing emotions, not context/situation?

- we conceptualize the emotions $Y_j$ themselves as continuous rather than discrete
- model has a transition matrix P and an "emotion" matrix M
- matrix describes emotions based on different situations...

![[Pasted image 20230330144112.png]]^[assuming that we can have situations that can elicit both positive and negative emotions]


## Thoughts
- problem of "infinite" situations...
- can have more than one "situation" at a time - can be in class and also sitting next to a friend and also receiving a text from your parents and also it can be a beautiful sunny day, etc.
- sometimes it feels like the goal is just to create plots that "resemble" plots from the wild

# Resources
