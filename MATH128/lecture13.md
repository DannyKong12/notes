# Math 128 

# Series pt. 2

#### Theorem:
If a series is convergent, then $\lim_{n\to\infty} a_n=0$  

Contrapositive:  
If $\lim_{n\to\infty} a_n \neq 0$ then the series is not convergent.

__Ex1:__ Show that the following series diverges  
General technique, show that one or more of the convergence tests does not hold. Begin with the limit divergence test.

$$\begin{align}
\sum_n^\infty \frac{4^n-3^n}{4^n+2^n}\\
\lim_{n\to\infty} \frac{4^n-3^n}{4^n+2^n}\\
\lim_{n\to\infty} \frac{1+\frac{3^n}{4^n}}{1+\frac{2^n}{4^n}}\\
\lim_{n\to\infty} \frac{1}{1}\\
\textbf{diverges}\\
\end{align}$$
