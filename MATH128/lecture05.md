# Math 128

#### Parametric curves
* Recall that parametric curves are defined as  
$x=x(t), y=y(t)$


##### Horizontal and vertical tangents  
Horizontal Tangent:
$$\begin{align}
\frac{dy}{dt} &\neq 0 \text{, and} \\
\frac{dx}{dt} &= 0
\end{align}$$

Vertical Tangent:
$$\begin{align}
\frac{dy}{dt} &= 0 \text{, and} \\
\frac{dx}{dt} &\neq 0
\end{align}$$

__Ex1:__
$$\begin{align}
x(\theta)&=r(\theta-\sin\theta)\\ y(\theta)&=r(\theta-\cos\theta)\\
\frac{dy}{dx}&=r(1-\cos\theta)
\end{align}$$

$\frac{dy}{d\theta}=0$ when $sin\theta=0$  
$\frac{dx}{d\theta}=0$ when $cos\theta=1$  

__Ex2:__  
Find the tangent lines to
$x(t) = t^5-4x^3$, $y(t)=t^2$ at (0,4)
<br>
<br>
_parametric curves can cross the same point multiple times_

$$\begin{align}
\frac{dx}{dt} &= 5t^4-12t^2 \\
\frac{dy}{dt} &= 2t \\
\frac{dy}{dx} &= \frac{\frac{dy}{dt}}{\frac{dx}{dt}} \\
&= \frac{2}{5t^3-12t}\\
\end{align}$$

Solve for y=0, e.g. $y=t^2$ when $y=4$, $t=\pm 2$  
plug in t to $\frac{dy}{dx}$ to find slopes

#### Parametric Area
* $\int y(t)x^\prime(t)dt$

#### Parametric Area
