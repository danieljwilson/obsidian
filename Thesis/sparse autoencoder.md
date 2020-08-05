[[machine learning]]
[[autoencoder]]

# Notes
- Not hourglass shape like traditional [[autoencoder]]
	- bottleneck layer larger, but **sparse**
		- only some "neurons" are active at any given time
			- Can think of as using "words" in a large "dictionary" where the goal is to describe something as concisely as possible
	- **Main loss**:
		- Trying to reconstruct data as accurately as possible (e.g. an image)
	- **Sparsity loss**:
		- Output of encoder uses as few "neurons" as possible
