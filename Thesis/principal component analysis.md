---
title: principal component analysis
aliases: [PCA]
summary: 
created: 2021-05-16 10:17
modified: 2021-05-16 10:17
tags: []
---

[[machine learning]]
[[modeling]]
[[dimensionality reduction]]
[[factor analysis]]
[[eigenvectors]]
[[feature selection]]

# Notes
- [[principal component analysis|PCA]] represents data in a new **orthonormal basis** defined by the [[eigenvectors]] of the [[covariance matrix]]
- **Goal**: find an orthonormal basis capturing the directions of maximum variance of the data
- Also has the useful property that the projected data (*scores*) are uncorrelated.
- The projected variance along each basis vector is given by its corresponding eigenvalue.
	- This is important because it allows us rank the "importance" of each basis vector in terms of how much of the data variability it explains.
- Can be effective for visualization (clustering when looking at first few principle components)
- Can visualize the variation in each component using a [[scree plot]]
- Most useful for **visualization**
- Used to be used for data compression and speeding up training algorithms (e.g. [[support vector machine]]) but no longer relevant for modern ML and computing...

- PCA is not the same as [[linear regression]]...
	- in linear regression $y$ is privileged - no dimension is privileged in PCA
	- ![[Pasted image 20230208092048.png]]


**Steps:**
- First subtract the mean.
- Then calculate the sample covariance matrix.
- Then find the eigenvalues and eigenvectors and sort them in descending order.
- Finally project the mean-centered data onto the eigenvectors.


# Resources

- [Mathematical basis of PCA properties](https://youtube.com/watch?v=p56UrMRt6-U)

**Code**
- [[Neuromatch]] [Collab notebook](https://colab.research.google.com/drive/1RrO2uqYFmdopzSCqD0nFcpb6hcwKg2Op#scrollTo=D-ArWcnsChSK)
- Many classical dimensionality reduction techniques, like PCA, can be expressed as maximum likelihood over latent factors of a generative model. That means you can do inference on these models via stochastic gradient descent in e.g. PyTorch. Notebook here: https://github.com/patrickmineault/xcorr-notebooks/blob/master/PCA_through_gradient_descent.ipynb

**Video**
- [[Andrew Ng]] [Video](https://www.coursera.org/learn/unsupervised-learning-recommenders-reinforcement-learning/lecture/mqAH4/pca-algorithm-optional)