---
title: state action value function
aliases: []
summary: 
created: 2023-03-15 08:51
modified: 2023-03-15 08:51
tags: []
---

[[reinforcement learning]]
[[algorithms]]
[[Bellman equation]]

# Notes

$$Q(s,a)$$
The value of the function is the return/reward given that:
- start in state $s$
- take action $a$ (once)
- behave **optimally** ==after that==

The best possible return from state $s$ is:
$$max_aQ(s,a)$$
This determines the best action $a$ to take.

**EXAMPLE**
(if the discount factor for each step is 0.5)
![[Pasted image 20230315085522.png]]

# Resources
**Papers**

**Videos**
- [[Andrew Ng]] [video](https://www.coursera.org/learn/unsupervised-learning-recommenders-reinforcement-learning/lecture/NG3vW/state-action-value-function-example)
- 