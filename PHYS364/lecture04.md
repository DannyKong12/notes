# Phys 364

### Sturm-Liouville Theorem
Consider a single variable, ordinary second-order differential equation, which we claim has the form
$$\begin{align}
P_0(x)\frac{d^2y}{dx^2}+P_1(x)\frac{dy}{dx}+P_2(x)y = 0 \\
\end{align}$$
If we can rewrite this problem into the form
$$\begin{align}
\frac{d}{dx}\bigg[p(x)\frac{dx}{dy}\bigg]+q(x)y=0
\end{align}$$
then we say this equation is in a self-adjoint form.

Common examples include
* $\frac{d^2y}{dx^2}+q(x)y=0$
* Bessel eq.
* Certain Legendre Equations
* Schrodinger eq. $\frac{-\hbar}{2m}\frac{d^2y}{dx^2}\Psi+(V-E)\Psi=0$

Proof:
$$\begin{align}
  LHS &= \int_a^b {y_1}^* \hat{\mathcal{L}} y_2 dx \\
  &= \int {y_1}^* \bigg[ \frac{d}{dx} p(x) \frac{d}{dx} + q(x) \bigg] y_2 dx \\
  &= \int {y_1}^* \frac{d}{dx}\bigg[ p(x) \frac{dy_2}{dx} \bigg] dx + \int {y_1}^* q(x) y_2 dx \\
  &= \int {y_1}^* d\bigg[ p(x) \frac{dy_2}{dx} \bigg] + \int {y_1}^* q(x) y_2 dx \\
  &= {y_1}^* p(x) \frac{dy_2}{dx}\bigg{|}_a^b \\
\end{align}$$



$$\begin{align}
  y_1(x) = y_2(x) = y(x)
\end{align}$$

$$\begin{align}
  \hat{\mathcal{L}} y(x) &= -\lambda \omega y \\
  \hat{\mathcal{L}} y(x)^* &= -\lambda^* \omega y^* \\
  \int y^* \hat{\mathcal{L}} y dx &= -\lambda\omega y y^* \\
  \int y \hat{\mathcal{L}} y^* dx &= -\lambda\omega y y^* \\
  \int y \hat{\mathcal{L}} y^* dx - \int y \hat{\mathcal{L}} y^* dx &= -(\lambda - \lambda^*) \int \omega y y^* dx \\
\end{align}$$

We reach the conclusion that $\lambda$ must be real, in order to have a solution.
