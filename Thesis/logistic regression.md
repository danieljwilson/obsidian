[[modeling]]

# Notes
- Also known as Bernoulli [[general linear model|GLM]]
- Solves the binary classification problem

## Details
The fundamental input/output equation of logistic regression is:

$$p(y_i = 1 |x_i, \theta) = \sigma(\theta^Tx_i)$$

### The logistic link function

You've seen $\theta^T x_i$ before, but the $\sigma$ is new. It's the *sigmoidal* or *logistic* link function that "squashes" $\theta^T x_i$ to keep it between $0$ and $1$:

$$\sigma(z) = \frac{1}{1 + \textrm{exp}(-z)}$$

### The Bernoulli likelihood

You might have noticed that the output of the sigmoid, $\hat{y}$ is not a binary value (0 or 1), even though the true data $y$ is! Instead, we interpret the value of $\hat{y}$ as the *probability that y = 1*:

$$ \hat{y_i} \equiv p(y_i=1|x_i,\theta) = \frac{1}{{1 + \textrm{exp}(-\theta^Tx_i)}}$$

To get the likelihood of the parameters, we need to define *the probability of seeing $y$ given $\hat{y}$*. In logistic regression, we do this using the Bernoulli distribution:

$$P(y_i\ |\ \hat{y}_i) = \hat{y}_i^{y_i}(1 - \hat{y}_i)^{(1 - y_i)}$$

So plugging in the regression model:

$$P(y_i\ |\ \theta, x_i) = \sigma(\theta^Tx_i)^{y_i}(1 - \sigma(\theta^Tx_i))^{(1 - y_i)}.$$

This expression effectively measures how good our parameters $\theta$ are. We can also write it as the likelihood of the parameters given the data:

$$\mathcal{L}(\theta\ |\ y_i, x_i) = P(y_i\ |\ \theta, x_i),$$

and then use this as a target of optimization, considering all of the trials independently:

$$\textrm{log}\mathcal{L}(\theta | X, y) = \sum_{i=1}^Ny_i\textrm{log}(\sigma(\theta^Tx_i))\ +\ (1-y_i)\textrm{log}(1 - \sigma(\theta^Tx_i)).$$

# Resources
