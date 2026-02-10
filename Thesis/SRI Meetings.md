---
title: SRI Meetings
aliases: []
summary: 
created: 2021-09-27 11:12
modified: 2021-09-27 11:12
tags: []
---

[[Schwartz Reisman Institute for Technology and Society]]


# Meetings

**Daniel Browne** 
- Media relations, communications, PR
- Amplify our work...encouraged to use Dan for this

## Sept 29 | [[Boris Babic]]
##### The Case Against Explainable Artificial Intelligence and Machine Learning**
- mainly focused on ==medical== machine learning

**Why Explain Algorithms**
- want a causal explanation (allows us to possibly change outcomes)
- build trust
- promote accountability/clarify liability
- reduce discrimination

**Explainable vs. Interpretable Algorithms**
- may be due to large number of parameters
- "white box" means average human can understand the model
	- e.g. linear model with limited number of parameters
	- e.g. decision tree
	- can provide actionable information (e.g. reduce this behavior to reduce chance of x disease)

==additive linear models with few parameters are archetypal example of white box==

**Interpretability paradigm**
- replace Black Box with White Box

**Explainability paradigm**
- we find WB that closely tracks BB
- we say WB explains BB
- continue to use BB for prediction
- example 

Other Points
- some argue that we should just use interpretable models
- however in high-dimensional issues BB outperform WB - and this improvement in accuracy may be important

Great for symptom treatment
- Predict a fire may be more important than knowing why it started
- But in the end you want to know the cause of the fire...^[If you have a rudimentary model that is better than chance then can't you use this to positively intervene on the process]
	- you say there is "no value to that" at best and at worst "misleading"
	- example of the judge and the assistant who notices a pattern...question is whether this is a significantly meaningful pattern

**The Limits of Explainable Algorithms**
- counterfactual approach to explainability draws on adversarial perturbations
	- counterfactual paradigm asks what is the minimal change is to alter the output of the BB

Health improvement provide alternatives and let people decide...allows for individual differences

Scaling could be an issue
Why does it matter if the explanation is not unique?
10 lbs lighter or 5lbs and lower blood pressure

Domain insensitive - 10lbs lighter = 10 years lighter - seems simple to make a choice in this case


**What Should we Do Instead?**
**Interactivity**
Seems problematic. Isn't this just the judge's assistant - looking for patterns while humans are bad at statistical inference.


## Oct 5 | [[Lisa Austin]]
#### Why we should regulate information about persons, rather than personally identifiable information
Managing data in the 21st century...

---

Fear of the unknown: 
![[Pasted image 20211006124001.png]]

**What are the costs to our concern?**
Is there a risk that this is making people worry MORE about their privacy?
Most of the coverage seems to have a tone of alarm or concern.

Privacy risks - what is the actual risk?
- one bullet point: What auxiliary information is known to adversary (who would this adversary be?) who are the bad actors we should be concerned about?
- What are the actual costs (time and money) annualized per person?

Is our fixation on privacy creating stress, distrust and is it anti-community/connection?

**Benefits to increased data collection/use**
Discriminatory algorithms seem potentially better than discriminatory humans as those algorithms can be analyzed and understood and adjusted. Harder to do this with a human.

![[Pasted image 20211006124132.png]]


I have a credit score, a SIN, bank accounts,
Facebook, linkedin, twitter or instagram profiles then you are already "de-anonymized"

**Looking Forward**
Should the focus be more "data security" than data privacy. Then this can be controlled by policy to a greater degree. Whatsapp end-to-end encryption

Greater penalties for breaches.

ACS data (american community survey)
- detailed
- critical for policy development and evaluation



Anita mentioned your encyclopedic knowledge on the topic...
I have the opposite of encyclopedic knowledge on the topic...I have like a skimmed cole's notes  knowledge of this topic so it was really interesting to hear this


## Oct 27 | [[Nicola Lacetera]]
#### Just vs. Efficient Prices
- Housing
	- Complacent class
	- Increased economic and racial segregation in cities
	- Most segregated schools systems in the US are in California and New York...

- Distinguish between necessities and consumables?
	- Taxes on alcohol

- Is just and efficient perhaps more aligned then we realize?
	- Need to take a long term perspective
## Nov 3 | [[David Dvenaud]]
**David Duvenaud**

**November 3, 2021 - 3:00-4:30 pm Eastern time**

[![](https://ci5.googleusercontent.com/proxy/QZWXZhDE1OWBb5o-1WJ7kbpiFw1nHFVT0YvreUATVTZZRepIEflnSeLFg_ywJXoz7uhiXzT3MBjfZe1NcNSnHAUCyI1PhUyf869Mqho8DTy-HaeO-p5cko3NkwCZ2puAeQPyQs1RUYHO3Lv-9I2uEO42l-iSzA=s0-d-e1-ft#https://mcusercontent.com/6fc8fe89a2e11f92af41d4196/images/4a563168-e899-d730-742c-0eca2e40663a.jpg)](https://utoronto.us20.list-manage.com/track/click?u=6fc8fe89a2e11f92af41d4196&id=969226142a&e=14157c6565)

**Explaining decisions by generating counterfactuals** 

Our weekly **SRI Seminar Series** welcomes [David Duvenaud](https://utoronto.us20.list-manage.com/track/click?u=6fc8fe89a2e11f92af41d4196&id=f611585b05&e=14157c6565), an assistant professor in computer science and statistics at the University of Toronto. 

In this talk, Duvenaud will explore how deep generative computer models can be used to provide explanations for the decisions and predictions of machine learning (ML) systems. As ML systems are increasingly used in various social contexts with a wide range of applications, questions of explainability have become central to ensuring their methods can be interpreted and understood, and that the outcomes they generate are fair and equitable.

---
**NOTES**
==QUESTION==: What is an explanation?

Idea of **inpainting..**
![[Pasted image 20211103120850.png]]

Very good for handling [[missing data]].

How to handle missing data:
- build a probabilistic generative model
- condition on observed data to get a posterior over missing data
- consider all possible missing values in proportion to their probability
- Nazabal et al 2018 | Handling Incomplete Heterogeneous data using VAEs

There are portions of the image that are most critical for "infilling" accurately
- how small can we make that region?

Smallest sufficient vs. smallest destroying
- could these be equivalent?^[I would think so...]

Is infilling really an "explanation?" If so what is it explaining?

Explaining decisions?

Multiple counterfactuals...i.e. importance of each feature for an outcome

Figuring out what features are most critical for the outcome...

- Situations in which minimal prediction requires multiple features...


- Semantics: explanation as justification vs. 	mechanism rather than statistical probability
- How is this different from feature weights in a regression

---
## Nov 17 | [[Christopher Maddison]]
**[[feature engineering]]**
- representation designed by researchers
- predictions via ML methods justified by elegant mathematics
- ==example==
	- [[histogram of oriented gradients]] (HOG)
		- removes nuisance information
		- extracts local smoothness
		- helps detect edges
- multi-use
- limited expressivity
- does not scale

**[[deep learning]]**
- representations learned using [[machine learning]]
- [[neural network]]
- very effective with lots of data

**[[representation learning]]**
- train on a pre-text task (train without label you are eventually interested in predicting)
- CLIP model attempted to maximize the similarity between an image an its text
- multi-use
- expressive
- scalable

![[Pasted image 20211117124144.png]]

> GPT to clip (text and images)


## Nov 24 | [[Marsha Chechik]]
**On Safety, Assurance, and Reliability: A Software Engineering Perspective**

- error acceptance with humans...don't have that same acceptance with "computers"
- [[goal structuring notation]]
- ![[Pasted image 20211124121314.png]]

## Dec 1 | [[Sheila McIlraith]]
**Can being considerate lead to safer AI**

[[reinforcement learning]]
![[Pasted image 20211201121235.png]]
- many states have no reward...makes it hard to navigate...

==Indifference== could give license to the agent to take undesired actions to reach desired end...

==Negative side effects==: Impede the future well-being or agency of others

DO NOT diminish well being and agency of people/humans....

---

**THOUGHTS**
Safety first
- love
- integrity
- safety

Side effects are just "**costs**"

==Learning + Norms + Laws==
Just other people's facial expressions could help agents recognize when they had negatively affected the well-being or agency of others

# Resources
-   [Presentation Recordings Google Drive](https://drive.google.com/drive/folders/1jn7a5MX3EnQyTYWEl7J3O5PikrgHJthw?usp=sharing)




---

Look at the correlations of all of the traits that inform the gap directly with the outcomes

look at ib with the outcomes

Add the gap to all the traits
F test between the two models (one with all traits)

lm to see how much of IB is explained by these traits

---

which subset provides best fit to predict the outcome measures...

---
Reduce/group items....



==**Azadeh**==
Survey of people to see who actually tweets regrets on twitter to get at individual differences
- who are they?
- can we find "similar" people and then see if the tweeting moves their subjective well-being?


**Why pick these as dimensions of interest?**
Action/inaction
Short/long term

Differ from literature prediction - how was the literature sampling?
