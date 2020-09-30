# CS666

### Balls and Bins
Suppose we have a number of labelled balls, which we randomly (uniformly and independently) distribute among some number of labelled bins. We want to answer the following questions:
* What is the expected number of balls in each bin
* What is the expected number of empty bins
* What is the expected maximum number of balls in any bin
* What is the expected number of bins with $k$ balls in them
* How many balls do we need to expect no empty bins

These questions are often related to the analysis of *randomized algorithms*

#### Expected Number of Balls in a Bin
Let's label the $m$ balls $1, ... , m$, and $n$ bins $1, ... , n$. Let $B_{ij}$ be the variable that ball $i$ was thrown into bin $j$.
The number of balls in a bin is 

$$\sum_i B_{ij}$$

The expectation of this can be calculated

$$\begin{align}
E[\text{# of balls in bin }j] &= E\left[\sum_i B_{ij}\right] \\
&= \sum_i E[B_{ij}] \\
&= \sum_i Pr[\text{ball i in bin j}] \\
\end{align}$$

#### Expected Number of Empty Bins
Let $N_i$ be the indicator variable that bin $i$ is empty, the expected number of empty bins is the sum of the expectation that bin $i$ is empty. Since the probability that a ball goes into any bin is $1/n$, the probability that bin $i$ is empty is $(1-1/n)^m$, for $n$ bins that is $n(1-1/n)^m$. In the limit of large $n$, that is approximately $ne^{-m/n}$

#### Concentration of Probability
Consider the situation where $m=n$ the number of balls equals the number of bins, then the expectation value of number of balls per bin is $1$ per bin, but the expectation value of empty bins is $1/e$. These "expectations" seem contradictory, which one do we actually "expect". The problem is there is an average outcome (expectation *value), but we want to know what to "expect" when we actually try this experiment. 

In this case, we see that the calculation of the number of empty bins occurs more often. We try to explain this with concentration of probability measure. 

#### Maximum Load in a Bin
We are interested in the "typical" maximum number of balls in a bin (concentration of probability)

Begin with the birthday problem, what is the value of $m$ such that we expect to see two balls in a bin. The probability that there are no collisions after $m$ balls ($m < n$) is calculated by

$$1 \cdot (1-\frac{1}{n}) \cdot (1-\frac{2}{n}) ... (1-\frac{m-1}{n})$$

After some approximations, we have $e^{(-m^2)/2n}$. The number of people $m$ needed for two people to have the same birthday with probability $1/2$ is $m=\sqrt{2n\ln(2)} \approx 23$ people. For an asymptotic bound, when $m = \Theta(\sqrt{n})$ we see a collision.

Suppose $m=n$, what is the probability that a bin has $>k$ balls in it? This number is upper bounded by the sum over all subsets of $n$ of size $k$ of the probability that the balls of those labels are in bin $1$. (by the union bound)

$$\begin{align}
Pr[\text{bin 1 has >k balls]} &\leq \sum_{S} \prod Pr[\text{ball i is in bin 1}] \\
&= \sum_S \prod 1/n \\
&= \begin{pmatrix} n \\ m \end{pmatrix} 1/n^k = e^k/k^k
\end{align}$$

Again by the union bound, the probability for all $n$ bins is upper bounded by $ne^k/k^k = \exp(\ln n + k - k \ln k)$. The complement of this situation is to ask the probability that *no bins* have more than $k$ balls (i.e. max load is $k$). We want to know when this probability is large, which is essentially when $k\ln k > \ln n$. If $k = 3\ln n/\ln\ln n$, so with high probability, max load is $O(\ln n/\ln\ln n)$
