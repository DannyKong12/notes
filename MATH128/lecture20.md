# Math 128


#### Rational functions of the form $f(x)$ = $\frac{P(x)}{Q(x)}$
  * Degree on the top must be less than the degree on the bottom
  * if $deg(P(x))]\geq deg(Q(x))$
    * $(f(x))$ is an improper rational function and we must simplify to get $f(x)=S(x)+\frac{R(x)}{Q(x)}$
  * if $deg(P(x))]< deg(Q(x))$ then $f(x)$ is a proper rational function
  * Partial fraction expansion

__Ex2:__ $\int \frac{3x^2-5}{x-2}dx$
  * long division first

$$\begin{align}
\int \frac{3x^2-5}{x-2}dx &= \int {3x+6 dx} + \int \frac{7}{x-2} dx \\
&= \frac{3}{2}x^2+6x+7\ln |x-2| +C
\end{align}$$

#### General Strategy

|If $Q(x)$ looks like...                          | Partial Fractions look like...|
| :----------------------------------------------:| :----------------------------:|
| ditinct linear factors $(a_1x+b_1)(a_2x+b_2)...$| $\frac{A_1}{(a_1x+b_1)}+\frac{A_2}{(a_2x+b_2)}...$|
|$(a_1x+b_1)^k+...$ | $\frac{A_1}{(a_1x+b_1)}+\frac{A_2}{(a_1x+b_1)}^2...\frac{A_3}{(a_kx+b_k)}^k$|
|irreducible quadratic factor ($ax^2+bx+c$) | $\frac{Ax+B}{ax^2+bx+c}$
|repeated quadratic ($ax^2+bx+c$) | $\frac{A_1x+B_1}{ax^2+bx+c}+\frac{A_2x+B_2}{ax^2+bx+c}^2...\frac{A_kx+B_k}{ax^2+bx+c}^k$

__Ex3:__ $\int \frac{3x-1}{x^2-5x-6}$

$$\begin{align}
\int \frac{3x-1}{x^2-5x-6} &=\int \frac{3x-1}{(x-5)(x+1)} \\
\frac{3x-1}_x^2-5x-6} = \frac{A}{x+1} + \frac{B}{x-6} \\
&= A(x-6)+B(x-1) \\
3x-1=A(-1-6), A=\frac{4}{7} \\
&= \frac{17}{7}
\end{align}$$
