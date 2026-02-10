---
title: derivative
aliases: []
summary: 
created: 2022-12-06 10:09
modified: 2022-12-06 10:09
tags: []
---

[[partial derivative]]
[[calculus]]

# Notes
The formal definition of derivatives can be a bit daunting with limits and values 'going to zero'. The idea is really much simpler. 

The derivative of a function describes how the output of a function changes when there is a small change in an input variable.

Let's use the cost function $J(w)$ as an example. The cost $J$ is the output and $w$ is the input variable.  
Let's give a 'small change' a name *epsilon* or $\epsilon$. We use these Greek letters because it is traditional in mathematics to use *epsilon*($\epsilon$) or *delta* ($\Delta$) to represent a small value. You can think of it as representing 0.001 or some other small value.  

$$
\begin{equation}
\text{if } w \uparrow \epsilon \text{ causes }J(w) \uparrow \text{by }k \times \epsilon \text{ then}  \\
\frac{\partial J(w)}{\partial w} = k \tag{1}
\end{equation}
$$

This just says if you change the input to the function $J(w)$ by a little bit and the output changes by $k$ times that little bit, then the derivative of $J(w)$ is equal to $k$.

**EXAMPLE**
Let's try this out.  Let's look at the derivative of the function $J(w) = w^2$ at the point $w=3$ and $\epsilon = 0.001$

```python
J = (3)**2
J_epsilon = (3 + 0.001)**2
k = (J_epsilon - J)/0.001    # difference divided by epsilon
print(f"J = {J}, J_epsilon = {J_epsilon}, dJ_dw ~= k = {k:0.6f} ")
```

We have increased the input value a little bit (0.001), causing the output to change from 9 to 9.006001, an increase of 6 times the input increase. Referencing (1) above, this says that $k=6$, so $\frac{\partial J(w)}{\partial w} \approx 6$. If you are familiar with calculus, you know, written symbolically,  $\frac{\partial J(w)}{\partial w} = 2 w$. With $w=3$ this is 6. Our calculation above is not exactly 6 because to be exactly correct $\epsilon$ would need to be [infinitesimally small](https://www.dictionary.com/browse/infinitesimally) or really, really small. That is why we use the symbols $\approx$ or ~= rather than =. Let's see what happens if we make $\epsilon$ smaller.

```python
J = (3)**2
J_epsilon = (3 + 0.000000001)**2
k = (J_epsilon - J)/0.000000001
print(f"J = {J}, J_epsilon = {J_epsilon}, dJ_dw ~= k = {k} ")
```

# Resources
**Papers**