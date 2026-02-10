---
title: Bellman equation
aliases: [Bellman equations]
summary: 
created: 2023-03-15 09:04
modified: 2023-03-15 09:04
tags: []
---
[[reinforcement learning]]
[[state action value function]]
[[algorithms]]

# Notes
Used to compute [[state action value function]] $Q(s,a)$ in [[reinforcement learning]].

**EQUATION**
![[Pasted image 20230315091032.png]]
$s$ : current state
$R(s)$ : reward of current state
$a$ : current action
$s'$ : state you get to after taking action $a$
$a'$ : action that you take in state $s'$
$\gamma$ : discount factor (for each step)

**Note**
In a terminal state the equation is simply:
$$Q(s,a) = R(s)$$

![[Pasted image 20230315091729.png]]

Expanded version:
![[bellman_equation.png]]

- Allow for recursive updating of the **value** function

**EXAMPLE**
![[Pasted image 20230315091441.png]]

# Resources
**Papers**

**Videos**
- [[Andrew Ng]] [Video](https://www.coursera.org/learn/unsupervised-learning-recommenders-reinforcement-learning/lecture/3Wpee/bellman-equations)
- 