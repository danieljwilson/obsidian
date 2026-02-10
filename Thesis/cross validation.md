---
title: cross validation
aliases: [cross validation set]
summary: 
created: 2021-05-29 14:13
modified: 2021-05-29 14:13
tags: []
---

[[modeling]]
[[machine learning]]
[[best practices]]

# Notes
The goal of cross-validation is to provide a fair assessment of a model’s predictive performance by training it and testing it on different subsets of data

- [Test Data + Training Data] + Validation Data
- These steps are summarized in this diagram from Scikit-learn (https://scikit-learn.org/stable/modules/cross_validation.html)

**VALUE**
by computing the [[standard deviation]] of the cross-validation scores, ==we can estimate the uncertainty of our model statistical performance==.^[This is the main advantage of cross-validation and can be crucial in practice, for example when comparing different models to figure out whether one is better than the other or whether the statistical performance differences are within the uncertainty.]

![Diagram from Sklearn](https://scikit-learn.org/stable/_images/grid_search_cross_validation.png) 
- **leave one out** is the extreme version
- If you are trying to predict subjects, then you would want to make sure that you didn't have individual trials from the same person **both** in the training and test data...
- Simulations can be used to make new predictions outside of the parameter space of your original dataset
- [[general linear model|GLM]] is convex

- Comparision of crossvalidation and bootstrapping
![[crossvalidation_vs_bootstrapping.png]]

- **NOTE**: Do not preprocess data outside of [[cross validation]] process!
	- Explanation in [this thread](https://twitter.com/jmschreiber91/status/1291161574393221123)

# Resources
- [Collab notebook](https://colab.research.google.com/drive/1GWRCMkGVFiDw1nrsbq-jTSUNZp0luuUm#scrollTo=vYGJZXA9wKSF) from [[Neuromatch]]

**Papers**
- [Cross-validation failure: Small sample sizes lead to large error bars](https://www.sciencedirect.com/science/article/abs/pii/S1053811917305311) 
	- on problems with statistical brain image analysis and cross-validation.
- [Avoiding Common Pitfalls in Machine Learning Omic Data Science](chrome-extension://bomfdkbfpdhijjbeoicnfhjbdhncfhig/view.html?mp=TSZ4wNU4)
	- describes some of the common pitfalls encountered in deriving and validating predictive statistical models from [[high-dimensional data]]