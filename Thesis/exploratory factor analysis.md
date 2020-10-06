[[modeling]]
[[dimensionality reduction]]
[[principal component analysis]]
[[gaussian-process factor analysis]]
[[exploratory experimentation]]
[[multicollinearity]]
[[factor loadings]]
[[factor analysis]]

# Notes
Designed to uncover relationships between [[manifest variables]] and factors ([[latent variables]] or [[construct|constructs]]) without any prior assumptions.

- If there are only a few items then you could consider just using a [[correlation matrix]]...for example in the image below we can see that the first two and last three items "move" together...
![[correlation_matrix.png]]
- factor analysis can deal with many **items**...correlation analysis on steroids
- by grouping variables together it can help create higher level concepts/[[construct|constructs]] that allow us to generalize/predict other behavior
- [[factor analysis]] helps us avoid [[multicollinearity]] by producing uncorrelated [[measures]].

#### Steps
1. Decide on the number of factors
	- Can establish a threshold of variance explained (e.g. >50%)
	- Can keep all factors whose % [[variance]] explained is $> 1/j$, which means that it is explaining more than "average"
	- Can keep all factors with eigenvalues $>1$
	- Can look at [[scree plot]] and look for "kink"/elbow
2. Derive the factor solution
3. Rotate the factor solution (optional)
4. Interpret each of the factors
5. Evaluate the quality of fit
6. Save the factor scores for use in subsequent analyses (optional)

# Resources