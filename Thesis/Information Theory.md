[[Information Theory]]
[[Claude Shannon]]

# Notes

# Resources
- Book: [Information Theory, Inference, and Learning Algorithms](http://www.inference.org.uk/mackay/itprnn/book.html), David MacKay
	- I have downloaded this into `Academics/Books`
- Video: [The Bit Player](https://thebitplayer.com/) (on Claude Shannon)
- About Entropy:
	Claude Shannon's foundational [1948 paper](https://en.wikipedia.org/wiki/A_Mathematical_Theory_of_Communication) on information theory began with three criteria for a function $H$ defining the entropy of a discrete distribution of probability masses $p_i\in p(X)$ over the points $x_i\in X$:
	1. $H$ should be continuous in the $p_i$. 
	  - That is, $H$ should change smoothly in response to smooth changes to the mass $p_i$ on each point $x_i$.
	2. If all the points have equal shares of the probability mass, $p_i=1/N$, $H$ should be a non-decreasing function of $N$. 
	  - That is, if $X_N$ is the support with $N$ discrete points and $p(x\in X_N)$ assigns constant mass to each point, then $H(X_1) < H(X_2) < H(X_3) < \dots$
	3. $H$ should be preserved by (invariant to) the equivalent (de)composition of distributions.
	  - For example (from Shannon's paper) if we have a discrete distribution over three points with masses $(\frac{1}{2},\frac{1}{3},\frac{1}{6})$, then their entropy can be represented in terms of a direct choice between the three and calculated $H(\frac{1}{2},\frac{1}{3},\frac{1}{6})$. However, it could also be represented in terms of a series of two choices: 
		1. either we sample the point with mass $1/2$ or not (_not_ is the other $1/2$, whose subdivisions are not given in the first choice), 
		2. if (with probability $1/2$) we _don't_ sample the first point, we sample one of the two remaining points, masses $1/3$ and $1/6$.

		Thus in this case we require that $H(\frac{1}{2},\frac{1}{3},\frac{1}{6})=H(\frac{1}{2},\frac{1}{2}) + \frac{1}{2}H(\frac{1}{3}, \frac{1}{6})$

	There is a unique function (up to a linear scaling factor) which satisfies these 3 requirements: 

	 $$H_b(X) \&= -\sum_{x\in X} p(x) \log_b p(x)$$

	Where the base of the logarithm $b>1$ controls the units of entropy. The two most common cases are $b=2$ for units of _bits_, and $b=e$ for _nats_.

	We can view this function as the expectation of the self-information over a distribution:

	$$H_b(X) = \mathbb{E}_{x\in X} \left[I_b(x)\right]$$

	$$I_b(x)=-\log_b p(x)$$

	Self-information is just the negative logarithm of probability, and is a measure of how surprising an event sampled from the distribution would be. Events with $p(x)=1$ are certain to occur, and their self-information is zero (as is the entropy of the distribution they compose) meaning they are totally unsurprising. The smaller the probability of an event, the higher its self-information, and the more surprising the event would be to observe. 
