---
title: linear regression
aliases: []
summary: 
created: 2021-08-08 10:10
modified: 2021-08-08 10:10
tags: []
---

[[linear regression]]
[[multiple linear regression]]
[[logistic regression]]
[[machine learning]]
[[algorithms]]
[[K-means clustering]]
[[neural network]]
[[gradient descent]]

# Notes
- the output is a linear combination of the attributes
- the coefficients can represent the contribution of an attribute to the output
- we can optimize the [[objective function]] with [[gradient descent]]
	- objective function usually [[mean squared error]]
- multiple linear regression 

![[multiple_linear_regression.png]]

From [[Andrew Ng]]
#### Linear Regression: Straight & Narrow 

Linear regression may be the key statistical method in machine learning, but it didn’t get to be that way without a fight. Two eminent mathematicians claimed credit for it, and 200 years later the matter remains unresolved. The longstanding dispute attests not only to the algorithm’s extraordinary utility but also to its essential simplicity.

Whose algorithm is it anyway? In 1805, French mathematician Adrien-Marie Legendre published the method of fitting a line to a set of points while trying to predict the location of a comet (celestial navigation being the science most valuable in global commerce at the time, much like AI is today — the new electricity, if you will, two decades before the electric motor). Four years later, the 24-year-old German wunderkind Carl Friedrich Gauss insisted that he had been using it since 1795 but had deemed it too trivial to write about. Gauss’ claim prompted Legendre to publish an addendum anonymously observing that “a very celebrated geometer has not hesitated to appropriate this method.”

Slopes and biases: Linear regression is useful any time the relationship between an outcome and a variable that influences it follows a straight line. For instance, a car’s fuel consumption bears a linear relationship to its weight. 

-   The relationship between a car’s fuel consumption _y_ and its weight _x_ depends on the line’s slope _w_ (how steeply fuel consumption rises with weight) and bias term _b_ (fuel consumption at zero weight): _y=w*x+b_. 
-   During training, given a car’s weight, the algorithm predicts the expected fuel consumption. It compares expected and actual fuel consumption. Then it minimizes the squared difference, typically via the technique of ordinary least squares, which hones the values of _w_ and _b_.
-   Taking the car’s drag into account makes it possible to generate more precise predictions. The additional variable extends the line into a plane. In this way, linear regression can accommodate any number of variables/dimensions.

Two steps to ubiquity: The algorithm immediately helped navigators to follow the stars, and later biologists (notably Charles Darwin’s cousin Francis Galton) to identify heritable traits in plants and animals. Two further developments unlocked its broad potential. In 1922, English statisticians Ronald Fisher and Karl Pearson showed how linear regression fit into the general statistical framework of correlation and distribution, making it useful throughout all sciences. And, nearly a century later, the advent of computers provided the data and processing power to take far greater advantage of it.

Coping with ambiguity: Of course, data is never perfectly measured, and some variables are more important than others. These facts of life have spurred more sophisticated variants. For instance, linear regression with regularization (also called [ridge regression](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgQ_nN2rpwh6dbfTwW2pTs-B8YYfKNN7lmwRyM1358N2h1Wx9NhYr4W2KwF5r2TgrzSW769DQt7q0YM5W7hhjPH3mtYDfW51mQw14dJxnQW8gXJTv2gCfgFN5w-QBLbkm_YW16HBpq6LB_0pVQcYf91zBfLlN272t2tx5wt1W3S5hCk8VybJpW8GGLL67w3FY5MkvPLlG4yN1W525rJg1d7dBhW6Qhb9J8bDM4jW8F2gkl7sndSRW8z7bwX7_0JCpW7vGwBN2Z2HxQW2F2qB95XhwY8W4ycpw18hZbd9W3TCCdg8FbPLM35f91)) encourages a linear regression model to not depend too much on any one variable, or rather to rely evenly on the most important variables. If you’re going for simplicity, a different form of regularization (L1 instead of L2) results in [lasso](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7Cg-R2N8-tpRhpDZX2W4jxFW56rpKGyW2v77ck6_xpSsW2Km0dg3BWjDzW5wJR2M7V9WFhVSSrCp8TKTB8W8n7KLP46TY07W428xCM2Rq-HKW7cckyv10918-W10k9-C4mZfXMW8ybjZ47_5VCwVM2pkm5LP4BRW4k44B78NkhlWW7dHWds61LSv5W31CPVj2l6fQnW7kXCNN18PWtgW4yNHl2613K1MW6qqCbT6sXSzmVphTw41rs84GW1GhfYF7lvq0cN5949_nl7qTbW4NXv908gqrBrW6JjTxQ6XD_pxW8CRsw0266s2d38V21), which [](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgZBLVQcJmW8KL_70W8Z0Wwk4Zd2zZW1l_wcc954NP0W360VTG354D7dW48z2HH3MkN55N4bwZYTLnC5YW28YXp42lJ3R1W7c9y9B8XL21lW5CxHTm8KF9xCW6HPw0N8FD66WW4VzMFn600DvzW2FZKH_88CWwDW53R0vX1xNYFvW6XMldy7wwD54W7tYgjq7Yh3LBW90B5pR6ZN4S9W4rgRTL5TbKy8N6SlMpWK_7J8W3-ZQSY7hJpNpW241QpT8DMr6vW6Nn48b5hj7y0W6WCzKL8bQnfzW2kSTmw5yNBZlW2x5Zz_6Z0sJh3drT1)encourages as many coefficients as possible to be zero. In other words, it learns to select variables with high prediction power and ignores the rest. [Elastic net](https://info.deeplearning.ai/e3t/Ctc/LX+113/cJhC404/VWh-G23xMvv8W5KWZ_t8S6nCCW65wf3Z4KyjQHMDyKmQ3q3nJV1-WJV7CgXBcW5xtngw37WBXyW3rTjmD8GzvQRW6WGjCS34qhn6V_6wrr1pqDW9W7Ry77H3sqP_7W7C_tR269llsqV3lrCl6_JDPRW7kGs3G3KDn_ZW1KhZJY1B2d02N3kPjnC5tc81VN1Pvz5FR9JfN40TGBmDp2zyW2D9hHK2gfLrZW3qQ3k617DZ7HW6DJvQq56W7zZW23V30g39jc9yW8Ft5Cb6QpP6CW5vHFq61hw826MVYsVGPD3xCW2g5swH8VXZRQW37gWw53Vg44ZW1HdyyV54FZ7ZW1q4gdy2Z6HbTW494XXd2Y589h35fq1) combines both types of regularization. It’s useful when data is sparse or features appear to be correlated.

In every neuron: Still, the simple version is enormously useful. The most common sort of neuron in a neural network is a linear regression model followed by a nonlinear activation function, making linear regression a fundamental building block of deep learning.

# Resources