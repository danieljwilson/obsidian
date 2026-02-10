---
title: mediation analysis
aliases: []
summary: 
created: 2022-11-29 20:33
modified: 2022-11-29 20:33
tags: []
---

[[mediating variable|mediation]]

# Notes
In mediation analysis one asks by what channel did a randomly assigned manipulation work.

**Example**
An experiment finds that randomly assigning Calculus 101 students to have quizzes every week (X) increased their final exam grade (Y).  Mediation analysis is used to test whether this happened _because_ quizzes led students to study more hours through the semester (M). Mediation is present if the estimated effect of X gets smaller when controlling for M.
>[!👆Problem]
>If M and Y are correlated outside of the experiment (i.e., independently of X), a very likely scenario, mediation is invalid.

Imagine that kids who love math or care about grades do many things that can improve their grade (Y), including studying (M). Love of math or caring about grades both correlate with M & Y. Boom. Mediation for the quiz experiment is now invalid.
[Full post on this example](http://datacolada.org/103#footnote_0_6858)
[People mostly saying the post was bad...](https://twitter.com/DataColada/status/1574365928980156416)

**Other more straightforward issues with mediation analysis**
- the mediator of interest to the authors correlates with other mediators that are not of interest and thus not included in the regression.  If the excluded mediators correlate with the included one, a very likely scenario is that the included mediator picks up spurious mediation from the other ones. ==This bias also affects virtually every published mediation analysis==.  
- non-linearities and measurement error can produce spurious mediation 
- there may be reverse causality with the 'dependent variable' causing the change in the mediator.

# Resources
**Papers**