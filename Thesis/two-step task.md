[[Nathanial Daw]]
[[reinforcement learning]]
[[model-based reinforcement learning]]
[[model-free reinforcement learning]]
[[habitual behavior]]
[[goal directed behavior]]
[[decision making]]
[[dual-process model]]
[[system 1]]
[[system 2]]

# Notes
To maximize reward, participants must constantly learn which alien is best in each planet, and which planet is best overall. The transition probabilities from first to second step are fixed (and sometimes pre-trained), for example each first level option leads to one planet 70% of the time (the common transition) and the other planet 30% of the time (the rare transition).

If a reward is obtained in the second step [[model-free reinforcement learning]] would suggest repeating the same actions no matter whether you had a rare transition or common transition. [[model-based reinforcement learning]] on the other hand would take knowledge about the initial transition probabilities to maximize chances of ending up on the same planet where you just got the reward. So, if on the previous step you had gotten to that planet by the rare transition you should choose the opposite planet this time, as you will be more likely to return.

![[two-step task.png]]

# Resources
**Papers**
- [[Drummond_N_2020_Model-based decision making and model-free learning]]