---
title: gradient descent
aliases: []
summary: 
created: 2021-08-07 22:33
modified: 2021-08-07 22:33
tags: []
---

[[optimization]]
[[algorithms]]
[[objective function]]
[[error]]
[[machine learning]]
[[activation functions]]
[[feed-forward pass]]
[[K-means clustering]]
[[linear regression]]
[[logistic regression]]
[[neural network]]
[[decision tree]]
[[essential machine learning algorithms]]

# Notes
- most popular [[optimization]] algorithm in [[machine learning]]


From [[Andrew Ng]]
#### Gradient Descent: It’s All Downhill

Imagine hiking in the mountains past dusk and finding that you can’t see much beyond your feet. And your phone’s battery died so you can’t use a GPS app to find your way home. You might find the quickest path down via gradient descent. Just be careful not to walk off a cliff. 

Suns and rugs: Gradient descent is good for more than descending through precipitous terrain. In 1847, French mathematician Augustin-Louis Cauchy [invented](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgWctW7Yys3n8_bmJtW7bvN5Q1tDpMFW14klFf3KL-19W89XmTD3vSYDcW5hRGXm26kyjhW4xgq--7r1cdqV47Lmq71g6FWW2YDVgB5hQsN1N58qcM03kMlbW2LdV-M6S33VnW4m0xT_7NrSdjVmLKRZ2kKyMsW3lM_JG2P7CD4N8zbq0r4_79KW4_872g6CWXh2W7Qf6-g2SnYt0W2gtqP379RrPFW19bq9F6KWFPpW9cW-j13GXJnKW5w14fC7315G6W2XflNK3ypDWfVF8GTl6FTdXjW6XDbWX4ZZlfSN12qQ1BHBmx4364s1) the algorithm to approximate the orbits of stars. Sixty years later, his compatriot Jacques Hadamard independently [developed](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmw3q3npV1-WJV7CgQRbW33n0TT417bq0W55j-1_8KKR6rW3sZFPl7Sl9F0W4M1kNx1L4KcYW2wFj3W11-PbbW4MFr8R3-BSDfN3v5Qd1g9754W5kL8xs8vPf5wW8CbjBZ3W7VzDW24SCH_5Jh5wHW2cyXkQ6_MTdXW4NxVSq33Qh8sN1VKmThtPXkJW1bNpg2580c00W1ZZyvX7KnHMNW1L_pJx6dk8-FVts9p73jnpHYW6QSGnM7d5s2SW87FKBT7CTzgSW7QsvHF2-MX15W2PrT2q54Ggy9W2qm-mS8VvJBy3pTd1) it to describe deformations of thin, flexible objects like throw rugs that might make a downward hike easier on the knees. In machine learning, though, its most common use is to find the lowest point in the landscape of a learning algorithm’s loss function.

Downward climb: A trained neural network provides a function that, given an input, computes a desired output. One way to train the network is to minimize the loss, or error in its output, by iteratively computing the difference between the actual output and the desired output and then changing the network’s parameter values to narrow that difference. Gradient descent narrows the difference, minimizing the function that computes the loss. The network’s parameter values are tantamount to a position on the landscape, and the loss is the current altitude. As you descend, you improve the network’s ability to compute outputs close to the desired one. Visibility is limited because, in a typical supervised learning situation, the algorithm relies solely on the network’s parameter values and the gradient, or slope of the loss function — that is, your position on the hill and the slope immediately beneath your feet.

-   The basic method is to move in the direction where the terrain descends most steeply. The trick is to calibrate your stride. Too small, and it takes ages to make any progress. Too large, and you leap into the unknown, possibly heading uphill instead of downward.
-   Given the current position, the algorithm estimates the direction of steepest descent by computing the gradient of the loss function. The gradient points uphill, so the algorithm steps in the opposite direction by subtracting a fraction of the gradient. The fraction _α_, which is called the learning rate, determines the size of the step before measuring the gradient again.
-   Apply this iteratively, and hopefully you’ll arrive at a valley. Congratulations! 

Stuck in the valley: Too bad your phone is out of juice, because the algorithm may not have propelled you to the bottom of a convex mountain. You may be stuck in a nonconvex landscape of multiple valleys (local minima), peaks (local maxima), saddles (saddle points), and plateaus. In fact, tasks like image recognition, text generation, and speech recognition are nonconvex, and many variations on gradient descent have emerged to handle such situations.  For example, the algorithm may have [momentum](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmw3q3npV1-WJV7CgQ9zW2jZZdW6SX0y9W5590lj8BfTtHN2j3kV4kgLsXW6dRCVw6HHcJSW4Dj36D6fBrlmW7-KFlq9h3mtfW1c-WLP3Wpj75W7B4HS05qks_JW85D3pv6QGF7RW1JRjMZ5wBHyYW8m_4cb6bNW33N8RGmrgm3zlzVSxyK-2rQBzYW8xpmmk99Tg4hW7Zf8hJ2sVRd9W8HV7t59lh5lrW5HN23b659DCYVSJDf96wTV-RW93LcSV4G4Cd6N6MnHs3HZ0BqW8Xjlcy5BzMzVW6fKXrR4YVBk637NW1) that helps it zoom over small rises and dips, giving it a better chance at arriving at the bottom. Researchers have devised so many variants that it may seem as though there are as many optimizers as there are local minima. Luckily, local and global minima tend to be [roughly equivalent](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmw3q3npV1-WJV7CgQrTVdBcW-4LCNvqW12NPGl4c7GgjVsYqbm2GmQx3Vpfn8r8z8783W91txBZ23tYvZW2JDSYp37M2d9W2njgVj3-LSMFW2Y9r2K1zBGxhW3RmqRT8_S6cMN2Xm8DMSvwGbN1d7qQzLRvjZW5M7HVB1h123qW8DMSW17MPHR0W2g9S0D4nk-KrW42TjC-7f5GtXW7Tg5zb2LyngMVRH5js4GygrfW3-3Zwz5ZG7xJW4Gsyrr2-XksxW1kcvqk15QClgW3bnCcG4xMw0RW68qfZK4WyjJB32_v1).

Optimal optimizer: Gradient descent is the clear choice for finding the minimum of any function. In cases where an exact solution can be computed directly — say, a linear regression task with lots of variables — it can approximate one, often faster and more cheaply. But it really comes into its own in complex, nonlinear tasks. Armed with gradient descent and an adventurous spirit, you might just make it out of the mountains in time for dinner.


# Resources