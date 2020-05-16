# Phys 364

#### Partial Differential Equations
* PDEs is generally a broad and complex topic, we focus on a few problems that are particularly pertinent in physics. Common examples include the Laplace equation, Wave equations, sound waves.
* Laplace equations, of the form $\nabla^2 \Phi = 0$ are common in electric potential, heat equations, etc.
* Wave equation as a component of the $\vec{E}$ field, satisfy $\nabla^2 Phi = \frac{1}{c^2}{{\ddot{E}}}$. as well as the acoustic equation of a vibrating string.
* TD-Schrodinger equation, $\frac{\hbar}{2m}\nabla^2\Psi+V\Psi = E\Psi$
* These equations in particular are second order, and involves partial derivatives, and multiple variables.

#### Methods of solving PDEs
(a) Separation of Variables

(b) Green's function

(c\) Series Expansion

(d) Numerical Calculation

#### Separation of Variables [Boas 622-633]
* attempt to turn one PDE into several ODEs
$\begin{align}
\text{Ex: } \nabla^2 \psi &= -k^2\psi \\
(a) \text{ Consider}& \text{ in cartesian coordinates} \\
\text{Assume }\psi &= X(x)Y(y)Z(z) \\
\nabla^2 \psi &= \left(\frac{d}{dx}X\right)YZ + \left(\frac{d}{dy}X\right)XZ + \left(\frac{d}{dz}X\right)XY = -k^2XYZ \\
0 &= \frac{1}{X}X_{xx} + \frac{1}{Y}Y_{yy} + \frac{1}{Z}Z_{zz} \\
\frac{1}{X}X_{xx} &= -k^2-\frac{Y_yy}{Y}-\frac{Z_zz}{Z} \\
\text{We notice} & \text{ the RHS does not involve } x \\
X_{xx} &= -l^2 X \\
Y_{yy} &= -m^2 Y \\
Z_{zz} &= -n^2 Z \\
\end{align}$

For a Laplacian equation $\nabla^2 \psi = 0$, we have

$$\begin{align}
  Y \frac{d^2X}{dx^2} + X \frac{d^2Y}{2y^2} &= 0 \\
  X \frac{d^2X}{dx^2} = - Y \frac{d^2Y}{2y^2} &= -k^2
\end{align}$$

$$\begin{align}
  X &=
  \left\{
    \begin{matrix}
    \sin(kx) \\
    \cos(kx)
    \end{matrix}
  \right . \\
  Y &=
  \left\{
    \begin{matrix}
    e^{kx} \\
    e^{-kx}
    \end{matrix}
  \right . \\
\end{align}$$
