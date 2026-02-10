---
title: Coursera_Supervised Machine Learning - Regression and Classification
aliases: []
summary: 
created: 2022-06-23 11:50
modified: 2022-06-23 11:50
tags: [learning, Coursera]
---

[[machine learning]]
[[training data|training data set]]
[[algorithms]]
[[Andrew Ng]]

# 1. Regression and Classification
## Week 1
### Regression
$x$ = input variable = feature
$y$ = output variable = target
$m$ = number of training examples

($x, y$) = single training example
($x^i, y^i$) = $i$th training example

$f_{w,b}(x^{(i)}) = wx^{(i)} + b$

### Cost Function

We want to find $w$, $b$ such that $\hat{y}^{(i)}$ (our prediction) is close to the real value of $y$ (target) for all "points". In other words you feed in the $x^{(i)}$ value and estimate the $y$ value ($\hat{y}^{(i)}$) and then see how far off it is...then use a [[cost function]] to minimize this [[error]]...
![[Pasted image 20220705114033.png]]

We want to minimize $J$ as a function of $w$ and $b$

![[Pasted image 20220706134548.png]]

### Regularization
![[Pasted image 20220902114621.png]]
![[Pasted image 20220902114719.png]]




# 2. Advanced Learning Algorithms
![[Pasted image 20220906102825.png]]
## Week 1
Neural Networks

## Week 2
[[objective function|loss function]] is the error on a given example or trial, while the [[cost function]] is the AVERAGE of the [[objective function|loss function]] across all trials/samples.

 ![[Pasted image 20221012091800.png]]

[[activation functions]]
![[Pasted image 20221013084329.png]]

- [[sigmoid function]] good or binary classification
- regression problems might be better with [[linear activation function]] if things can take on negative values
- [[rectified linear unit|ReLU]] can be a good choice for regression problems if there are not any negative values (e.g. trying to predict price of house)^[This is the most common activation function]
	- can just use [[rectified linear unit|ReLU]] for all hidden layers

#### Multiclass Classification

#### Back Propagation
##### Computation Graph
Start with [[forward propagation]]:
![[Pasted image 20221206101720.png]]

[[back propagation]] involves computing derivatives, from right to left.

![[Pasted image 20221206102454.png]]

- [[Andrew Ng]] explaining [[derivative]]s

## Week 3 | Applying Machine Learning
### Diagnostics
#### Model Evaluation
- To avoid overfitting use train/test splitting of data
- Training error is generally lower than actual generalization error
#### Model Selection
- Use THREE data splits
	- Training (used for parameter estimate)
	- Cross Validation (used for model selection)
	- Test set
![[Pasted image 20221018085158.png]]

#### Bias and Variance
- clue that you are overfitting is if training data has high accuracy (low bias) and cross validation data has low accuracy (high bias)
![[Pasted image 20221018091717.png]]

#### Regularization
>[!Important ]
>One of the critical aspects of regularization is choosing a suitable $\lambda$...

One approach is a grid search....

![[Pasted image 20221118085028.png]]

#### Baseline Performance
Sometimes some error may be normal...
>[!Question]
>What is the level of error you can reasonably hope to achieve?
>- human level performance
>- competing algorithms
>- guess based on experience/domain knowledge

To determine if you have high bias compare to baseline performance instead of ZERO (unless baseline IS zero)...

![[Pasted image 20221118085722.png]]
#### Learning Curve
![[Pasted image 20221118090117.png]]

![[Pasted image 20221118090254.png]]
>[!Warning] 
>If a learning algorithm has **high bias** it won't bring down the error rate...

![[Pasted image 20221118090525.png]]
>[!Note] 
>Larger sample size WILL help if you have a high variance algorithm...

#### Debugging Learning Algorithm
![[Pasted image 20221118091107.png]]
With neural networks if you can keep increasing the network size and data then you should be able to get to a low bias and low variance model...
![[Pasted image 20221128090329.png]]

>[!note] 
>A large neural network will usually do better than a smaller one as long as regularization is well implemented
### ML Development Process
![[Pasted image 20221129084429.png]]

#### Adding Data
Focus on adding more data of type that **error analysis** indicates might help.

Can also use [[data augmentation]].

#### [[Transfer Learning]]
Train on one data set initially, and try and apply learned weights to another dataset.

==Option 1== in the example below is when you have a small [[training data|training data set]].
![[Pasted image 20221130084403.png]]

- neural network parameters must be pretrained on large neural network of the ==same input type==
- then you fine tune the network to your data

#### ML Project Full Cycle
![[Pasted image 20221130085152.png]]
**Deployment**
![[Pasted image 20221130085531.png]]

[[Machine Learning Operations]] specialists often now tasked with deployment

#### Fairness, Bias and Ethics Guidelines
![[Pasted image 20221130090444.png]]

### Skewed Datasets
If we have a rare target class traditional performance metrics may not be useful. If you predict "no disease" every time for a very rare disease your error rate will be VERY low, but you will never correctly classify someone who has the disease.

Using a [[confusion matrix]] and calculating [[precision]] and [[recall]] values can be a better means of evaluation in this case.

There is often a tradeoff between [[precision]] and [[recall]]...

If we want to be very confident in our prediction then we want to increase [[precision]], which will lower [[recall]]...

![[Pasted image 20221202100030.png]]
If instead we want to be sure NOT to miss any potential cases, then we would want to increase [[recall]] instead...
![[Pasted image 20221202100137.png]]
Can trade off precision and recall...
![[Pasted image 20221202100234.png]]

Can use [[F1 score]] to compare [[precision]]/[[recall]] scores...

![[Pasted image 20221202100603.png]]

## Week 4 | Decision Trees
### [[decision tree|Decision Trees]]

**Basic Components**
- Root node
- Decision node
- Leaf node

#### Decision Tree Decisions...
**Decision 1**
How to choose what feature to split on at each [[decision node]].
**Decision 2**
When do you stop splitting?
- when a node is 100% one class
- when splitting a node will result in a tree exceeding a maximum depth
- when improvements in purity score are below a threshold
- when number of examples in a node is below a certain threshold

#### Decision Tree Learning
![[Pasted image 20221213093637.png]]

##### Measuring Purity
- [[entropy]] can be used to measure impurity
![[Pasted image 20221213091811.png]]

##### Choosing a Split
Want to reduce [[entropy]] and maximize [[information gain]].

![[Pasted image 20221213092707.png]]

Each split is associated with TWO entropy values. In order to combine them we take a weighted average (based on the number of samples in each branch).

In fact we are trying to maximize **reduction** in entropy...which is called [[information gain]]

![[Pasted image 20221213092959.png]]

- we can stop splitting based on a threshold for minimum [[information gain]]...

##### One Hot Encoding
- can use for categorical features
- example of [[one hot encoding]] a feature
![[Pasted image 20221214083626.png]]

##### Continuous Features
- select split point based on maximizing [[information gain]]
	- entropy at parent node - entropy at child node
	![[Pasted image 20221214085230.png]]
##### [[Regression trees]]

Can just take the average of [[leaf node]] to predict something continuous like weight:
	![[Pasted image 20221214085615.png]]
- Key decision is choosing the feature to split on...
- Rather than trying to reduce [[entropy]] we are trying to reduce the [[variance]] at each child or leaf node (again take a weighted average based on number of samples)
**Example**
![[Pasted image 20221214090050.png]]

#### Decision Tree Ensembles
Collection of multiple trees
- These each get a "vote"
- Makes decision less dependent on one tree's architecture...

##### Sample with Replacement
Can use to create new [[training data|training sample]]

##### [[random forest|Random forest algorithm]]
- generally build between 64 and 128 trees
	- more trees doesn't "hurt" just have diminishing returns...
- can also be called a [[random forest|bagged decision tree]]
- you can also enforce use of different nodes by picking a random subset of $k < n$ features and allow the algorithm to only choose from that subset of features

##### [[XGBoost]]
The difference with a standard [[random forest]] implementation is that when you are creating your new samples for subsequent trees you oversample misclassified examples. Then train a new decision tree on this dataset.

##### Decision Trees vs Neural Networks
[[decision tree|Decision trees]] and [[random forest|tree ensembles]]
- Work well on tabular (structured) data
- Not good for unstructured data (images, audio, text)
- Fast
- Small decision tree may be human interpretable
[[neural network|Neural networks]]
- Work well on all types of data, including tabular (structured) and unstructured data
- May be slower than a decision tree
- Works with transfer learning
- When building a system of multiple models working together it might be easier to do so with multiple neural networks^[you can only train one decision tree at a time]

# 3. Unsupervised Learning
## Week 1: Unsupervised Learning
### Clustering
[[K-means clustering]]
Step 1
- calculate distance of each point to centroids and assign to closer centroid
Step 2
- recompute the centroids

#### Optimization
![[Pasted image 20221219135319.png]]
Cost should **never** go up
If it stops going down completely then it has converged

#### Initializing K-means
- choose $K < m$
- randomly select $K$ training examples (to use as your starting centroid points)
- e.g. ![[Pasted image 20221223085952.png]]
- 👆Can get stuck in [[local optimum]]
- Can run k-means multiple times and see which has the lowest value for the cost function
- formally:![[Pasted image 20221223090235.png]]
#### Choosing number of clusters
- [[Andrew Ng]] does not use the [[elbow method]]...
- evaluate [[K-means clustering]] based on how well it performs downstream.
- e.g. cost vs. fit ![[Pasted image 20221223090844.png]]
- 

### Anomaly Detection
- often used for fraud detection
#### [[gaussian distribution]]
#### [[anomoly detection algorithm|Anomoly detection algorithm]]
- need to carry out density estimation
	- what is the probability of $p(\vec{x}) = p(x_1;\mu_1,\sigma^2_1) * p(x_2;\mu_2,\sigma^2_2) *...* p(x_n;\mu_n,\sigma^2_n)$
	- Alt notation:![[Pasted image 20221227083832.png]]
**Steps**
![[Pasted image 20221227084104.png]]
![[Pasted image 20221227084300.png]]

#### Development and Evaluation
- Sometimes called [[real number evaluation]]
- you actually **do** need some [[labeled data]]
- training set is all class $y=0$, then try and correctly find anomalies in [[cross validation|cross validation set]] and [[test set]]
- usually have [[cross validation]] set and [[test set]], but if there are very few anomalies the test set may be eliminated
**EXAMPLE**
![[Pasted image 20221227085420.png]]
- can be tricky to evaluate algorithm performance on [[skewed distribution|skewed datasets]] in which case we can use metrics like [[true positive]], [[false positive]], [[false negative]], [[true negative]], [[precision/recall]] and [[F1 score]].

#### Anomaly detection vs. [[supervised learning]]
- when to prefer one over the other?
- [[anomoly detection algorithm]] is good for situations where versions of $y=1$ may need to predicted that have NEVER been seen. We just know that they are unusual, not that there is a known case...
- ![[Pasted image 20221228084814.png]]
**EXAMPLES**
![[Pasted image 20221228085006.png]]
#### Feature Selection
- Can transform non-[[gaussian distribution|gaussian]] features to be gaussian
	- often using log or a root (e.g. $x^{1/3}$)
- Can find examples that were anomalous but not classified correctly and see if there is a feature that would have captured that anomaly that then should be added.

## Week 2: Recommender Systems
### Collaborative Filtering
#### Using per-item features
Example of movie ratings:
![[Pasted image 20221229085507.png]]
Goal is to predict $\boldsymbol{w}^{(j)}, \boldsymbol{b}^{(j)}$ for a given user, given their rating data
**Cost Function**
- For a single user:![[Pasted image 20221229085936.png]]
	- where $n$ is the number of features
- But for all users:![[Pasted image 20221229090137.png]]
#### Collaborative filtering algorithm
Useful if you don't have features about your data (e.g. with movies a rating for romance, action, etc.)
- you can "learn" features for a given "movie" if the users already have parameters...($\boldsymbol{w}^{(j)}, \boldsymbol{b}^{(j)}$)
- minimize cost function based on w, b ==and== x
#### Binary labels + Collaborative filtering
![[Pasted image 20221230085242.png]]
We basically combine the previous regression model with the [[sigmoid function|logistic function]]...
![[Pasted image 20221230085356.png]]
### Recommendation System Implementation Details
#### Mean Normalization
Important for users without any ratings - so that the assumption becomes that their opinion matches the population average rather than that they give everything a 0 rating...
#### TensorFlow Implementation
Tensorflow allows us to compute the derivatives "automatically"...
- [[auto diff]]
#### Finding Related Items
[[cold start problem]]
- difficult to rank things when:
	- a new movie with few ratings
	- a new user who has rated few movies
- can use side information about users
	- demographics, web browser etc. (these are correlated with preferences that extend to movies)
### [[Content Based Filtering]]
![[Pasted image 20230117085028.png]]
- Can also use this to find similar movies or users (as in the earlier example), or just similar items more generally

### [[Principal Component Analysis]]

Useful for reducing the number of features and for visualization
![[Pasted image 20230206115336.png]]
#### PCA Algorithm
First normalize (mean 0) and scale features

PCA chooses new axis/axes and projects your data onto this axis

Most useful for **visualization**
Used to be used for data compression and speeding up training algorithms (e.g. [[support vector machine]]) but no longer relevant for modern ML and computing...

PCA is not the same as [[linear regression]]...
- in linear regression $y$ is privileged - no dimension is privileged in PCA
![[Pasted image 20230208092048.png]]



## Week 3: Reinforcement Learning

[[reinforcement learning]] good for training robots, for example, where [[supervised learning]] makes less sense...

Important to think of 'time' or 'energy expenditure' as a cost that takes away from the reward value.

![[Pasted image 20230314092403.png]]

In finance we often think about how much less a dollar is worth in the future, than today...

![[Pasted image 20230314092721.png]]

- [[policy]] is a formula that describes what we should do in each state...

[[Markov decision process]] refers to the fact that the future only depends on the **current state**.

#### State action value function

The [[state action value function]]:
$$Q(s,a)$$
The value of the function is the return/reward given that:
- start in state $s$
- take action $a$ (once)
- behave **optimally** ==after that==

##### Bellman Equations
[[Bellman equation|Bellman equations]] are used to compute [[state action value function]] $Q(s,a)$

$s$ : current state
$R(s)$ : reward of current state
$a$ : current action
$s'$ : state you get to after taking action $a$
$a'$ : action that you take in state $s'$

##### Random (stochastic) environment
Requires a modification of the [[Bellman equation]] - where the future state is random...(with probabilities for "correct" step and misstep)

![[Pasted image 20230315092557.png]]

### Continuous state spaces
State of a vehicle might have x and y position and angle and speed, and speed of turning...for example...

![[Pasted image 20230404100043.png|100]]
- Continuous state [[Markov decision process]].
[[Bellman equation]] used to calculate "y"

Deep Q network