# Math 128 

# Series
#### Series convergence 1
  * If the limit of the partial sums does not converge, the series cannot converge

__Ex1:__  Harmonic Series
$$\begin{align}
\sum_n^\infty \frac{1}{n} \\
\end{align}$$
Proof by Contradiction:  
Suppose the series converges to S
Let $S=\sum_n^\infty \frac{1}{n}$  
then $S=1+\frac{1}{2}+\frac{1}{3}+\frac{1}{4}+\frac{1}{5}...$  
By association, $S=(1+\frac{1}{2})+(\frac{1}{3}+\frac{1}{4})+(\frac{1}{5}+\frac{1}{6})...$  
Adjust the first term to be equal to the second in each pair  
$S^\prime=(\frac{1}{2}+\frac{1}{2})+(\frac{1}{4}+\frac{1}{4})+(\frac{1}{6}+\frac{1}{6})...$  
$S^\prime={1+\frac{1}{2}+\frac{1}{3}+\frac{1}{4}+...}$  
We recognize S again, in a series equal to $S^\prime$ which we defined as greater than S. $S>S^\prime=S$ which is a contradiction.

__Ex2:__ Telescoping Series
$$\begin{align}
\sum_n^\infty \frac{1}{n(n+1)} \\
\textbf{by partial fractions: }\\
\sum_n^\infty \frac{1}{n}-\frac{1}{n+1}
\end{align}$$
Now consider the partial sums
$$\begin{align}
S_1&=1-\frac{1}{2} \\
S_2&=1-\frac{1}{2}+(\frac{1}{2}+\frac{1}{3})\\
S_3&=1-\frac{1}{3}+(\frac{1}{3}+\frac{1}{4})\\
\end{align}$$

__Ex3:__ Practice
$$\begin{align}
\textbf{show that:}\\
&\sum_n^\infty e^{\frac{1}{n}}-e^{\frac{1}{n+1}}=e-1
\end{align}$$

#### Theorem: if $\sum_n^\infty a_n$ and $\sum_n^\infty b_n$ are both convergent
  * Multiplicative: e.g. $\sum_n^\infty ca_n = c \sum_n^\infty a_n$
  * Additive: e.g. $\sum_n^\infty a_n + \sum_n^\infty b_n = \sum_n^\infty (a_n+b_n)$
  * Adding or subtracting a finite number of terms does not change convergence e.g. if $\sum_n^\infty a_n$ converges then $\sum_n^\infty a_n + C$ converges
  * 
