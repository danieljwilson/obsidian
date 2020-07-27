# Sequence
- [Load Data](https://colab.research.google.com/github/NeuromatchAcademy/course-content/blob/master/projects/load_stringer_spontaneous.ipynb)
- [Stringer Code](https://github.com/MouseLand/stringer-et-al-2019/blob/master/run_processing.ipynb)
- 

 1. **PCA of videos**
Select first few components that capture 70-80% of variance

2. **Fit HMM**: [SSM](https://github.com/slinderman/ssm/blob/master/notebooks/1%20Simple%20HMM%20Demo.ipynb)
Fit hmm to the pcs of the timecourse
	- hypothesis is that there will be chunks of timecourse that reflect particular states
	- i.e. Different intervals should have different statistical properties
 
 HMM gives probabilities that you are in each hidden state
	- maybe set a threshold of confidence to say that you are now in this state
	- can use these as "trials" [behavior state 1, state 2, state 3,...]
		- high confidence time (go back and check the actual video...)

- Number of hidden states is a hyperparameter
	- Need to find what is the best number of states that best fits
	- Increase the number of hidden states
	- Use BIC to select between models
	- More principled way is to use cross validation!
		- Fit hidden markov model to k (3, 4,5...etc...) states and then calculate the accuracy on the held out data. Will tend to underfit, then plateau (find the elbow) BIC should be in the same ballpark
	- May find extra states that are fitting noise...

- Plot behavioral, plot posterior probabilities

3. **PCA of neural activity** - see if there is clear neural clustering by state
- More sophisticated: given intervals of HMM run classifier to see if neural activity can classify between these different states (SVM perhaps)

- What is the dimensionality of each hidden state?
- Would it make sense to look at populations dynamics based on transitions from state to state?

---

I recommend fitting an HMM or AR-HMM to the time course of your variables using multivariate gaussian emissions. Bob Datta did this here. The HMM output with K hidden states is the posterior probability p_m(t) of state m at time t, so that \sum_{m=1}^K p_m(t)=1 for each t. Now, if you set a threshold at p>80%, you segment the time course into intervals where states are detected with high confidence. To interpret the states, I recommend plotting many video snippets like animated GIF like in this video.

For the HMM you can use hmmlearn in scikit learn, or this toolbox by Scott Linderman with notebooks as tutorials. This notebook has multivariate gaussian HMM. I recommend you try first to generate synthetic data and fit it back to check you get back the emissions and transitions you put in.
The AR extension is at line 94 of this file. The theory for AR-HMMs is in the book by Bishop at page 632.

Now, the problem is that it's a bit tricky to install and run Scott's code, so we run the following installation procedure on a Linux machine. It's best used in a virtual environment.