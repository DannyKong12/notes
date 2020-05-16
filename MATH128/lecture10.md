# Math 128
#### First Order Linear
* Has the form:  
  $\frac{dy}{dx}+P(x)y=Q(x)$
* Linear in y and $\frac{dy}{dx}$
* Multiplying everything by an integrating factor $I(x)$  
  $I(x)\frac{dy}{dx}+I(x)P(x)y=I(x)Q(x)$
* Rearrange the equation such that LHS becomes:  
  $\frac{d}{dx}(I(x)y)=I \frac{dy}{dx}+I^\prime \frac{dy}{dx}$
* We identify $I^\prime(x)=I(x)P(x)$
* Let $I^\prime(x)=\frac{dI}{dx}$
$$\begin{align}
\frac{dI}{dx}&=I(x)P(x) \\
\int \frac{1}{I} dI &= \int P(x) dx \\
ln\bigg|I\bigg|&=\int P(x)dx+C \\
I&=e^{\int P(x)dx}
\end{align}$$
Note the reason we don't have an integration constant $+C$ that gives us a factor A at the beginning of the solution. Multiplying the original ODE by $I$ gives us $Ae^{\int Pdx}$ for each term, and A will always cancel out.

$$\begin{align}
\frac{dy}{dx}+P(x)y&=Q(x) \text{, multiply each term by I(x)} \\
I(x)\frac{dy}{dx}+I(x)P(x)y&=I(x)Q(x) \text{, this becomes: }\\
\frac{d}{dx}(I(x)y)&=I(x)Q(x) \\
I(x)y&=\int I(x)P(x)dx \\
y&=\frac{1}{I(x)}\int I(x)Q(x)dx \\
\end{align}$$  
__This becomes our general solution for this type of ODE__

__Ex1:__
$$\begin{align}
\frac{y^\prime}{2}+\frac{y}{x}&=\frac{\cos(x)}{x^2} \\
\frac{dy}{dx}+\frac{2}{x}y&=\frac{2\cos(x)}{x} \text{, $P(x)=\frac{2}{x}$, $Q(x)=\frac{2}{x^2}$}\\
I(x)&=e^{\int Pdx} \\
&= e^{\int \frac{2}{x}dx}\\
&= e^{2ln|x|} \\
&= x^2 \text{, since $x^2$ is always $\geq 0$}
I(x)y&=\int I(x)Q(x)\\
y&=\frac{1}{x^2}\int 2cos(x) dx\\
y&=\frac{2\sin(x)}{x^2}+\frac{C}{x^2}
\end{align}$$

__Ex2:__
$$\begin{align}
(x^2-1)\frac{dy}{dx}+2xy &=x \\
\frac{dy}{dx}+\frac{2x}{(x^2-1)}y&=\frac{x}{(x^2-1)}\\
I(x)&=e^{\int Pdx}\\
&= e^{\int \frac{2x}{x^2-1}} \\
&= e^{ln|x^2-1|} \\
&= x^2-1\\
y&=\frac{1}{I(x)}\int P(x)Q(x)dx \\
y&=\frac{1}{x^2-1}\int (x^2-1) \frac{x}{x^2-1} \\
y&=\frac{x^2}{2(x^2-1)}+\frac{C}{x^2-1}
\end{align}$$

Note here the absolute value sign can be dropped in $I(x)=\bigg|x^2-1\bigg|$ because $I$ is again multiplied by every term, and therefore the sign will be dropped each time, thus we can choose the sign knowing it will be dropped.

__Ex3:__ Mixing Tank

A tank initially contains 60L of pure water, 0.1Kg/L of Kool-Aid enters the tank 2L/min and a well mixed solution exits at 3L/min. Solve this IVP for y(t) and find the max concentration of Kool-Aid in the tank.

$\frac{dy}{dt}$ becomes the change in concentration of the Kool-Aid in the tank at any time  

$\frac{dy}{dt} = c_{in}r_{in}-c_{out}r_{out}$

The volume is changing with $\frac{dV}{dt} = r_{in}-r_{out}$

$V(t)=(r_{in}-r_{out}+V_0)$

$$\begin{align}
\frac{dy}{dt}&=c_{in}r_{in}-\frac{y(t)}{(r_{in}-r_{out})t+V_0}r_{out}\\
\frac{dy}{dt}&=0.2-\frac{3y(t)}{-t+60}\\
\frac{dy}{dt}&=0.2-\frac{3}{60-t}y(t)\\
\frac{dy}{dt}+\frac{3}{60-t}y&=0.2\\
I(t)&=e^{\int \frac{3}{60-t}}\\
&=e^{-ln|60-t|^{-3}}\\
&=(60-t)^{-3}\\
y&=(60-t)^3\int \frac{0.2}{(60-t)^3}dt\\
y&=0.1(60-t)+C(60-t)^3 \text{, $0 \leq t \leq 60$}
\end{align}$$

Initial Value Problem
$$\begin{align}
y(0)&=0\\
0&=0.1(60)+C(60^3)\\
y&=0.1(60-t)-\frac{0.1}{(60)^2}(60-t)^3\\
\end{align}$$

Max Concentration
$$\begin{align}
C&=\frac{y(t)}{V(t)} \\
&=0.1-\frac{0.1}{60^2}(60-t)^2 \\
\text{C is at a maximum when $lim_{t \to 60}$}
\end{align}$$
