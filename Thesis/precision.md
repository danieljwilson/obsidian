---
title: precision
aliases: [Precision, positive predictive value]
summary: 
created: 2020-12-21 09:41
modified: 2020-12-21 09:41
tags: []
---

[[accuracy]]
[[measurement error]]
[[measurement methods]]
[[bias]]
[[recall]]
[[machine learning]]
[[model evaluation]]

# Notes
Measure of how similar multiple estimates are to **each other**.
 
 👆 This seems quite different than the [[machine learning]] approach where it is used to evaluate model error in situation with a rare class we are trying to detect. I think of precision as predictive accuracy on the target class. In other words, if you say a sample belongs to the target class how likely are you to be correct?
👇

**ALT**
Precision is the number of true positive results divided by the number of all positive results,  including those not identified correctly.^[[[F-score]]]

![[Pasted image 20221202095337.png]]

---

- not concerned with true value
- high precision means low random [[measurement error]]
- also called [[variance]]

# Resources

**Video**
- [Andrew Ng](https://www.coursera.org/learn/advanced-learning-algorithms/lecture/pjuBJ/error-metrics-for-skewed-datasets)
- 