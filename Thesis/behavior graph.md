[[cognitive ability]]
[[cognitive biases]]
[[thesis]]


# Notes
How do we divide the constituents of human behavior?

Knowledge
Computational power
Personality
Environment

Rename `Cognitive_Profile` to `Potential`?

```mermaid
classDiagram
%% 0
Behavior <-- Personality_Profile
Behavior <-- Cognitive_Profile

%% 1
Cognitive_Profile <-- Modeling_Ability
Cognitive_Profile <-- Biases
Cognitive_Profile <-- Environment

Emotional_State <-- Personality_Profile
Emotional_State <-- Environment

%% 2
Personality_Profile <-- Effort_Profile
Personality_Profile <-- Motivation

%% 1.1
Modeling_Ability <-- Cognitive_Ability
Modeling_Ability <-- Effort_Profile

%% 1.1.1
Cognitive_Ability <-- Crystallized_Intelligence
Cognitive_Ability <-- Fluid_Intelligence

%% 1.2
Biases <-- Heuristics

%% 2.1
Motivation <-- First_Order_Pref
Motivation <-- Second_Order_Pref
Personality_Profile <-- Emotional_Profile

Effort_Profile <-- Grit
Effort_Profile <-- Cognitive_Control

```

Biases correlates with decision algorithm selection ability
This ability 

- specify trait vs state
	- interactions between trait's and state susceptibiliy (e.g. fatigue)
- Decision environment enables decision possibilities

- Regulation
- Emotion/affect
- [[motivation|Motivation]]
- Decision environment

Modeling ability as algorithm selection? Or Cognitive Profile? Or Behavior?

>Heuristics are the "shortcuts" that humans use to reduce task complexity in judgment and choice, and biases are the resulting gaps between normative behavior and the heuristically determined behavior (Kahneman et al., 1982).

# Resources