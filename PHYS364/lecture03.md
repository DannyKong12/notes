# Phys 364

#### Fourier Transformation
$$\begin{align}
  f(x) &= \sum_{n\to-\infty}^\infty c_ne^{inx} \\
  c_n &= \frac{1}{2\pi}\int_{-\pi}^\pi f(x) e^{inx} dx
\end{align}$$

#### Symmetry of x-space and k-space
$$\begin{align}
  f(x) &= \frac{1}{\sqrt{2\pi}} \int_{-\infty}^\infty g(k)e^{inx} dk \\
  g(k) &= \frac{1}{\sqrt{2\pi}} \int_{-\infty}^\infty f(x)e^{-inx} dx
\end{align}$$

#### Persevel's Theorem
$$\begin{align}
\int_{-\infty}^\infty |f(x)|^2 dx = 2\pi \int_{-\infty}^\infty |g(k)|^2 dk
\end{align}$$

#### Dirac Delta
We can define a function $f(x)$ s.t.
$$\begin{align}
  f(x) =
  \bigg\{
  \begin{array} {l l}
  0 & x \neq 0 \\
  1 & x = 0
  \end{array}
\end{align}$$

and more generally, if $f(x-x_0) = \delta(x-x_0)$

$$\begin{align}
  f(x) =
  \bigg\{
  \begin{array} {l l}
  0 & x \neq x_0 \\
  1 & x = x_0
  \end{array}
\end{align}$$

Take the Fourier transform to see that
$$\begin{align}
  g(k) &= \frac{1}{2\pi} \int_{-\infty}^\infty \delta(x) e^{inx} dx \\
  &= \frac{1}{2\pi}e^{-ikx_0}
\end{align}$$
