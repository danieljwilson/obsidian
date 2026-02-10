---
title: causality
aliases: [cause-and-effect]
summary: 
created: 2021-11-10 11:39
modified: 2021-11-10 11:39
tags: []
---

[[causal graph framework]]
[[Granger causality]]
[[causal inference]]
[[causal Bayesian networks]]
[[confounding]]
[[natural experiments]]

# Notes
**A mathematical definition of causality**: 

$$
\delta_{A\to B} = \mathbb{E}[B | A=1] -  \mathbb{E}[B | A=0] 
$$

- This (above) represents the [[treatment]] effect.


# Resources
**Books**
- `/Users/djw/Documents/pCloud_synced/Academics/Books/Judea_Pearl_and_Dana_Mackenzie_The_Book.pdf` [[Pearl_J]]
- [Elements of Causal Inference](https://library.oapen.org/bitstream/handle/20.500.12657/26040/11283.pdf?isAllowed=y&sequence=1&utm_campaign=OpenMLU%20Newsletter&utm_medium=email&utm_source=Revue%20newsletter)
- [Causal Inference for the Brave and True](https://matheusfacure.github.io/python-causality-handbook/landing-page.html)^[recommended by [[Hause Lin]]]

**Videos**
- Panel: [Causality in Neuroscience](https://www.crowdcast.io/e/ohbm-causality)
- Panel: [Causality in ML](https://www.youtube.com/watch?v=ynVr_zzUXtw)
-  [4-part lecture series](https://www.youtube.com/watch?t=1296s&utm_campaign=OpenMLU%20Newsletter&utm_medium=email&utm_source=Revue%20newsletter&v=zvrcyqcN9Wo) by [[Jonas Peters]]
-  Casual Discovery by [[Bernhard Schölkopf]] Part [1](https://www.youtube.com/watch?v=CTcQlRSnvvM) and [2](https://www.youtube.com/watch?v=ly-2eSXkDNA)
-  Duke [Causal Inference Bootcamp](https://www.youtube.com/c/ModUPowerfulConceptsinSocialScience/playlists?view=50&sort=dd&shelf_id=6) (2015)
-  [Causal Inference Seminar](https://www.youtube.com/channel/UCiiOj5GSES6uw21kfXnxj3A/videos?utm_campaign=OpenMLU%20Newsletter&utm_medium=email&utm_source=Revue%20newsletter) (2020)

**Papers**
- [Causality for Machine Learning](https://arxiv.org/abs/1911.10500?utm_campaign=OpenMLU%20Newsletter&utm_medium=email&utm_source=Revue%20newsletter), [[Bernhard Schölkopf]]

**Tutorial/Class**
- [illustrating intervention in toy example](https://www.inference.vc/causal-inference-2-illustrating-interventions-in-a-toy-example/)
- [Causal data fusion](https://causalscience.org/blog/what-is-causal-data-fusion)
- [[Crash Course Causality - Coursera]]

**Websites**
- [causalscience.org](https://causalscience.org/)

**Blog**
- Elements of Evolutionary Anthropology: [part 1](https://elevanth.org/blog/2021/06/15/regression-fire-and-dangerous-things-1-3/), [part 2](https://elevanth.org/blog/2021/06/21/regression-fire-and-dangerous-things-2-3/), [part 3](https://elevanth.org/blog/2021/06/29/regression-fire-and-dangerous-things-3-3/)