# Matthew Botvinick - Meta-learning in brains and machines
Type #video #labmeeting #talk
Link <https://www.youtube.com/watch?v=otjR6iGp4yU>
## Topics 
[[meta-learning]]
[[reinforcement learning]]
[[Matthew Botvinick]]

## Notes
### Summary
* Question: How do we get deep RL systems to **DO** "Learning to learn" (meta-learning)
* Answer:
	* Use recurrent neural networks (need memory)
	* Train systems on multiple (as opposed to single) tasks

* The main goal seems to be to have generalizability 

* Focuses on bandits, with probabilistic payouts...subject needs to figure out which one makes sense to "pull". 
	* Probabilities can change during the task.


### Thoughts
* Overall I thought this was pretty uninspired. Seems like the system isn't actually learning anything new. It has just been trained and can **recognize** probabilities (i.e. can find the higher of two probabilities in a bandit task)

* Are we just learning a "learning rate" and then performing, essentially, normal reinforcement learning?

* How do we define terms like:
	* Abstraction
	* Learning vs. recognition
	* Training vs. learning


## Resources

Refers to the paper
[Learning to learn using gradient descent](https://link.springer.com/chapter/10.1007/3-540-44668-0_13)

Related podcast 
[Matt Botvinick: Neuroscience, Psychology, and AI at DeepMind | AI Podcast #106 with Lex Fridman](https://www.youtube.com/watch?v=3t06ajvBtl0)