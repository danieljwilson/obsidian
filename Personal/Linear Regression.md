## Topics
[[Statistics]]
[[Math]]

## Notes

#### Assumptions
* Linear relationship
	* Important to check for outliers
* Multivariate normality
	* Best checked with histogram or Q-Q plot
	* Normality can be checked with a goodness of fit test, such as the Kolmogorov-Smirnov test
	* When the data is not normally distributed a non-linear transformation (e.g., log-transformation) might fix this issue.
* No or little multicollinearity
	*  Multicollinearity  occurs  when the independent variables are too highly correlated with each other.
* No auto-correlation
	* Autocorrelation occurs when the residuals are not independent from each other.  
	* i.e. the value of y(x+1) is not independent from the value of y(x)
* Homoscedasticity
	* Examination of a scatter plot is good way to check
		* the residuals are equal across the regression line

**Rule of Thumb**
>regression  analysis  requires  at  least  20 cases  per  independent variable in the analysis