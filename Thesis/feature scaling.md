---
title: feature scaling
aliases: [data normalization]
summary: 
created: 2022-03-02 09:49
modified: 2022-03-02 09:49
tags: []
---

[[machine learning]]
[[feature engineering]]
[[feature selection]]
[[modeling]]
[[data processing]]
[[data preprocessing]]

# Notes
[Feature scaling](https://en.wikipedia.org/wiki/Feature_scaling) is a method used to normalize the range of independent variables or features of data. 

- In [data processing](https://en.wikipedia.org/wiki/Data_processing "Data processing"), it is also known as data normalization and is generally performed during the [data preprocessing](https://en.wikipedia.org/wiki/Data_preprocessing "Data preprocessing") step.
- Some reasons for scaling features:
	-   Models that rely on the distance between a pair of samples, for instance [[k-nearest neighbors]], should be trained on normalized features to make each feature contribute approximately equally to the distance computations.
	-   Many models such as logistic regression use a numerical solver (based on gradient descent) to find their optimal parameters. This solver converges faster when the features are scaled.
- [[linear model|Linear models]] such as [[logistic regression]] generally **benefit** from scaling the features while other models such as [[decision tree]]s do **not need** such preprocessing (but will not suffer from it).
- in [[scikit-learn]] it is called `StandardScaler` (a [[transformer]])

# Resources
**Papers**







































