[[modeling]]
[[dimensionality reduction]]
[[principal component analysis]]
[[gaussian-process factor analysis]]
[[exploratory factor analysis]]
[[confirmatory factor analysis]]
[[factor loadings]]
[[statistical model]]

# Notes
Method to reveal relationships between assumed [[latent variables]] and [[manifest variables]].

[[factor analysis|Factor analysis]] assumes that the observed relationships among [[manifest variables]] are due, on a lower level,  to the relationships of these [[manifest variables]] to a [[latent variables|latent variable]] that is driving all of them.

[[factor analysis|Factor analysis]] is a [[linear]] [[statistical model]]. Observed variables ([[manifest variables]]) are modeled as a linear combination of factors and [[error terms]].

Looking for items/variables that "move together"
- Good for single trial analyses
- Related to PCA
- Tries to identify shared variance among variables
- No concept of temporal smoothing

Two types:
1. [[exploratory factor analysis]]
2. [[confirmatory factor analysis]]

**Math**
For each observed variable $x$:
$$x_i = \lambda_{i1}f_1 + \lambda_{i2}f_2 + ...+\lambda{ik}f_k + \mu_i$$
where $\lambda_{ij}$ are regression coefficients ([[factor loadings]]) representing how $x_i$ is related to $k$ common factors. $\mu_i$ are residuals called [[specific variates]].
[[linear algebra|Linear algebra]] version:
$$\mathbf{x} = \mathbf{Af} + \mathbf{u}$$

# Resources