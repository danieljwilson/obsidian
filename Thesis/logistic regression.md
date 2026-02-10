---
title: logistic regression
aliases: []
summary: 
created: 2021-08-08 10:17
modified: 2021-08-08 10:17
tags: []
---

[[modeling]]
[[machine learning]]
[[linear regression]]
[[algorithms]]
[[K-means clustering]]
[[neural network]]
[[gradient descent]]
[[sigmoid function]]

# Notes
- for [[binary classfication]]
- range from 0 to 1
- Also known as Bernoulli [[general linear model|GLM]]
- Solves the binary classification problem
- [[objective function]] is [[maximum likelihood estimate]]

Two step formula...
1. start with a standard prediction ($z$)
2. plug that $z$ into the [[sigmoid function]]...
![[Pasted image 20220817152915.png]]
In one line:
![[Pasted image 20220817153033.png]]

---
## Details
The fundamental input/output equation of logistic regression is:

$$p(y_i = 1 |x_i, \theta) = \sigma(\theta^Tx_i)$$
==Which is saying that we are calculating the probability that $y = 1$ given input $\vec{x}$ or $x_i$ and parameters $\vec{w},b$ or $\theta$==

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

From [[Andrew Ng]]
#### Logistic Regression: Follow the Curve

There was a moment when logistic regression was used to classify just one thing: If you drink a vial of poison, are you likely to be labeled “living” or “deceased”? Times have changed, and today not only does calling emergency services provide a better answer to that question, but logistic regression is at the very heart of deep learning.

Poison control: The logistic function dates to the 1830s, when the Belgian statistician P.F. Verhulst invented it to describe population dynamics: Over time, an initial explosion of exponential growth flattens as it consumes available resources, resulting in the characteristic logistic curve. More than a century passed before American statistician E. B. Wilson and his student Jane Worcester devised logistic regression to figure out how much of a given hazardous substance would be fatal. How they gathered their training data is a subject for another essay.  

Fitting the function: Logistic regression fits the logistic function to a dataset in order to predict the probability, given an event (say, ingesting strychnine), that a particular outcome will occur (say, an untimely demise).

-   Training adjusts the curve’s center location horizontally and its middle vertically to minimize error between the function’s output and the data. 
-   Adjusting the center to the right or the left means that it would take more or less poison to kill the average person. A steep slope signifies certainty: Before the halfway point, most people survive; beyond the halfway point, _sayonara_. A gentle slope is more forgiving: lower than midway up the curve, more than half survive; farther up, less than half.  
-   Set a threshold of, say, 0.5 between one outcome and another, and the curve becomes a classifier. Just enter the dose into the model, and you’ll know whether you should be planning a party or a funeral.

More outcomes: Verhulst’s work found the probabilities of binary outcomes, ignoring further possibilities like which side of the afterlife a poison victim might land in. His successors extended the algorithm:

-   Working independently in the late 1960s, British statistician [David Cox](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKnp5nCWtV3Zsc37CgTqFW8qKtbz2ZdZqbW2tk8cH5rKb9mW73nhxn62glZ-W18JHxj5d7mWNW6d_gF348FFcGN3TVLRXTss3tW3wcwqX2Qq5qKW1jcMCs43VtDnW8W6lMY8pF2pnN1nwMsJPJdblW3ZPhWr8CYHm0W4R4WGd60BF7dW17GqyK8pr2_GVg6HtM3zfYPYW4RB-BJ993JJ9Mmbs6xWL1pcN4b_JjZ_vk56W6gsFPK2t7X-TW5ZrmfN8kkm-8W5hBlsK6vpWLlW8PN_2w1F5vDqW3WkVZh7bG0n4W4t05SL34Nvm_N8BlBXLrDRtXW92QkWP8ZXp-MW1HnWLq975nC5W4fwwGw79NPDXW4VKZRY6qJQTsW6rv7F-1BxthNW8sHnjy628BDFW41MS2X6TYcvHN3ClX8xlzbgLW7XpF8M52SK6LW8GwKY17fcb2-N7l38mfwv-YWW54pLXc7LhmtbW6xZ-Pj97Q3QGW6zTwDx7mV8r3W8MYwgk7wbB9rW34VcGv7HmHYzW5GC4hY1m1VCKW26LR975DvYKTVHvN0W1-Y8CqVB4-s18TvcMB3f_Z1) and Dutch statistician [Henri Theil](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ5nCVVV3Zsc37CgFM0W7NZQrg220CysW7knH0t6wRkfTW6gYL967r3J_qN65YtJCRgdZ7W11KMSg34CtSdW8hKVHF2r0S-DW4nfD7r49RMj7W63gmVW8Lk74BW63Bcyy4SFTvLW22h3Nw8fxTlYW1n_p4f4K8jl5W3sYymg4Q1BG9W2YnS7F5qbgVRW3rZ1yg3qzsB3W3WKzz_3QnlGQW5b7mDq47Wj2xW5Wqvdj3C6Mh2N67vJb_j47qBV9Z2zK76nqCcW3pygjZ7fvNGGW7qt_wC7p36DvW8gc--x1P3tTTW1hn29G81yJzLVcwgKn80xXGqW19YdR31rnQ0mW47hF2R1ZvbmXN505SJJ6Y-ScW5KTS_G275QbQW293nLK8MRVl0W59yb6N59q5tzW7VnWyf5ZzZ8rV3hJRl2CCc8FW5x-Tzv7fTDhQN9ffmFDb8DgMVkMr0v176K3RW84T-wl7Rmfm2W1S3tV62J_qlmW1GnjGW8pv0cGW6lZ5W37gKC35W9h6SqJ8d1k8238_F1) adapted logistic regression for situations that have more than two possible outcomes. 
-   Further work yielded [ordered logistic regression](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmw3q3npV1-WJV7CgQskVWxnCP4g_7fHW7g0vlH1tcQ6pVFK3S771g1mbW84V2_Z1rW5m6W2sDRl23lsrYjW3zlncT4j0Bg7W1Zf2Mf2DDKRVW9fyLPF1SC-gZW3SnVKb33RwSmW12YBRR4_kXHTW6zTNPB4hd8WzW2g_0Qx6-6_D_W8f_QW4503Q_VW9cP4_r5PbrqWW85NJRJ3bbwM1W4PsB4V4clCzQW8QX_hd4pcFLrW4RxFvf4rsXQBW1y8Hcw4DM1L1N1DfqQSMlBGhW3ZQ92q904YvRW4ZtN_W7Lk4B03m0L1), in which the outcomes are ordered values.
-   To deal with sparse or high-dimensional data, logistic regression can take advantage of the same regularization techniques as linear regression. 

Versatile curve: The logistic function describes a wide range of phenomena with fair accuracy, so logistic regression provides serviceable baseline predictions in many situations. In medicine, it estimates mortality and risk of disease. In political science, it predicts winners and losers of elections. In economics, it forecasts business prospects. More important, it drives a portion of the neurons, in which the nonlinearity is a sigmoid, in a wide variety of neural networks.
# Resources
