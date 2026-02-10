---
title: Alves_M_F_Causal Inference for the Brave and True
aliases: []
summary: 
created: 2022-05-30 16:01
modified: 2022-05-30 16:01
tags: []
---

# Info
**Title**: 
**Journal**: 
**Year**: #y2021
**Authors**: [[Matheus Facure Alves]]
**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:

[[causality]]
[[causal inference]]


# Notes
## 01 | Intro
-> [[machine learning]] bad at ML is notoriously bad at inverse causality ("what if?" questions...i.e. [[counterfactual|counterfactuals]]).

#### When association is causation^[Why is he not using the much more common turn of phrase "correlation is not causation". Like saying "too many cooks spoil the liquid  food base"].

The **fundamental problem of causal inference** is that we can never observe the same unit with and without treatment.

We use [[potential outcomes]] to try and make up for this fact
- $Y_{0i}$ = potential outcome for unit $i$ without treatment
- $Y_{1i}$ = potential outcome for unit $i$ with treatment

>[!WARNING]
>Here, we will use the subscript notation **most** of the time.

Individual treatment effect = $Y_{1i} - Y_{0i}$
- however we cannot calculate this due to the [[fundamental problem of causal inference]]

Instead we focus on:
[[average treatment effect]]
$ATE = E[Y_{1} - Y_{0}]$

[[average treatment effect on the treated]]
$ATT = E[Y_{1} - Y_{0}|T = 1]$

#### Bias
>[!Quote]
>Bias is what makes association different from causation.^[Really? It is all bias? How does this explain the umbrella/rain association relationship but not causation relationship?]
- $Y_0$ of the **treated** ==different== than $Y_0$ of the **untreated**....
- Bias refers to how the treatment and control groups differ BEFORE THE TREATMENT...
- If they (units/groups) are the same pre-treatment then $E[Y_0|T=0] = E[Y_0|T=1]$

## 02 | Randomised Experiments
They state:
>[!Quote]
>Association becomes^[I don't think that they should use the verb become...is equivalent to, perhaps?] causation if there is no bias

==What is a clearer way to state this?==
If treatment and control samples are **effectively the same**, the effects of treatment on one sample can be treated the same as if they had been given to the control sample. This solves the [[fundamental problem of causal inference]]...

By "effectively the same" it means that you have controlled for any **baseline differences** between groups...so there is no [[bias]]...

One way to remove [[bias]] is [[randomized controlled experiment|randomization]].

$(Y_0,Y_1) \perp\!\!\!\perp T$ 

? we want the **potential** outcomes to be independent of the treatment
Wouldn't a better way to say this is that we want group membership to be independent of treatment?

**Assignment Mechanism**
If not random, then it is important to understand this mechanism as it may shed light on differences between groups...

>[!Important]
>In causal questions, we usually can argue in both ways: that X causes Y, or that it is a third variable Z that causes both X and Y, and hence the X and Y correlation is just spurious.

## 03 | Stats Review: The Most Dangerous Equation
$$SE = \frac{\sigma}{\sqrt{n}}$$
$SE$ = [[standard error]] of the [[mean]]
$\sigma$ = [[standard deviation]]
$n$ = [[sample size]]

==QUESTION==
Confused by interpreting the [[confidence interval]]...
Says:
>I **shouldn’t** say that this particular 95% confidence interval contains the true population mean with 95% chance

But then also:
>95% refers to the frequency that such confidence intervals, computed in many studies, contain the true mean

Isn't it saying that there is a 95% probability that wherever you end up in the "blue space" your 95% CI includes the yellow line/true mean?
![[Pasted image 20220622153750.png]]
> Moreover, if we switch to Bayesian statistics and use probable intervals instead of confidence intervals, we would be able to say that the interval contains the distribution mean 95% of the time.

==QUESTION==
How to interpret adding/subtracting distributions?

==QUESTION==
Is this wrong - gives SE formula after not STD
> The mean of this final distribution will be the difference in the means, and the standard deviation of this distribution will be the square root of the sum of the standard deviations.

>[!Note]
>Even though the individual confidence intervals overlap, the difference can still be statistically different from zero.


## 04
**Dependence flows in a graph**^[taken from a [Stanford presentation](http://ai.stanford.edu/~paskin/gm-short-course/lec2.pdf) by Mark Paskin. ]
The arrows with lines at their tips signify independence, and the arrows without lines at their tips signify dependence.
![[Pasted image 20220622160017.png]]

The unknown [[common cause principle]] rears its head again... 😁

##### Confounding
Causes [[bias]]
Happens when [[treatment]] and [[outcome]] share a **common cause**...

**Example**
What is the effect of education on income is confounded by the common cause of intelligence...
![[Pasted image 20220629155151.png]]
>[!Important]
>In order to fix confounding we need to control for all common causes of the **treatment** and **outcome**^[this is obviously very hard/impossible to know for certain...]

>[!Warning]
>Also even if we KNOW a common cause we can't control for it if we can't measure it.^[For example if we can't measure intelligence and it directly affects both the treatment, education, and the outcome, wage, then we are going to have confounding...we can try and control for that with [[surrogate confounders]] like SAT scores and IQ scores but these do not completely eliminate bias...]

##### Selection Bias
> More often than not, selection bias arises when we control for more variables than we should.

Conditioning on a [[collider]] can open a [[backdoor path]].


**Example**
>Imagine that with the help of some miracle you are finally able to randomize education in order to measure its effect on wage. But just to be sure you won’t have confounding, you control for a lot of variables. Among them, you control for investments. But ==investment is not a common cause of education and wage==. Instead, it is a **consequence** of both. More educated people both earn more and invest more. Also, those who earn more invest more. Since investment is a collider, by conditioning on it, you are opening a second path between the treatment and the outcome, which will make it harder to measure the direct effect. One way to think about this is that by controlling investments, you are looking at small groups of the population where investment is the same and then finding the effect of education on those groups. But by doing so, you are also indirectly and inadvertently not allowing wages to change much. As a result, you won’t be able to see how education changes wage, because you are not allowing wages to change as it should.^[Is this such a problem? Seems like at least in this example there will still be a fair bit of variation within levels...]
![[Pasted image 20220629161227.png]]

POORLY STATED
>This means that the wage people would have in the case they didn’t receive education is the same if they do or don’t receive the education treatment.^[Think it makes more sense to think that the wage they would have if they didn't receive education is independent of the treatment group...]

Isn't the problem conditioning on the wrong variables, not conditioning on all variables? Seems a causal graph could help you here but basically also seems fairly obvious that you don't want to include consequences of your outcome as predictors of your outcome...duh.

## 05 Linear Regression
Remember, the [[potential outcomes]] are:
- $Y_0$
- $Y_1$

>[!Remember]
>The act of setting the treatment $T$ to 0 or 1 **materializes** one of the [[potential outcomes]]!

But this in turn means that the alternate potential outcomes is now unknowable, and therefore so is the individual treatment effect:
$$\tau = Y_{1i}-Y_{0i}$$

>[!Important]
>The coefficient of a multivariate [[regression]] is the bivariate coefficient of the same regressor **after accounting for the effect of other variables in the model**

?What does it mean to say:
- $\kappa$ is the bivariate coefficient of $T$ 

>[!Note]
>If we can predict the treatment group $T$ using other variables then it is **not random**. Therefore we treat it as if it is *as good as* random once we control for those va

## Thoughts


# Resources
