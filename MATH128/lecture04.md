# Math 128
### Important Websites
  * Learn: course info/assignments/quizzes
  * Crowdmark: upload assignments/quizzes
  * Piazza

### _FIRST TUTORIAL STARTS SEP.18_
  * __*QUIZZES WILL BE DURING TUTORIALS*__
  * Due 9pm monday

#### Review of basic integration
  * $\int x^ndx$
  * $\int e^xdx$
  * $\int \sin(x)dx$
  * $\int \cos(x)dx$
  * $\int \sec^2(x)dx$
  * $\int \csc^2(x)dx$
  * $\int \frac{1}{1+x^2} dx$
  * $\int \frac{1}{\sqrt{1-x^2}}dx$
  * Definite integrals

####Fundamental Theorem of Calculus
  * Part 1: the cumulation function
    * $F(x)=\int^x_a f(t)dt$, then $F^\prime(x) = f(x)$  
  * Part 2: the antiderivative theorem
    * If $F^\prime(x) = f(x)$, then $\int^b_a f(x) = F(b)-F(a)$, where
    F is the antiderivative of f

#### Integral Functions
  * an integral function is of the form  
    $P(x)=\int^{h(x)}_{g(x)} f(t) dt$
  * Using FTC to find $P^\prime(x)$:
    * let $F(x)$ be the antiderivative of $f(x)$ (defined as $F^\prime = f$)
    * $P^\prime(x)=\frac{d}{dx}(F(h(x))-F(g(x)))$
    * $P^\prime(x)=F^\prime(h(x))h^\prime(x)-F^\prime(g(x))g^\prime(x)$

#### Substitution
  * idea is to use chain rule in reverse
  * e.g. $\frac{d}{dx}[F(g(x))]=F^\prime(g(x))g^\prime(x)$
$$\begin{align}
\frac{d}{dx}[F(g(x))]&=F^\prime(g(x))g^\prime(x) \\
\int\frac{d}{dx}[F(g(x))]&=\int F^\prime(g(x))g^\prime(x) dx \text{,  let U = g(x)}\\
F(g(x))&=\int F^\prime(g(x))g^\prime(x)dx \\
F(U)&=\int F^\prime(U) dU \\
\end{align}$$

  * Theorem: if $U=g(x)$ is a differentiable function whose range is an interval I and $f(x)$ is continuous on I, then $\int f(g(x)))g^\prime(x)dx=\int f(U)dU$
  * look for functions that fit $g(x)$ and $g^\prime(x)$

$$\begin{align}
\int e^{3x}\sin(e^{3x}+5) dx &= g^\prime(x) \sin(g(x))dx \\
&=\frac{1}{3}\int \sin(U)dU \\
&=-\frac{1}{3}\cos(U)+C \\
&=-\frac{1}{3} \cos(e^{3x}+5)+C
\end{align}$$

__Ex2:__ $\int \tan(x)dx$  
$let U = \cos(x)$
$$\begin{align}
\int \tan(x) dx &= -\int \frac{1}{U} dU \\
&= -\ln(U)+C \\
&= -\ln(\cos(x))+C \\
&= \ln(\sec(x))+C
\end{align}$$

__Ex3:__ $\int\frac{x^2}{\sqrt{x+1}}$ Let $U=x+1$  
By using U as the function inside a more complicated function  
$$\begin{align}
\int\frac{x^2}{\sqrt{x+1}} &= \int \frac{(U-1)^2}{}(sqrt{U}) \\
&= \int U^{\frac{3}{2}} -2U^{\frac{1}{2}}+U^{\frac{1}{2}} \\
&= \frac{2U^{\frac{5}{2}}}{5}-\frac{4U^{\frac{3}{2}}}{3}+2U^{\frac{1}{2}}
\end{align}$$

#### Integration By Parts
  * general approaches
  * Choose the most difficult $dV$ you can integrate
  * pick $U$ so that $dU$ is simpler e.g. polynomials
  * integrate several times  
&nbsp;
&nbsp;
__Ex1:__ $\int x^2 \cos(x)dx$  
Choose $U=x^2$ and $dV = \cos(x)$
$$\begin{align}
\int x^2 \cos(x) dx = \int U dV &= UV - \int VdU \\
&= x^2\sin(x)-\int 2x\sin(x)dx \\
&= x^2\sin(x)-2(-x\cos(x)+\int \cos(x) dx) \\
&= x^2\sin(x)+2x\cos(x)-2\sin(x)
\end{align}$$






&nbsp;

&nbsp;

&nbsp;

&nbsp;
