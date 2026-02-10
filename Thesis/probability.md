---
title: probability
aliases: []
summary: 
created: 2023-07-10 11:14
modified: 2023-07-10 11:14
tags: []
---
[[statistics]]
[[random variable]]
[[conditioning]]
[[bayesian statistics]]
[[sample space]]
[[law of large numbers]]

# Notes
A number that describes the likelihood of some event occurring, which ranges from zero (impossibility) to one (certainty).

**Formal features of probability**
Given that we have a sample space defined by N independent events, $E_1,E_2,...,E_N$, and $X$ is a random variable denoting which of the events has occurred. $P(X=E_i)$ is the probability of event $i$:
- Probability cannot be negative: $P(X=Ei)≥0$
- The total probability of all outcomes in the sample space is 1; that is, if the , if we take the probability of each $E_i$ and add them up, they must sum to 1. We can express this using the summation: $$\sum_{i=1}^{N} P(X=E_i)=P(X=E_1)+P(X=E_2)+...+P(X=E_N)=1$$This is interpreted as saying “Take all of the N elementary events, which we have labeled from 1 to N, and add up their probabilities. These must sum to one.”  
-   The probability of any individual event cannot be greater than one: $P(X=E_i)≤1$. This is implied by the previous point; since they must sum to one, and they can’t be negative, then any particular probability cannot exceed one.

Measures occurrence of events
- Subjective: belief that an event occurs (occurred, will occur)
- [[frequentist statistics|Frequentist]]: Frequency of observed event

**Two Rules**
1. **[[product rule|Product Rule]]**: If two events are independent, the [[probability]] of both is the product of each's probability:

$$p(x, y) = p(x)p(y)$$

2. **[[sum rule|Sum Rule]]**: If two events are mutually exclusive the probability of either is the sum of each's probability:

$$p(x=x_1 or x=x_2) = p(x_1) + p(x_2)$$

- Probability theory is the branch of mathematics that deals with chance and [[uncertainty]].

# Resources

- ![[Distributions.png]]