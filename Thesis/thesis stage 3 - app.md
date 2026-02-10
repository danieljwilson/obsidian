---
title: thesis stage 3
aliases: [thesis experience sampling, thesis app]
summary: 
created: 2021-03-13 15:55
modified: 2021-03-13 15:55
tags: [app]
---

[[experience sampling]]
[[thesis]]
[[thesis experiments]]
[[thesis stage 1 thesis measure]]

# Notes
### Pull data
`cd /Users/djw/Documents/pCloud_synced/Academics/Projects/2020_thesis/thesis_experiments/3_experiments/3_3_experience_sampling/3_3_3_data_analysis/download`

`sh download_rkstudio_data.sh`

### Items
#### Questionnaires
- Daily check in ^[To do...make google doc]
- [Daily report of activities](notion://www.notion.so/danieljwilson/Daily-Activities-b6524aca09344140834c707fb459ed48)
- Time Use Survey
	- USA [Time Use Survey | 2019 with examples](https://www.bls.gov/tus/lexiconwex2019.pdf)
	- USA [2019 w/o examples](https://www.bls.gov/tus/lexiconnoex2019.pdf)
	- Canada: [General Social Survey on Time Use](https://www150.statcan.gc.ca/n1/en/pub/12f0080x/12f0080x2006001-eng.pdf?st=YIN8EmJh)

#### Tasks
- Apple HealthKit
	- PSAT
	- Trailmaking
	- Tower of Hanoi
	- Working memory task
	- Reaction time
	- Stroop^[ Several studies have shown that participants with low levels of executive function (assessed by Go/No-Go or Stroop task performance) are less successful at translating their intentions into action (Allan, Johnston, & Campbell, 2011; Hall et al., 2008; Wong & Mullan, 2009).]
	- **ADD**^[From Cendri: I still think we need to be assessing motivational tasks more than we are...Emotion/mood questions are good, but I'd like us to ACTUALLY see about implementing an effort avoidance task - Or an emotional sensitivity task - Or a reward-motivation task - Or a risk sensitivity task]
		- Stop Signal Task ^[See references in resources]
		- Some sort of motivation measure

#### Courses
- [Sequences, Time Series and Prediction](https://www.coursera.org/learn/tensorflow-sequences-time-series-and-prediction) ==14 hours==  `Python` `Tensorflow`
	- part of this [coursera series](https://www.coursera.org/professional-certificates/tensorflow-in-practice#courses) ==87 hours total==
- [Intro to time series analysis in R](https://www.coursera.org/projects/intro-time-series-analysis-in-r) ==2 hour project== **$12** `R`
- [Practical Time Series Analysis](https://www.coursera.org/learn/practical-time-series-analysis#syllabus) ==26 hours==  `R`
- [Specialized Models: Time Series and Survival Analysis](https://www.coursera.org/learn/time-series-survival-analysis?action=enroll) ==11 hours==   `Python`
- [Neuromatch Deep Learning](https://deeplearning.neuromatch.io/index.html) `Python` `PyTorch`

### Analyses to Do
- Expectation that gap and satisfaction more highly correlated than productivity and satisfaction - maybe heterogeneous - identify thé strivers

# Updates
### Sept 13, 2021 | v0.3

**MONTHLY-GOALS**
- **Added questions**

> Thinking back over the past month how would you say your **intention-behavior** gap compares to your usual or average intention-behavior gap?

> Have you found that using this app has either **reduced** or **increased** your intention behavior gap?
> If you feel that it has had no effect on your gap select the middle value (3).
 
**MONTHLY-IDEAL**
- Changed sliders to text entry for any slider that could be more than 10
- Changed `Work` to `Occupation` to make it more inclusive/clear for students/homemakers and added `Non-Occupation Work`
- Changed the `Exercise` question to be how many times per week rather than the amount of time (since some days may be zero and make the calculation a bit confused)
- Changed the `Drinks` to also be for all weekdays

**DAILY GENERAL**
- Added question about current situation (alone/other person)
- Added questions about cause of previous miss
- Change **PAST 24 hours** to **PAST DAY**
	- Idea is that if it is 8pm you might thing you have to remember things from 10pm the night before...
- Changed scales to 0% - 100% from 1-7 (strongly disagree->strongly agree)
- Changed phrasing to make it more clear that we are interested in changes you have control over.

>If I could redo the past 24 hours I would like to **change**:

>If I could redo the past 24 hours I would like to **change** my behavior.

- Changed phrasing to align better with the 0-100% scale:

> Over the past 24 hours my level of **procrastination** was:

> Over the past 24 hours I completely avoided **procrastination**:

- Removed Domain questions as they are gotten at in the detailed questions and to make things a bit shorter.

**DAILY DETAIL**
- Changed past 24 hours and next 24 to past day and next day...

**AFFECT**
==Take Out==
- loved, engaged, upset, admired

==Add==
- ashamed, depressed, embarrassed, appreciated




### April 17, 2022
Changed to morning/evening where:
**Morning**
Affect + Tasks
**Evening**
Affect + pro/retrospective reports + goals
# Resources
**Stop Signal Task**
- Verbruggen, F., Aron, A. R., Band, G. P., Beste, C., Bissett, P. G., Brockett, A. T., Brown, J. W., Chamberlain, S. R., Chambers, C. D., Colonius, H., Colzato, L. S., Corneil, B. D., Coxon, J. P., Dupuis, A., Eagle, D. M., Garavan, H., Greenhouse, I., Heathcote, A., Huster, R. J., Jahfari, S., … Boehler, C. N. (2019). A consensus guide to capturing the ability to inhibit actions and impulsive behaviors in the stop-signal task. eLife, 8, e46323. [https://doi.org/10.7554/eLife.46323](https://doi.org/10.7554/eLife.46323)
- Bissett, P. G., Hagen, M. P., Jones, H. M., & Poldrack, R. A. (2021). Design issues and solutions for stop-signal data from the Adolescent Brain Cognitive Development [ABCD] study. Elife, 10, e60185.

![[Pasted image 20220425091759.png]]