# Math 128
## First Order ODEs

#### Definitions
  * Equation is a first order ODE if it is the form:
    $\frac{dy}{dx}=F(x,y)$
  * X is called the independent variable
  * Y = y(x) is called the dependent variable
  * if $F(x,y)$ only depends on x ($F(x)$) it is a separable diff. eq.
  * If $F(x,Y)$ depends only on y ($F(y)$) it is an autonomous system
  * The ODE will have a general solution due to the constant of integration

#### Initial value problem
  * An initial constant e.g. $y(a)=c$
  * there is an exact solution to this system called the particular solution

#### Stable state problem
  * An Equilibrium solution is any constant function that solves the ODE
  * These are found by setting $\frac{dy}{dx}=0$

#### Higher Order derivatives
  * $\frac{dy}{dx}=y^\prime$
  * $\frac{d^2y}{dx^2}=y^{\prime\prime}$
  * $\frac{d^3y}{dx^3}=y^{\prime\prime\prime}$
  * Highest order is the order of the diff. eq.

__Ex1:__ Find all solutions $y=f(x)$ of $y^{\prime\prime}=sin(5x)$
$$\begin{align}
y^{\prime\prime}&=sin(5x)\\
&& \text{Let } Y=y^\prime => Y^\prime=y^{\prime\prime}\\
Y^\prime&=sin(5x)\\
Y&=\int \sin(5x)dx \\
y&=\int -\frac{1}{5}\cos(5x)+C_1 \\
y&=-\frac{1}{25} \sin(5x) + C_1 x + C_2
\end{align}$$

We can find $C_1$ and $C_2$ by taking the initial conditions $y(a_1)=c_1$ $y^\prime(a_1)=c_2$  

__Ex2:__ Verify that $y=x^2+\frac{C}{x^2}$ is a solution to the diff. eq.: $x\frac{dy}{dx}+2y=4x^2$
$$\begin{align}
\frac{dy}{dx}&=2x+\frac{c}{x^2}\\
2x+\frac{c}{x^2}&=x(2x-\frac{2C}{x^3})+2(x^2+\frac{C}{x^2})\\
2x+\frac{c}{x^2}&=2x^2-\frac{2C}{x^2})+2x^2+\frac{2C}{x^2})\\
2x-\frac{c}{x^2}&=2x-\frac{c}{x^2}\\
\end{align}$$

__Ex3:__ for what values of k would $e^{kx}$ be a solution of $y^{\prime\prime}-4y^\prime+3y=0$
$$\begin{align}
k^2e^{kx}-4ke^{kx}+3e^{kx}&=0 \\
e^{kx}(k^2-4k+3k)&=0\\
e^{kx}(k-3)(k-1)&=0\\
k&=1,3
\end{align}$$

#### Direction fields
  * ODEs may not have an elementary solution: e.g.:  
    we may not have a solution for $\frac{dy}{dx}=F(x,y)$
  * We can sketch the function $F(x,y)$ we can sketch the solution without explicitly knowing $F$.
  * $\frac{dy}{dx}$ gives the slope of the function $F$ and $\frac{d^2y}{dx^2}$ represents concavity

__Ex4:__ sketch the solution curves of $\frac{dy}{dx}=1-y^2$.  
Immediately we see that $1-y^2$ can be factored into $(1-y)(1+y)$ these will be useful.

Use implicit to find $\frac{d^2y}{dx^2}$
$$\begin{align}
\frac{d^2y}{dx^2}&=\frac{d}{dx}\big[\frac{dy}{dx}\big] \\
&= 2y \frac{dy}{dx} \\
&= 2y (1-y^2) \\
&= 2y-2y^3
\end{align}$$
||$y<-1$|$-1<y<0$|$0<y<1$|$y>1$|
|:---:|:---:|:---:|:---:|:---:|
|$\frac{dy}{dx}$|$\downarrow$|$\uparrow$|$\uparrow$|$downarrow$|
|$\frac{d^2y}{dx^2}$|down|up|down|up|
