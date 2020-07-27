[[markov decision process]]
[[linear dynamical system]]
[[latent state]]

# Notes
- A [[hidden markov model]]
- Optimal for state decoding/inference

- Standard Kalman variables
$$
\begin{align}
F &: \texttt{transition_matrices} & 
Q &: \texttt{transition_covariance}\\
H &:\texttt{observation_matrices} &
R &:\texttt{observation_covariance}\\
\mu_0 &: \texttt{initial_state_mean} & \Sigma_0 &: \texttt{initial_state_covariance}
\end{align}
$$

# Resources
- [Colab notebook](https://colab.research.google.com/drive/19V5aKHmQd7CUPxLK4mGb7M7w3oDFL4YZ#scrollTo=gBnkqojAS7G8) from [[Neuromatch]]