# Math 128

#### Trigonometric Substitutions
  * instead of $U=f(x)$, we choose $U=f(\theta)$ where $f$ is a trig. function
  * leads to good simplifications
  * Strategies:

Expression |Substitution  |Restriction  |Reason
--- | --- | --- |---
$a^2-x^2$ | $a=sin(\theta)$ | $-\frac{\pi}{2}\leq\theta\leq\frac{\pi}{2}$ | $1-\sin^2(x)=\cos^2(x)$
$a^2+b^2$ | $x=a\tan(x)$ | $-\frac{\pi}{2}\leq\theta\leq\frac{\pi}{2}$ | $1+\tan^2(x)=\sec^2(x)$

  * May require simplifications first
  * Be aware of restrictions on \theta
  * _WILL TEST YOUR TRIG SKILLS kill me now_
  *

__Ex1:__ $\int \frac{1}{1+x^2}dx$
$$\begin{align}
\int \frac{1}{1+x^2}dx &= \int \frac{1}{1+\tan^2(\theta)} \sec^2(\theta)d\theta \\
&= \int 1 d\theta \\
&= \theta +C \\
&= \arctan(x) +C
\end{align}$$

__Ex2:__ $\int\sqrt{1-x^2}dx$

$$\begin{align}
\int\sqrt{1-x^2}dx &= \int \sqrt{1-\sin^2(\theta)}d\theta \\
&= \int \sqrt{\cos^2(\theta)}\cos(\theta)d\theta \\
&= \int |\cos(\theta)|\cos(\theta) d\theta, \cos(\theta) \\
&= \int \cos^2(\theta) d\theta \\
&= \frac{1}{2} \int 1+\cos(2\theta)d\theta \\
&= \frac{1}{2}\theta + \frac{1}{4}\sin(2\theta)+C \\
\end{align}$$
Draw a triangle, find $\sin(\theta)$, $\theta$, and $\cos(\theta)$ for $\sin(2\theta)$

should equal:
$$ \frac{1}{2}x \sqrt{1-x^2}+\frac{1}{2}\arcsin(x)+C$$

__Ex3:__ $\int\sqrt{3-2x-2x^2}dx$
$$\begin{align}
\int\sqrt{3-2x-x^2}dx &= ??? && \text{Complete the square} \\
3-2x-x^2 &= 3-(x^2+2x) \\
&= 3-(x^2+2x+1-1) \\
&= 3-((x+1)^2-1) \\
&=4-(x+1^2)
\end{align}$$

$$\begin{align}
\int\sqrt{3-2x-x^2}dx &= \sqrt{4-(x+1)^2} dx \\
&= \int \sqrt{4-(x+1)^2} dx \\
&= \int \sqrt(4-4sin^2(\theta)) d\theta \\
&= 4\int \sqrt(1-\sin^2(x))\cos(\theta)d\theta \\
&= 4\int \sqrt(\cos(\theta))\cos(\theta)d\theta \\
&= 4\int |\cos(\theta)|\cos(\theta)d\theta \\
&= 4\int \cos^2(\theta) d\theta \\
&= 2\int \cos(2\theta)+1 d\theta \\
&= \sin(\theta)+2\sin(\theta)+C
\end{align}$$

Draw triangle  
$$\begin{align}
\int\sqrt{3-2x-x^2}dx &= \frac{x+1}{2}\sqrt{4-(x+1)^2}+2\arcsin(\frac{x+1}{2})+C
\end{align}$$

__Ex4:__ $\frac{\sqrt{x^2-25}{x}}dx$  
Let $x=5\sec(\theta)$, $dx = 5\sec(\theta)\tan(\theta)d\theta$
$$\begin{align}
\frac{\sqrt{x^2-25}{x}}dx &= \int \frac{25\sin^2(\theta)-25}{5\sec(\theta)}{5\sec(\theta)\tan(\theta)}d\theta \\
&= 5\int \sqrt{\sec^(\theta)-1}\tan(\theta)d\theta \\
&= 5\int \sqrt{\tan^2(\theta)}\tan{\theta}d\theta \\
&= 5\int |\tan(\theta)|\tan(\theta)d\theta && \text{tan positive on interval} \\
&= 5\int \tan^2(\theta) d\theta \\
&= 5\int \sec^2(\theta)-1 d\theta \\
&= 5\tan(\theta)-5\theta +C \\
\end{align}$$

&nbsp;

&nbsp;


$$ \frac{\sqrt{x^2-25}{x}}dx = \sqrt{x^2-25}-5\arccos(\frac{5}{x})$$





&nbsp;

&nbsp;

&nbsp;
