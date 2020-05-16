# Math 128
## Trigonometric Integrals

#### How do we evaluate integrals of the form?

$$\begin{align}
\int \sin^n(x) \cos^m(x) dx \\
\int \tan^n(x) \sec^m(x) dx
\end{align}$$

#### Useful Trig Identities
$$\begin{align*}
\cos^2(x)+\sin^2(x)=1 \\
\tan^2(x)+1=\sec^2(x) \\
\end{align*}$$
$$\begin{align*}
\int\sec(x)dx = \ln|sec(x)+\tan(x)|+C
\end{align*}$$

Reduction formula for $\int \sec^n(x)dx$
$$\begin{align}
\int \sec^n(x)dx = \frac{\tan(x)sec^{n-2}(x)}{n-1}+\frac{n=2}{n-1}\int\sec^{n-2}xdx
\end{align}$$


##### Cases of the form $\int \sin^m(x) \cos^n(x) dx$
__Case 1:__ If m is odd, let $m=2k+1$:
$$\begin{align}
\int \sin^n(x) \cos^m(x) dx  
&=\int \sin^{2k+1}(x) \cos^n(x) dx \\  
&=\int (1-\cos(x))^{k}\cos^n(x) \sin(x) dx
\end{align}$$
__Ex1:__  
$$\begin{align}
\int \sin^3(x)\cos^{5000}(x)dx
&= \int \sin^2(x)\sin(x)\cos^{5000}(x)dx \\
&= \int (1-\cos^2(x))\sin(x)\cos^{5000}(x)dx \\
&= \int (\cos^{5000}(x)-\cos^{5002}(x))\sin(x)dx \\
\end{align}$$
If $U=\cos(x)$, $dU=\sin(x)dx$  
$$\begin{align}
&= \int -U^{5000}+U^{5002}dU \\
&= \frac{-U^{5001}}{5001}+\frac{U^{5003}}{5003}\\
&= \frac{-cos^{5001}(x)}{5001}+\frac{cos^{5003}(x)}{5003}\\
\end{align}$$
__Case 2:__ If n is odd, let $n=2k+1$
$$\begin{align}
\int \sin^m(x) \cos^n(x) dx
&= \int \sin^m(x) \cos^{2k+1}(x) dx \\
&= \int \sin^m(x) \cos^{2k}(x)\cos(x) dx \\
&= \int \sin^m(x) (1-\sin^{k})(x)\cos(x) dx \\
\end{align}$$

__Ex2:__
$$\begin{align}
\int\frac{cos^5(\theta)}{\sqrt{sin(\theta)}}d\theta
&=\int \sin^{-\frac{1}{2}}(\theta) \cos^4(\theta)\cos(\theta) d\theta \\
&=\int \sin^{-\frac{1}{2}}(\theta) (1-\sin^2(\theta))^2\cos(\theta) d\theta
\end{align}$$

__Case 3:__ if m and n are both even (includes $m, n = 0$)  
USE HALF ANGLE FORMULAS:
\[ \sin^2(x)=\frac{1}{2}(1-\cos(2x))\]
\[ \cos^2(x)=\frac{1}{2}(1+\cos(2x))\]
\[ \sin(x)\cos(x)=\frac{1}{2}\sin(2x)\]

__Ex2:__
$$\begin{align}
\int \cos^2(x) dx
&= \int \frac{1}{2} (1+\cos(2x)) dx \\
&= \frac{1}{2}\int 1+\cos(2x) dx \\
&= \frac{1}{2}x + \frac{1}{4}\sin(2x) +C \\
\end{align}$$
__Ex3:__
$$\begin{align}
&=\int(\cos(x)\sin(x))^2dx \\
&=\int(\frac{1}{2}\sin(2x))^2dx \\
&=\frac{1}{4}\int(\sin^2(2x))dx \\
&=\frac{1}{8}\int(1-\cos(4x))dx \\
&= \frac{1}{8}x-\frac{1}{32}\sin(4x) + C
\end{align}$$


#### Integrals of the form $\int tan^m(x)sec^n(x)dx$
__Case 1:__ if M is ODD  
Keep a factor of $\sec(x)\tan(x)$, and let $U=\sec(x)$  
$$\begin{align}
\int \tan^{2k+1}(x)\sec^n(x)dx
&= \int \tan^{2k}(x)\sec^{n-1}(x)\sec(x)\tan(x)dx \\
&= \int (\sec^2(x)-1)^{k}(x)\sec^{n-1}(x)\sec(x)\tan(x)dx
\end{align}$$
__Ex5:__ $\int \tan^3(x)\sec^3(x) dx$
$$\begin{align}
&=\int\tan^2(x)\sec^2(x)\sec(x)\tan(x)dx \\
&=\int(\sec^2(x)-1)\sec^2(x)\sec(x)\tan(x)dx \\
&=\int(\sec^4(x)-sec^2(x))\sec(x)\tan(x)dx \\
&= \int U^4-U^2 dU  \\
&= \frac{U^5}{5}-\frac{U^3}{3}  \\
&= \frac{\sec^5(x)}{5}-\frac{\sec^3(x)}{3}  \\
\end{align}$$

__Case 2:__ if n is EVEN  
Keep one factor of $\sec^2(x)$ and use $U=\tan(x)$
$$\begin{align}
&= \int \tan^{m}(x)\sec^{2k}(x)dx \\
&= \int \tan^{m}(x)\sec^{2k-2}(x)\sec^2(x)dx \\
&= \int \tan^{m}(x)(1-\tan^2(x))^{k-1}\sec^2(x)dx \\
\end{align}$$

__Ex6:__ $\int\tan^2(x)\sec^4(x)dx$
$$\begin{align}
&= \int\tan^2(x)\sec^2(x)\sec^2(x)dx \\
&= \int\tan^2(x)(1+tan^2(x))\sec^2(x)dx \\
&= \int\tan^2(x)+\tan^4(x))\sec^2(x)dx \\
\end{align}$$

__Case 3:__ if M is even and N is odd  

__Exercise:__ show that $\int\sec^3(x)dx=\frac{1}{2}\sec(x)\tan(x)+\frac{1}{2}\ln|\sec(x)+\tan(x)|+C$

#### For integrals of the form:  
$\int \sin(mx)\cos(nx)dx$  
$\int \sin(mx)\sin(nx)dx$  
$\int \cos(mx)\cos(nx)dx$  

Identities  
  * $\sin(A)\cos(B)=\frac{1}{2}(\sin(A-B)+\sin(A+B))$
  * $\sin(A)\sin(B)=\frac{1}{2}(\cos(A-B)-\cos(A+B))$
  * $\cos(A)\cos(B)=\frac{1}{2}(\cos(A-B)+\cos(A+B))$

__Ex7:__ $\int \sin(4x)\cos(5x)dx$
$$\begin{align}
\int \sin(4x)\cos(5x)dx &= \frac{1}{2}\int \sin(-x)+sin(9x) dx \\
&= \frac{1}{2}\int -\sin(x)+sin(9x) dx \\
&= \frac{1}{2}cos(x)-\frac{1}{18}sin(9x) dx
\end{align}$$
