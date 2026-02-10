---
title: Lieder_F_2019_Cognitive prostheses for goal achievement
aliases: []
summary: 
created: 2023-05-09 09:52
modified: 2023-05-09 09:52
tags: [thesis-readingList]
---

# Info
**Title**: Cognitive prostheses for goal achievement
**Journal**: #Nature-Human-Behavior 
**Year**: #y2019 
**Authors**: [[Falk Lieder]], [[Owen X. Chen]], [[Paul M. Krueger]] & [[Thomas L. Griffiths]] 
**Link**: [paperpile](chrome-extension://bomfdkbfpdhijjbeoicnfhjbdhncfhig/view.html?mp=HLPHudLn)
**Tags**: #paper
**Rating**: #2star

[[thesis]]
[[thesis-intervention]]
[[cognitive prostheses]]
[[bounded rationality]]
[[rewards]]
[[pseudo-rewards]]
[[Markov decision process]]
[[incentives]]
[[gamification]]
[[decision support]]
[[decision environment]]
[[heuristics]]
[[procrastination]]
[[artificial intelligence]]
[[reward shaping]]


# Notes
## Summary
### Chat GPT
>The authors argue that cognitive prostheses have the potential to aid individuals with cognitive impairments or limitations, as well as individuals seeking to optimize their cognitive performance.
>
>The paper outlines various types of cognitive prostheses, including memory aids, decision-making aids, and attentional aids, and describes their potential benefits for individuals with specific cognitive needs. For example, memory aids such as smartphone reminders or voice assistants can help individuals with memory impairments, while decision-making aids such as algorithms or predictive models can assist individuals with complex decision-making tasks.
>
>The authors also discuss the challenges associated with developing and implementing cognitive prostheses, such as ensuring accessibility and privacy, and the need for further research to optimize the effectiveness of these tools.
>
>Overall, the paper highlights the potential of cognitive prostheses to enhance cognitive abilities and promote goal achievement, while also emphasizing the importance of considering ethical and practical considerations in their development and implementation.

### Human
>[!Abstract]
>Procrastination takes a considerable toll on people’s lives, the economy and society at large. Procrastination is often a consequence of people’s propensity to prioritize their immediate experiences over the long-term consequences of their actions. This suggests that aligning immediate rewards with long-term values could be a promising way to help people make more futureminded decisions and overcome procrastination. Here we develop an approach to decision support that leverages artificial intelligence and game elements to restructure challenging sequential decision problems in such a way that it becomes easier for people to take the right course of action. A series of four increasingly realistic experiments suggests that this approach can enable people to make better decisions faster, procrastinate less, complete their work on time and waste less time on unimportant tasks. These findings suggest that our method is a promising step towards developing cognitive prostheses that help people achieve their goals.

#### Key points
- [[bounded rationality|Bounded cognitive]] resources
	- Constrains decision making
	- Leads to adoption of [[heuristics]]
		- [[heuristics|Heuristics]] can fail, depending on context (perform well in environments for which they were [[evolutionary psychology|evolved]])
- [[cognitive prostheses|Cognitive prostheses]] could remap the heuristics to perform optimally in current context.
- misaligned [[incentives]] a huge problem
- have to re-engineer the reward structure of the environment
- optimal [[gamification]] method modeled as a [[Markov decision process]]:
$$M = (S,A,T,\gamma,r,P_0)$$
- essentially the optimization involves offsetting discounting (a result of $\gamma$ parameter and number of steps) with "[[pseudo-rewards]]" 
- **getting started is key**: primary benefit of optimal [[gamification]] was to increase the likelihood of the participant completing the first task...then the differences washed out between both groups (once first task was done 95% of participants completed all tasks)
- multiple experiments
	- 1 & 2: act more far-sightedly
	- 3: get started on daunting tasks
	- 4: waste less time on unimportant tasks


## Thoughts
I liked the setup but found the experiment and theory unconvincing.

- A key point is that:
> Computing the optimal pseudo-rewards requires perfect knowledge of the decision environment and the decision maker’s preferences. This information may be unavailable in practice.

- Suggest approximating $V^*_M$ - but feels a bit glib...
- How does one think about [[pseudo-rewards]]?
	- A reward that feels good but doesn't lead to long term benefit? This doesn't seem pseudo? 
- Are salaries and promotions and awards, etc. really a form of [[gamification]] to keep capitalist society afloat? All proxies for status?
- They find that [[reward shaping]] is more effective than [[heuristics]] at guiding choice but doesn't [[reward shaping]] require knowledge and computing power that we do not have? They suggest we can "approximate" the optimal discount evaluation - but how well can we do that in practice? Better than our heuristic methods?
- How can we think about [[pseudo-rewards]] in the real world? How would we use these to change choice outside of super simplistic [[gamification]] strategies like badges...
- Isn't the takeaway that if you give people hints that they will learn more quickly? It seems that the more important test is when there are two competing drives, and the non-temporally discounted desire (that is sub-optimal in the long run, e.g. eating a pint of ice cream) often is seen to have a higher value then the temporally discounted desire (health). Are stars and badges really going to change this sort of decision?
	- Perhaps a test would be to randomly assign people to strava?
	- What about fitbits? Problem with confounding and demand effects...
- Experiment 4 claims to focus people's attention on more important tasks. Does't feel like a very ecologically valid representation of procrastination.
- I do agree with their claim that:
	- "optimal [[gamification]] is more effective than uniformly incentivizing progress towards a goal"


# Resources
