[[modeling]]


# Notes
- [Test Data + Training Data] + Validation Data
- These steps are summarized in this diagram from Scikit-learn (https://scikit-learn.org/stable/modules/cross_validation.html)

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