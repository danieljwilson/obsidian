# Info
**Title**: Model-based decision making and model-free learning: A primer
**Journal**: Current Biology
**Year**: 2020
**Authors**: [[Nicole Drummond]], [[Yael Niv]]

**Link**: [paperpile](chrome-extension://bomfdkbfpdhijjbeoicnfhjbdhncfhig/view.html?mp=zgnmKwmV)
**Tags**: #paper
**Rating**: #3star 

**Connections**:
[[model-free reinforcement learning]]
[[model-based reinforcement learning]]
[[modeling]]
[[instrumental conditioning]]
[[goal directed behavior]]
[[habitual behavior]]
[[papers]]

# Notes
## Summary
References [[dual-process model]] - suggests that the two decision making systems "reside" in the [[basal ganglia]]...

Neither is **irrational**

Connected to ideas of [[goal directed behavior]] and [[habitual behavior]] and the literature on [[instrumental conditioning]].

>[[stimulus-response learning]] = [[habitual behavior]] = [[system 1]] = [[model-free reinforcement learning]]

>[[action-outcome learning]] = [[goal directed behavior]] = [[system 2]] = [[model-based reinforcement learning]]

[[reinforcement learning]]

[[model-based reinforcement learning]] action values are computed by mentally simulating the consequences of said actions within a representational map of the world that includes the **states**, the **transition probabilities**, and the rewards in each state. This together forms a ==world model==.

[[model-free reinforcement learning]] does not have this ==world model==...values for different actions are learned directly with info from the [[reward prediction error]] that is calculated each time it makes a single choice. There is no longer horizon of downstream effects...computationally simple but slow to update if there are many steps leading to a good or bad outcome...

**The question**: Which system to use (and in which situations)

**Neural Correlates**
- [[habitual behavior]] associated with loop from cortical afferents, through the [[dorsolateral striatum]], the [[ventrolateral thalamus]], and back to [[cortex]]. Modulated by dopaminergic signals that convey [[prediction error]].
- [[goal directed behavior]] associated with loop including the [[prelimbic cortex]], the [[dorsomedial striatum]], [[ventromedial thalamus]] and back to [[cortex]]. This learning loop may be [[dopamine]] independent.

[[two-step task]]

**Conclusion**
Two different systems/algorithms to compute [[action value|action values]] with different strengths and weaknesses. Means that depending on context/[[decision environment]] they make be susceptible to making choices that are suboptimal or irrational.

## Thoughts
Seems to be equating [[model-based reinforcement learning]] with [[system 2]] and [[model-free reinforcement learning]] with [[system 1]] in a [[dual-process model]] of choice.

Isn't [[habitual behavior]] also [[goal directed behavior]]?

Distant outcomes mean that both systems are bad...computationally expensive/unfeasible to use [[model-based reinforcement learning]], and very slow to update [[model-free reinforcement learning]].

In cases like that seems like we can still make causal "guesses" even when things are distant if all the between steps remain constant? (e.g. you where outfit A and no luck at a bar, and then you do all the same things with outfit B and you get lucky)

# Resources
