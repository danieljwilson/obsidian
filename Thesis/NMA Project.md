**Link**: [github](https://github.com/NeuromatchAcademy/course-content/tree/master/projects#Project-structure-and-schedule)

#neuromatch 

# Notes
Proposed projects of interest:
- Biological learning rules for supervised and unsupervised tasks
- State sequences in population dynamics across cortical areas
- Understanding trained neural networks (RNNs and/or DNNs)
- Communication within brain area
- State-dependence of stim+choice signals
- Impact of circadian rhythms on task performance
- Dimensionality within and between brain areas


# Group B
### Questions
- What is a state?
	- How to categorize beyond moving/non-moving
	- Interesting to think about how to categorize states

Keep in mind:
- Movement has multiple parts: (preparation/movement/feedback)

- What is a latent dimension?
- what are canonical "eigenfaces"?
- what are up-down phases?
- what does it mean when they say they sorted the neurons by "a manifold embedding algorithm"?

### Mentor meeting
Bob Datta paper
- Makes gifs from snippets of videos and then lines up the gif snippets...

**Workflow**
- pca of videos
- gets first few components that capture 70-80% of variance
- fits hmm to the pcs of the timecourse
- hypothesize that there will be chunks of timecourse that reflect particular states
	- Different intervals should have different statistical properties
- What is the dimensionality of each hidden state?
- Would it make sense to look at populations dynamics based on transitions from state to state?
- HMM gives probabilities that you are in each hidden state
- maybe set a threshold of confidence to say that you are now in this state
	- can use these as "trials" [behavior state 1, state 2, state 3,...]
		- high confidence time (go back and check the actual video...)
- Plot behavioral, plot posterior probabilities
- Now  can do pca of neural activity - see if there is clear neural clustering by state
- More sophisticated: given intervals of HMM run classifier to see if neural activity can classify between these different states (SVM perhaps)

**Run HMM**
- Segment to high confidence areas
- See if this step WORKS
- THEN go look at neural activity

- HMM: Number of hidden states is a hyperparameter
	- Need to find what is the best number of states that best fits
	- Increase the number of hidden states
	- Use BIC to select between models
	- More principled way is to use cross validation!
		- Fit hidden markov model to k (3, 4,5...etc...) states and then calculate the accuracy on the held out data. Will tend to underfit, then plateau (find the elbow) BIC should be in the same ballpark
	- May find extra states that are fitting noise...

Mentor Quote: "I don't know. Something might happen."

### Ideas
Hidden states might not really be hidden, it might be about the **perceptual abilities** of the observer. These should be more easily interpreted by physical/behavioral data than true hidden states. For example:
- We can't tell if a penguin is mad but obvious to other penguins. Therefore there are signals. We are just sampling poorly or processing poorly.
- Songbird paper

**True** hidden states would have INTENT. These, however, should be interpretable neurally.
- Attempting to have other people not notice your state
	- Trying to hold in a fart, or have to go pee really badly at a board meeting
	- Trying to come across as relaxed and confident during a presentation
- Attempting to have people misinterpret your state
	- Pretending to sleep on a plane in order not to have to talk to your seatmate
	- An animal playing dead



# Resources
## Papers
- Bob Datta: Mapping Sub-Second Structure in Mouse Behavior
	- mouse behavior as a series of reused and stereotyped modules with defined transition probabilities

## Other
- [youtube videos](https://www.youtube.com/playlist?list=PLkBQOLLbi18ODTckxhgah98JloMLXt4oF)
- [Possible Projects Slides](https://mfr.ca-1.osf.io/render?url=https://osf.io/9j38s/?direct%26mode=render%26action=download%26mode=render)
- Curated Datasets
	- [Stringer Dataset](https://www.youtube.com/watch?v=78GSgf6Dkkk&list=PLkBQOLLbi18ODTckxhgah98JloMLXt4oF&index=7&t=0s)
	- [Steinmetz Dataset](https://www.youtube.com/watch?v=WXn4-FpVaOo&list=PLkBQOLLbi18ODTckxhgah98JloMLXt4oF&index=4&t=0s)
	- Kay/Gallant Dataset
	- HCP Dataset
	- IBL Dataset

- [SVD vs PCA](https://medium.com/@jonathan_hui/machine-learning-singular-value-decomposition-svd-principal-component-analysis-pca-1d45e885e491#:~:text=What%20is%20the%20difference%20between,PCA%20skips%20less%20significant%20components.)

# [[NMA Project Code]]



