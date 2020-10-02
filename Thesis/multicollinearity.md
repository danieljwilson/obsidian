[[modeling]]
[[collinearity]]
[[correlation matrix]]
[[correlation]]
[[linear regression]]
[[covariance matrix]]

# Notes
[[multicollinearity|Multicollinearity]] refers to a situation in which two or more [[explanatory variables]] in a [[multiple regression]] model are highly linearly related. We have perfect [[multicollinearity]] if the correlation between two independent variables is equal to 1 or −1, as in the equation:
$$X_{2i} = \lambda_0 + \lambda_1X_{1i}$$

Example:
![[multicollinearity_1.png]]
![[multicollinearity_2.png]]
Can't really hold age constant while increasing years of experience.
- coefficients remain unbiased
- overall model fit (R-squre, F, prediction) **not affected**
- however the [[coefficients]] are very **sensitive**
- inflates the [[variance]] of affected variables

### How to Detect?
1. Check correlation between all pairs of $X$ variables. 		
	- Hoping for something close to 0...
	- **One rule of thumb**: Problematic once correlation is above 0.9
2. Create auxiliary regressions for each $X$ variable, e.g.:
	- $X_1 = \beta^*_0 + \beta^*_1(X_2) + \beta^*_2(X_3) + \beta^*_3(X_4) + \epsilon^*$
	- Find out how much of the variance of $X_1$ is explained by the other $X$ variables? How superfluous is $X_1$?
	- Can calculate the [[variance inflation factor]] for each $X$ using the R-squared from each regression:
	- $VIF = \frac{1}{1-R^2_k}$
	- **Typical rule of thumb**: Above 10 is problematic. But that is just saying that the R-squared is above 0.9...
3. Can also look at coefficients. If they have a negative sign, but the correlation between the predictor and the outcome variable is positive then that could suggest an issue...

### Remedies?
##### Option 1: Do Nothing (typical approach)
This makes sense in the following cases:
1. Model only used for prediction (since the SEs are not important and the coefficients themselves are **unbiased**)
2. Correlated variables not of particular interest
3. Correlation is not extreme

#### Option 2: Remove one of the correlated variables
This can make sense if variables are providing the same information.
- Watch out as this can create [[omitted variable bias]]

#### Option 3: Combine the correlated variables
For example in the situation above we could create a 'seniority score' that algorithmically combines experience and age into a single variable
- This can be pretty good

#### Option 4: Use partial least squares or [[principal component analysis]]

### Note:
- If creating dummy variables for a regression this is why you should remove one of the categories/variables - if you keep it you are adding perfect [[multicollinearity]] to your model.
	- For example sex should be dummy-coded using a single variable instead of one variable for boys and one for girls, as once we know whether it is a boy, the girl variable provides **no new information**, as it is perfectly correlated with the boy dummy variable.

# Resources
**Videos**
- [What is Multicollinearity? Extensive video + simulation!](https://www.youtube.com/watch?v=Cba9LJ9lS8s)
- [Multicollinearity - Why its bad?](https://www.youtube.com/watch?v=ATH4urDitI8) ML perspective

