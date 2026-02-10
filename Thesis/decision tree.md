---
title: decision tree
aliases: []
summary: 
created: 2021-08-08 10:33
modified: 2021-08-08 10:33
tags: []
---

[[machine learning]]
[[gini impurity]]
[[algorithms]]
[[K-means clustering]]
[[logistic regression]]
[[linear regression]]
[[neural network]]
[[gradient descent]]
[[random forest]]
[[generalized random forest]]

# Notes


Consists of **three components**
1. Root
2. Node
3. Leaf

==Two critical decision to make:==
**Decision 1**
How to choose what feature to split on at each [[decision node]].
**Decision 2**
When do you stop splitting?
- when a node is 100% one class
- when splitting a node will result in a tree exceeding a maximum depth
- when improvements in purity score are below a threshold
- when number of examples in a node is below a certain threshold
---

- leaf purity/impurity refers to the error rate
	- can be calculated with weighted average [[gini impurity]]
	- choose feature that has the best separation (low [[gini impurity]])
- if a separation does not decrease the impurity stop the separation process (to avoid [[overfitting]])
	- also can set a threshold
	- can also require minimum number of samples in a leaf node
- for continuous values bin into groups

From [[Andrew Ng]]
#### Decision Trees: From Root to Leaves

What kind of beast was Aristotle? The philosopher's follower Porphyry, who lived in Syria during the third century, came up with a logical way to answer the question. He organized Aristotle’s proposed “categories of being” from general to specific and assigned Aristotle himself to each category in turn: Aristotle’s substance occupied space rather than being conceptual or spiritual; his body was animate not inanimate; his mind was rational not irrational. Thus his classification was human. Medieval teachers of logic drew the sequence as a vertical flowchart: An early decision tree.

The digital difference: Fast forward to 1963, when University of Michigan sociologist John Sonquist and economist James Morgan, dividing survey respondents into groups, first [implemented](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmc5nCVhV3Zsc37CgNNXW4pT1Q_3s0lBnVYj0bP7CQ1dFW4_tZSR45FGMrVpsjcn9lvbhLW6jGT3P8lRx5bW4SGJCY2ylp9kW24zcl-4z2WQ5W5rQZX99cF7QLW4JdS186gnK0XW7cDRlL5ssX9QV8-0758JydnHW7wbWCS2ctrXvN5h6pDY_G-TVW5XY3hg28LjwqMjDQwQZlhmTW2J8Rhy2Jz6JHW5wgR1W6mGYkcVgKvwk6cm8VxW7RXmQH1DvDLLW1ygzFl2YH3rmW4FL30s3sDJTRW52ctf26S97LfW2yRv_x5L7dfsW2G_lVT7yzNGFW2PRznZ3z1rrsW9cmzSX3GqtpSW665zQ05zGTwGW5Bpg9c4jLGgpW6vn5lX2XDs2rW3wvfYP8TfMmTW2Kthps4kD-shW7-MLv52ljzBmW44G7m682Zz8hW95xG5g81SF-_W7ZzstZ2n8LksN2WwjZXjDVBw32nl1) [](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmc5nCVhV3Zsc37CgGGrW8BCPgg7l7J8cW6SHRmW7G1_5xW6Xg_P37xFSlwW2CPBDG91-vnrW8MP2DG1Vlw2zW6mdLGM3FpLycW7KNJJ-297wcFW83LX4T4GrcY0N1xh9p0znDtmW3bfgt07-l2sfN3l_cW3FtkdHW4BhnrJ39c_H8W5K73MJ4yFX6XMPj9tgDmPSrW2-MbZk1mPKMGW8X7Y175qyScTN2qN2KcYnflmW5D6ZtR3JrJLNW5T3xpJ4FzphfW6BDKnL5NQdldW5xN75V4gHy9TW4DZr3W20pFMDW88MhQj97cMK-W7z59cK4zKSD1W5snyK329C2q9W1fQNbh3q5_WQW2rkQwd8D_nNYW5hLrhV20B3M0W8v9n6d3BQdQ_W49wJY88cRFlSW5XVM7C5tNv6cW2rWj0x3yBGzSW7840sP300HYrW4RxDY57x8_GsN5mfqGpRcl_YW2pMSLf11g3rY2JX1)decision trees in a computer. Such work became commonplace with the advent of software that automates training the algorithm, now implemented in a variety of machine learning libraries including scikit-learn. The code took a quartet of statisticians at Stanford and UC Berkeley 10 years to develop. Today, coding a decision tree from scratch is a homework assignment in Machine Learning 101.

Roots in the sky: A decision tree can perform classification or regression. It grows downward, from root to canopy, in a hierarchy of decisions that sort input examples into two (or more) groups. Consider the task of Johann Blumenbach, the German physician and anthropologist who first distinguished monkeys from apes (setting aside humans) circa 1776, before which they had been categorized together. The classification depends on various criteria such as presence or absence of a tail, narrow or broad chest, upright versus crouched posture, and lesser or greater intelligence. A decision tree trained to label such animals would consider each criterion one by one, ultimately separating the two groups.

-   The tree starts with a root node that can be viewed as containing all examples in a dataset of creatures — chimpanzees, gorillas, and orangutans as well as capuchins, baboons, and marmosets. The root presents a choice between examples that exhibit a particular feature or not, leading to two child nodes that contain examples with and without that feature. Each child poses yet another choice (with or without a different feature) leading to two more children, and so on. The process ends with any number of leaf nodes, each of which contains examples that belong — mostly or wholly — to one class.
-   To grow, the tree must find the root decision. To choose, it considers all features and their values — posterior appendage, barrel chest, and so on — and chooses the one that maximizes the purity of the split, optimal purity being defined as 100 percent of examples of one class going to a particular child node and none going to the other node. Splits are rarely 100 percent pure after just one decision and may never get there, so the process continues, producing level after level of child nodes, until purity won’t rise much by considering further features. At this point, the tree is fully trained.
-   At inference, a fresh example traverses the tree from top to bottom evaluating a different decision at each level. It takes the label of the data contained by the leaf node it lands in.

Top 10 hit: Given Blumenbach’s conclusion (later overturned by Charles Darwin) that humans are distinguished from apes by a broad pelvis, hands, and close-set teeth, what if we wanted to extend the decision tree to classify not just apes and monkeys but humans as well? Australian computer scientist John Ross Quinlan made this possible in 1986 with [ID3](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgBKpW7kM8zz58fTF2VL64LS7L18D9W20_GTs81n2ZtW88d00P6c81JzW4B9Ssf4wMGd1W5hD9j24YVkb5W1f9M7C2RrNsVW2pt9SL42R6CRW1hdVR723HmhQW2qQxpl1qV6l8W9cWd_l31MRB6W7w3M8M7bPvDrW8BP6cd7Ft4rPW1jHZbt4Fhr0KW6zVVcv1-4tnFW59gYz63L92hwW5mdY4D2Dp8RlN8M2jMZ2Qf_sW59Mwwb12p6FxW45fQcr1Q6S39W3k09SG2kMXzPW1Vh8JQ476QTWW2RR0Sw4mqrcMW84pJPX5g3Yxq33V-1), which extended decision trees to support nonbinary outcomes. In 2008, a further refinement called [C4.5](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgSZGW7Mx97D5spMvmW347rSt3RN3zMW5B-DfF8PzFSHW81-Wcg4QBvvnVcKH-n62dLyDW1F9FFM3VtKvlW9dGSQm7T_dZnW5vp51H4sNnP9W3gthzM2w8sPgW3-y2KP6T5WHbW602plx97cvMFW1wv5tT593f6zW8ktcyP5mvJDmW8RNtZ58dL6LvW2HyPcV990gDTW6p3Qlj1vPygpW7cBLt996D7flW4s0ZRw6cFwDgW8QdT2t6BQNKXN7YCPrFXvKRpW5zv_Vv43SpJKV4lcg799f_vLW6xZmp96cJdkKW50f3vM6M-0j43jXX1) capped a list of Top 10 Algorithms in Data Mining curated by the IEEE International Conference on Data Mining. In a world of rampant innovation, that’s staying power.

Raking leaves: Decision trees do have some drawbacks. They can easily overfit the data by growing so many levels that leaf nodes include as few as one example. Worse, they’re prone to the butterfly effect: Change one example, and the tree that grows could look dramatically different. 

Into the woods: Turning this trait into an advantage, American statistician Leo Breiman and New Zealander statistician Adele Cutler in 2001 developed the [random forest](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgTv6W6lZ7JB8wDbtVW4bQsvB5m21GjW9fmhrH4ds5qTVlnnZ15RrWzwW5PbGyk5-CqZqW4p6_qF5390ZXVfVwJQ42f43qW9gMsHc63Y598W67GSqH7Fh6_NMnRTJmN3sqXW4BS66Y8TYp6lW3M6tM94Q-MV9W1NCqzy6YqLCDN82rth0fsV2NW8J1fYC8rZxctVDhcfy372LVlN1dcXRbSMDRdV-h57c6bMZX_W69hY6P1S4J9SW1VKhGT29C8HzW7qzSq02Z-HnFN1BtnK9-5QtnW31jSYv6nL9rvW2HWnGX7gjDQs39Rz1), an ensemble of decision trees, each of which processes a different, overlapping selection of examples that vote on a final decision. Random forest and its cousin XGBoost are less prone to overfitting, which helps make them among the most popular machine learning algorithms. It’s like having Aristotle, Porphyry, Blumenbach, Darwin, Jane Goodall, Dian Fossey, and 1,000 other zoologists in the room together, all making sure your classifications are the best they can be.

# Resources