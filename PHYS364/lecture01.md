# Phys 364

#### Coordinates
Suppose we introduce a set of coordinates $q_1 ... q_i$ by the relation
$$\begin{align}
x &= x(q_1, q_2, q_3) \\
y &= y(q_1, q_2, q_3) \\
z &= z(q_1, q_2, q_3) \\
\end{align}$$

In $\mathbb{R}^3$ we can have at most 3 coordinates.  

We can rearrange our coordinate transformation to be functions of our "normal" cartesian coordinates

$$\begin{align}
q_1 &= q_1(x, y, z) \\
q_2 &= q_2(x, y, z) \\
q_3 &= q_3(x, y, z) \\
\end{align}$$

Consider the very trivial case where we have

$$\begin{align}
q_1 &= x \\
q_2 &= y \\
q_3 &= z \\
\end{align}$$

We can calculate the length of a vector in this new coordinate system, and it would be the same as the cartesian case, but in general this is not true. Suppose for example, instead of $q_1 = x$ we had $q_1 = 2x$, the cartesian norm very obviously does not work for our new coordinate system. We could define a new norm for our system.

In order to generalize our transforms, we can define a scale factor
$$\begin{align}
h_i &= q_{ii} = \left(\frac{\partial x}{\partial q_i} \right)^2 + \left(\frac{\partial y}{\partial q_i} \right)^2 + \left(\frac{\partial z}{\partial q_i} \right)^2
\end{align}$$

In our new coordinates, the $\vec\nabla$ operator:
$$\begin{align}
\vec\nabla \Phi &= \sum_{i=1}^3 \frac{1}{h^2}\frac{\partial}{\partial q_i} \hat{\mathbf{e}}_i \\
\vec\nabla \cdot \mathbf{V} &= \\
\vec\nabla \times \mathbf{V} &= \frac{1}{h_1h_2h_3}
\begin{vmatrix}
  \hat{\mathbf{e}}_1 h_1 & \hat{\mathbf{e}}_2 h_2 & \hat{\mathbf{e}}_3 h_3 \\
  \frac{\partial}{\partial q_1} & \frac{\partial}{\partial q_2} & \frac{\partial}{\partial q_3} \\
  h_1\mathbf{V}_1 & h_2\mathbf{V}_2 & h_3\mathbf{V}_3 \\
\end{vmatrix}
\end{align}$$
* We can make a table for our typical curvilinear coordinates, spherical and cylindrical.
$$\begin{array}{|l|}
\hline
\text{Cylindrical} & \text{Spherical} \\
\hline
1 \to r, 2 \to \phi, 3 \to z & 1 \to \rho, 2 \to \theta, 3 \to \phi \\
h_1 = , h_2 = , h_3 = & h_1 = , h_2 = , h_3 = \\
\vec\nabla \Phi =  & \vec\nabla \Phi = \\
\vec\nabla \cdot \mathbf{V} = & \vec\nabla \cdot \mathbf{V} = \\
\vec\nabla \times \mathbf{V} = & \vec\nabla \times \mathbf{V} = \\
\hline
\end{array}$$
* Examples:
  1. $\vec{B}$ field given by $\vec{B} = \frac{I\mu}{2\pi}\frac{1}{\rho}\hat{e}_{\phi}$, find the cross product $\vec\nabla \times \vec{B}$
  2. $\vec{E}$ field given by $\vec{E}=\frac{1}{r^2}\hat{e}_r$, find the gradient $\vec\nabla \vec{E}$
