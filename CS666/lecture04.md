# CS666

### Coupon Collector Problem
Again, we will use the framework of balls/bins, and we ask for what value of $m$ do we expect to have no empty bins?

Suppose each bin is a coupon, and we buy a coupon at random, what is the number of coupons we need to buy to collect all the coupons?

Let $X_i$ be the number of balls thrown to get from $i+1$ empty bins to $i$ empty bins. $X = \sum X_i$ is the toal number of balls until no empty bins. $X_i$ is the geometric random variable with $p=i/n$. 

The expectation value of $X$ is the sum of the expectation value of each $X_i$ (by linearity of expectation values) which is equal to $1/p$. Taking the sum of $1/p$ for each $X_i$, we have

$$E[X] = \sum_i p_i = \sum_i \frac{n}{i} = nH_n \approx n \ln n$$

Where $H_n$ is the $n$th harmonic number.

#### Power of Two Choices
Recall that when $n$ balls are thrown into $n$ bins, the maximum load is $\Theta(\ln n / \ln \ln n)$ with high probability. 

Consider the alternative case where before we throw the ball, we choose two bins at random, and throw the ball into the bin with the fewer number of balls already in it. 

Theorem: This alternative problem reduces the maximum load to $O(\ln \ln n)$

The intuition for this problem is that, given a bin with $h$ balls inside, there must be at least two bins with $h$ balls inside (there are two bins such that $h$ is the lower of two bins). 

Let $N_h$ be the number of bins with at least $h$ balls inside. The probability that there exists a bin with $h+1$ balls inside must be less than the probability of selecting two bins of height $h$, which can be given by $(N_h/n)^2$.

let $\beta_4 = n/4$, and $\beta_{i+1} = 2\beta_i^2/n$. Let $E(h, t)$ be that after $t$ balls are thrown, $N_h \leq \beta_h$. Then the probability $Pr[E(4, n)] = 1$. To prove this, $n \geq N_4*4$, so $N_h \leq n/4$ which is the event we are interested in.

Let us also define $Y_t(h)$ be the indicator variable that the $t$th ball thrown was placed in a bin that had height $h$. 

Recall that for the binomial r.v. $B(n, p)$, the probability of $Pr[B(n, p) \geq 2np] \leq e^{-np/3}$. 


