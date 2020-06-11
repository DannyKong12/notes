# Phys 364

### Vector analysis

#### Vectors
1. We define vectors as mathematical objects with certain properties

Vectors can be constant or varying, and can be differential elements.

2. Cross products
Prove:
(A X B)^2 = |A|^2|B|^2 = |A*B|^2

v = (w X r)
T = mv^2/2
  = m(w X r)^2/m
  = m(|w|^2|r|^2-|w*r|^2)

3. Triple products (scalar)
def: A * (B X C)

Using property of determinants, and row operations

A * (B X C) = | Ax Ay Az |
            = | Bx By Bz |
            = | Cx Cy Cz |

switching rows in the determinant gives us a negative sign

Produces a cyclic relationship
[...ABCAB...] = A * (B X C)
[...CBACB...] = A * (C X B)

#### Direction cosines
$$\begin{align}
  \cos \alpha &= \frac{A_x}{|A|} \\
  \cos \beta &= \frac{A_y}{|A|} \\
  \cos \gamma &= \frac{A_z}{|A|} \\
\end{align}$$

#### Scalar product
The scalar product between two vectors is defined as

$$\begin{align}
\vec u \cdot \vec v = \sum_i u_i v_i
\end{align}$$

#### Vector product
The vector product between two vectors in $\mathbb{R}^3$ is defined as

$$\begin{align}
  \vec u \times \vec v = \det \begin{vmatrix} i & j & k \\ u_x & u_y & u_z \\ v_x & v_y & v_z \end{vmatrix}
\end{align}$$

#### Ex:
Show that
$$\begin{align}
  (\vec A \times \vec B)^2 = |\vec A|^2 |\vec B|^2 - |\vec A \cdot \vec B|^2  
\end{align}$$

### Vector Calculus
Just as we can do calculus on real numbers, we can perform calculus operations on vectors

#### Differentiation of vectors
The derivative operator $\frac{d}{dx}$ can be applied to a vector as well. For example if the vector evolves in time,

$$\begin{align}
  \vec A &= \vec A(t)
\end{align}$$

We can define the time derivative as the time derivative of all of its components. 
