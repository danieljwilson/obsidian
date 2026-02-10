---
title: machine learning in python with scikit-learn
aliases: []
summary: 
created: 2021-05-18 14:34
modified: 2021-05-18 14:34
tags: [classes, learning, online course, python, inria]
---

[[learning]]
[[machine learning]]
[[python]]


# Notes
## Categorical Data
### Encoding strategies
- `OneHotEncoder` is the encoding strategy used when the downstream models are **linear models** while 
	- ==One-hot encoding categorical variables with high cardinality can cause computational inefficiency in tree-based models==.
- `OrdinalEncoder` is often a good strategy with **tree-based models**.
	- ==Linear models will be impacted by misordered categories while tree-based models will not==
### Rare categories
Can be a problem because they could be only in the test dataset and not in the training dataset!

In scikit-learn, there are two solutions to bypass this issue:
-   list all the possible categories and provide it to the encoder via the keyword argument `categories`
-   use the parameter `handle_unknown`.

#### Warnings
- if your ==target variable is imbalanced== (e.g., you have more samples from one target category than another), you may need special techniques for training and evaluating your machine learning model;
- having ==redundant (or highly correlated) columns can be a problem== for some machine learning algorithms;
- contrary to [[decision tree]], ==linear models can only capture linear interaction==, so be aware of non-linear relationships in your data.


# Resources
**Link**
- https://lms.fun-mooc.fr/courses/course-v1:inria+41026+session01/info

# Progress
- ####  Exercise M1.01