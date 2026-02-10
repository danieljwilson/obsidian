---
title: Predicting states of elevated negative affect in adolescents from smartphone sensors - a novel personalized machine learning approach
aliases: []
summary: 
created: 2022-08-09 15:57
modified: 2022-08-09 15:57
tags: []
---

# Info
**Title**: Predicting states of elevated negative affect in adolescents from smartphone sensors - a novel personalized machine learning approach
**Journal**: #psychological-medicine
**Year**: #y2022
**Authors**: [[Boyu Ren]],...,[[Chritian A. Webb]]
**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:

[[ecological momentary assessment]]
[[passive data collection]]
[[ensemble model]]
[[just in time intervention]]


# Notes
## Summary

##### Methods
>Adolescent participants (n = 22; ages 13–18) with low to high levels of depressive symptoms were followed for 15 weeks using a combination of ecological momentary assessments (EMAs) and continuously collected passive smartphone sensor data. EMAs probed negative emotional states (i.e. anger, sadness and anxiety) 2–3 times per day every other week throughout the study (total: 1145 EMA measurements). Smartphone accelerometer, location and device state data were collected to derive 14 discrete estimates of behavior, including activity level, percentage of time spent at home, sleep onset and duration, and phone usage.

**EMA Variables**
At each EMA survey, participants were asked to rate how much they were experiencing a given emotion immediately prior to receiving the EMA survey notification. Items were rated on a 5-point Likert scale from 1 (Very slightly/not at all) to 5 (Extremely). The present study was focused on the prediction of negative affect items: ‘Sad’, ‘Nervous’, and ‘Angry’.

**Passive Data Variables**
1. **Phone Accelerometer Score**: Hourly activity score of the phone accelerometer data, calculated from the standard deviation of the triaxial accelerometer data, root mean squared and scored as 1 when less than 70% (percentile), 2 when between 70% and 90%, and 3 when greater than 90% (Rahimi-Eichi et al., 2021). The scores are recorded for every minute and then averaged to calculate the hourly values
2. **Phone Use (MinsHr)**: The number of minutes the phone is used (unlocked) during each hour
3. **Phone Use (MinsDay)**: Number of minutes that the phone has been used (unlocked) during the day
4. **Phone Use (Hr)**: Number of hours during the day that the phone has been used (unlocked) at least for a minute during that hour
5. **Sleep Onset Time**: Beginning of a sleep episode (hh:mm) (see online Supplement for details on the calculation of sleep episodes)
6. **Wake Time**: End of sleep episode (hh:mm)
7. **Sleep Duration**: Difference between Sleep Onset Time and Wake Time per day (min)
8. **Daily Percent Home**: Percentage of time the participant spends at home which could be the Home (the most visited POI of the study) if visited on that day or otherwise, the most visited POI of the day (therefore, when the individual is traveling for several days the home location is adjusted). POIs: Maximum 50 points of interest that were detected by spatial clustering of the temporally filtered GPS coordinates visited by the participant during the entire study
9. **Distance from Home**: The farthest distance from Home visited by the participant during the day (km)
10. **Daily Mobility Area**: The radius of a circle that encompasses all visited locations during the day (km);
11. **Places Visited Daily**: Number of POIs other than Home that the participant has visited during the day
12. **Places Visited Hourly**: The number of places that the participant has visited during each hour
13. **GPS Available**: Number of hours the GPS signal is available (not missing) in 24 h
14. **Time of Day** [Morning (5am-11:59am), Afternoon (noon-5:59pm) or Evening/Night 6pm-4:59am].

##### Analysis
>the likely idiosyncratic behavioral patterns associated with states of HNA highlight the need for a person-specific (idiographic) modeling approach. At the same time, certain predictive relationships may be shared across individuals or subgroups of adolescents. Accordingly, we used a novel statistical approach (Ren, Patil, Dominici, Parmigiani, & Trippa, 2021) which integrates person-specific models (i.e. developing a unique model for each individual) with a data-driven search for the optimal weighting across all subject-specific models (i.e. ‘borrowing’ information from prediction models for other individuals in the sample).

Feels a bit like multi-level modeling...

**GOAL** Predict high negative affect (HNA) states
- HNA calculated as deviations from person specific averages^[hidden markov model to find latent states might be another alternative to this]
- "if the observed score of a participant at time t exceeds their overall average by at least 1/2 point, we define this as an HNA state of that emotion"^[feels a bit arbitrary?]
- Point out that a higher threshold provides greater confidence that you are in a HNA but less data to train on...

**Personalized Ensemble Model**
>for the PEM approach, we conducted 10-fold cross-validation to estimate the combination weights $\hat{w}^i$ and considered three different learning algorithms: support vector machine (SVM), GLM with elastic net penalty (ENet) and random forest (RF). We used them individually (L = 1) in three separate ensemble (PEM) models and in combination (L = 3) (i.e. a total of 4 separate ensemble models were tested)^[I mean the versions where the algorithms were used separately don't really seem like ensemble models...unless they are just referring to the fact that they kind of used the population average as a prior?]

![[Pasted image 20220809214124.png]]

**Evaluating Performance**
- 10 fold cross validation
- [[area under receiver operating characteristic curve]] as metric of accuracy

**Imputation**
We imputed missing observations of predictors using multiple imputation by chained equations (MICE package in R) (van Buuren & Groothuis-Oudshoorn, 2011) on the merged dataset across subjects. We excluded outcome variables (i.e. anger, sad- ness, and nervousness) from the imputations to avoid overfitting of the final prediction models.

## Thoughts
A lot of overlap with my work - need to understand how they did their ML analysis...

# Resources
- Supplementary Materials ![[S0033291722002161sup001.docx]]
