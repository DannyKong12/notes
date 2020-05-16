# Math 128

#### MIDTERM
  * CHECK ODYSSEY FOR ROOM/SEAT
  * OCT 16, 5:30-6:50
  * Two past midterms available

#### Cylindrical Shells
  * Revolve a cylindrical shell with area $A(x)=2\pi r h$ and volume $V(x)=\int 2\pi r h dx$

__Ex1:__ The volume of the solid enclosed by the curves $x=y^2$ and $x=y+2$ about the line $y=-3$
Begin by finding the intersection points:
$$\begin{align}
y^2 &= y-2 \\
y^2 - y - 2 &= 0 \\
(y-2) (y+1) &= 0 \\
y &= -1, 2
\end{align}$$

$$\begin{align}
R &= y-(-3) \\
H &= y+2-y^2 \\
V &= \int_{-1}^2(y+3)(y+2-y^2)dx \\
&= 2\pi \int_{-1}^2 y^2+2y^3+3y+6-3y^2dy \\
&= 2\pi \int_{-1}^2 -y^3 -2y^2 + 5y + 6 dy \\
&= 2\pi\bigg[\frac{-y^4}{4}-\frac{2y^3}{3}+\frac{5y^2}{2}+6y\bigg]^2_{-1} \\
&= \frac{63\pi}{2}
\end{align}$$

To use the washer method in this case, there would be two regions with different functional bounds (recall dt's maniacal terrorizing triple integrals)

__Ex2:__ Rotated region bounded by $xy=1$, $x=0$, $y=3$, and about x-axis
$$\begin{align}
R &= y\\
H &= \frac{1}{y} \\
V &= \int_1^3 2πy\frac{1}{y}dy \\
&= \int_1^3 2πdy = 4π
\end{align}$$

__Ex3:__ Set up but not evaluate an integral for the volume of the solid obtained by rotating the region enclosed by $y=-4-2x$ ,$x=0$, $y=0$ about $x=-1$

a) cylindrical shells:
$$\begin{align}
R &= x+1 \\
H &= 4-2x \\
V &= \int_0^2 2π(x+1)(4-2x)dx
\end{align}$$

<br>
b) washer method

$$\begin{align}
V &= π\int (-\frac{y-4}{2}+1)^2 + 1 dy
V &=
\end{align}$$

| | Mostly Useful Chart | |
|---|---|---|
| | Washer method | Shells method |
|rotating about x| two horizontal looking functions| two vertical looking functions |
| rotating about y | two vertical looking | horizontal and vertical functions |

$$\begin{align}
\lessapprox
\end{align}$$
