[[machine learning]]
[[reinforcement learning]]
[[episodic rewards]]
[[reward discounting]]
[[optimal policy]]
[[temporal difference learning]]
[[deep learning]]
[[neural network]]
[[Q-learning]]

# Notes
Combines [[value-based rl methods]] with [[policy-based rl methods]] in a single algorithm.

- Two deep neural networks
	- **Actor**: controls how agent behaves ([[policy-based rl methods]])
	- **Critic**: measures how good the action taken is ([[value-based rl methods]]) 

- updates at each time step [[temporal difference learning]]
	- reduces variance in learning

- In reality often have more than two [[neural network]]s.

# Resources