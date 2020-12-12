# Math 128


#### Recap: Type I improper integrals
  * you must split the integral from $\int_\infty^\infty f(x)dx$ into two integrals with a limit for each side

__Ex1:__
$$\begin{align}
\int_\infty^\infty (1-x)e^{-x}dx &= \lim_{b\to\infty} \int_0^b (1-x)e^{-x}dx \\
&= \lim_{b\to\infty} -(1-x)e^{-x}|^b_0 - \lim_{b\to\infty}\int_0^b e^{-x}dx\\
&= \lim_{b\to\infty} \bigg[-e^{-x} + xe^{-x} +e^{-x}\bigg]^b_0
\end{align}$$

__Ex2: P-Test__
LET a, p < 0 be constants. For what values of p does $\int_a^\infty \frac{1}{x^p}dx$ converge?

$$\begin{align}
\int^\infty_a \frac{1}{x^p} &= \lim_{b\to\infty} \int^b_a \frac{1}{x^p} dx \\
&= \lim_{b\to\infty} \int_a^b x^{-p} dx \\
&= \lim_{b\to\infty} \frac{x^{-p+1}}{-p+1}|^b_a \\
&= \lim_{b\to\infty} \frac{-1}{p-1} \frac{1}{x^{p-1}} \\
&= \lim_{b\to\infty} \frac{-1}{p-1} \frac{1}{b^{p-1}}+\frac{1}{p-1} \frac{1}{a^{p-1}} \\
& \begin{cases}
\text{converges} & p > 1 \\
\text{diverges} & p < 1 \\
\int_a^b \frac{1}{x} & p = 1
\end{cases} \\
\int_a^b\frac{1}{x}dx &= \lim_{b\to\infty} \int_a^b\frac{1}{x}dx \\
&= \lim_{b\to\infty} \ln |x| |^b_a \\
&= lim{b\to\infty} \ln{b}-\ln{a} \text{, diverges for large b}
\end{align}$$

#### Type II improper integrals
  1. If $f$ is continuous on $[a,b)$ but discontinuous at b, then $\int_a^b f(x)dx$ converges if $\lim_{t \to b^-} \int_a^t f(x)dx$ exists
  1. If $f$ is continuous on $(a,b]$ but discontinuous at a, then $\int_a^b f(x)dx$ converges if $\lim_{t \to a^+} \int_t^b f(x)dx$ exists
  1. For both of the above, the integral diverges if the limit does not exist
  1. If $f$ has a discontinuity at c, where $a<c<b$ and both $\int_a^c f(x)dx$ and $\int_c^b f(x)dx$ converge, then $\int_a^b f(x)dx = \int_a^c f(x)dx +\int_c^b f(x)dx$


__Ex3:__   
Heres what happens if we ignore the discontinuity
$$\begin{align}
\int_0^4 \frac{2x}{x^2-1}dx &= \ln|x^2-1| |^4_0\\
&= \ln(3)
\end{align}$$

Evaluating the proper way:

$$\begin{align}
\int_0^4 \frac{2x}{x^2-1}dx &= \int_0^1 \frac{2x}{x^2-1}dx+\int10^4 \frac{2x}{x^2-1}dx \\
\text{Evaluating the first term}\\
\int_0^1 \frac{2x}{x^2-1}dx &= \lim_{b\to1^-}\int\frac{2x}{x^2-1}dx \\
&= \lim_{b\to1^-} ln|b^2-1|-ln|-1| \\
& \text{Diverges}
\end{align}$$

__Ex4:__
$$\begin{align}
\int \frac{1}{9-x^2}dx &= \lim_{b\to3^-}\int_a^b\frac{1}{sqrt{9-x^2}}dx \\
&= \lim_{b\to3^-} \arcsin(\frac{x}{3})|^b_0 \\
&= \lim_{b\to3^-} \arcsin(\frac{x}{3}) - \arcsin(0) \\
&= \arcsin(1) = \frac{\pi}{2} \\
& \text{it converge}
\end{align}$$

__Ex5:__  
this shit will fuck you up fam
$$\begin{align}
\int_\frac{1}{3}^\infty \frac{1}{3x-1}^2dx &= \int_\frac{1}{3}^1 \frac{1}{3x-1}^2dx+\int_1^\infty \frac{1}{3x-1}^2dx
\text{, Lets evaluate first integral}\\
\int_\frac{1}{3}^1 \frac{1}{3x-1}^2dx &= \lim_{a\to\frac{1}{3}^+}\int_\frac{1}{3}^1 \frac{1}{3x-1}^2dx \\
&= \lim_{a\to\frac{1}{3}^+} \frac{1}{3} \frac{1}{3x+1}|^1_a \\
&= \frac{-1}{6}+\lim_{a\to\frac{1}{3}^+}\frac{1}{3a-1} \\
\text{first integral diverges, entire integral diverges}
\end{align}$$

#### Theorem: comparison test for the improper integral
  * Suppose $f$ and $g$ are continuous and satisfies the condition:
  $f(x) \geq g(x) \geq 0$, for $x\geq a$
  1. If $\int_a^\infty f(x) dx$ converges, then $\int_a^\infty g(x) dx$ converges
  1. If $\int_a^\infty g(x) dx$ diverges, then $\int_a^\infty f(x) dx$ diverges
