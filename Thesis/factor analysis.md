[[modeling]]
[[dimensionality reduction]]
[[principal component analysis]]
[[gaussian-process factor analysis]]
[[exploratory factor analysis]]
[[confirmatory factor analysis]]
[[factor loadings]]
[[statistical model]]
[[factor extraction]]
[[factor rotation]]
[[eigenvalues]]

# Notes
Method to reveal relationships between assumed [[latent variables]] and [[manifest variables]].

- [[factor analysis|Factor analysis]] is a [[linear]] [[statistical model]].
- Observed variables ([[manifest variables]]) are modeled as a linear combination of [[factors]] and [[error terms]].
- [[factor analysis|Factor analysis]] assumes that the observed relationships among [[manifest variables]] are due, on a lower level,  to the relationships of these [[manifest variables]] to a [[latent variables|latent variable]] that is driving all of them.
- condenses set of [[observed variables]] into set of [[unobserved variables]] called [[factors]].

**Looking for items/variables that "move together"**
- Good for single trial analyses
- Related to PCA
- Tries to identify shared variance among variables
- No concept of temporal smoothing

**Assumptions**
1. No [[outliers]] in data
2. [[sample size|Sample size]] should be greater than the factor
3. There should not be perfect [[multicollinearity]]
4. There should not be [[homoscedasticity]] between the variables.

**Two types:**
1. [[exploratory factor analysis]]
2. [[confirmatory factor analysis]]

**Math**
For each observed variable $x$:
$$x_i = \lambda_{i1}f_1 + \lambda_{i2}f_2 + ...+\lambda{ik}f_k + \mu_i$$
where $\lambda_{ij}$ are regression coefficients ([[factor loadings]]) representing how $x_i$ is related to $k$ common factors. $\mu_i$ are residuals called [[specific variates]].
[[linear algebra|Linear algebra]] version:
$$\mathbf{x} = \mathbf{Af} + \mathbf{u}$$

**Steps**
1. [[factor extraction]]
2. [[factor rotation]]

**Rule of Thumb**
1. Generally an [[eigenvalues|eigenvalue]] greater than $1$ would suggest a factor should be **kept**
2. This can be combined with the [[elbow method]] using a [[scree plot]].

**Compared to PCA**
- [[principal component analysis]] components are fully orthogonal, [[factor analysis]] does not have this requirement.
- [[principal component analysis]] components are linear combinations of [[observed variables]], whereas [[observed variables]] are linear combinations of [[factors]] in [[factor analysis]].
- [[principal component analysis]] components are uninterpretable, whereas in [[factor analysis]] we can interpret and label the [[factors]].
- [[principal component analysis]] is a [[dimensionality reduction]] method, whereas [[factor analysis]] is seeking [[latent variables]].
- [[principal component analysis]] is a type of [[factor analysis]] (?)

![[factor_analysis_2.png]]

**Viz**
![[factor_analysis.png]]

# Resources
**Tutorials**
- [Datacamp](https://www.datacamp.com/community/tutorials/introduction-factor-analysis)