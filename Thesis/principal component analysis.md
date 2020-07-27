[[modeling]]
[[dimensionality reduction]]
[[factor analysis]]
[[eigenvectors]]

# Notes
- [[principal component analysis|PCA]] represents data in a new **orthonormal basis** defined by the [[eigenvectors]] of the [[covariance matrix]]
- **Goal**: find an orthonormal basis capturing the directions of maximum variance of the data
- Also has the useful property that the projected data (*scores*) are uncorrelated.
- The projected variance along each basis vector is given by its corresponding eigenvalue.
	- This is important because it allows us rank the "importance" of each basis vector in terms of how much of the data variability it explains.
- Can be effective for visualization (clustering when looking at first few principle components)
- 

**Steps:**
- First subtract the mean.
- Then calculate the sample covariance matrix.
- Then find the eigenvalues and eigenvectors and sort them in descending order.
- Finally project the mean-centered data onto the eigenvectors.


# Resources
- [[Neuromatch]] [Collab notebook](https://colab.research.google.com/drive/1RrO2uqYFmdopzSCqD0nFcpb6hcwKg2Op#scrollTo=D-ArWcnsChSK)
- [Mathematical basis of PCA properties](https://youtube.com/watch?v=p56UrMRt6-U)

