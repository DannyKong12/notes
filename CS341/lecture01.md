# CS341

### Analyzing Algorithms
#### Definitions
We define a *problem* to be a specification of an infinite set of inputs and corresponding (correct) outputs
*Some problems are actually finite but very large (see chess, rubik's cube, etc.)*

We define an *algorithm* to be a well defined computational procedure to go from any input to the corresponding output

We analyze algorithms by measuring the time and space used by the algorithm as a function of the input space, at least asymptotically

We use a *model of computation* to specify the elementary computations from which algorithms are built, and along with them a measure of time and space

#### Models of Computation
1. pseudo-code
  * Each line *should* take unit time step
  * With some cautions: some pseudo-code lines are problematic, e.g. reading in an array on one line, the number of time steps is not $1$
  * Integers can grow large, pseudo-code may not be easily implemented in real life if we have numbers that overflow on 32 or 64 bit numbers
1. bit cost
  * Example: computing $a * b$, the size of a number is the number of bits in binary ($\lfloor\log_2(a) \rfloor+1$)
  * Computing $a*b$ takes $O((\log a)(\log b))$ using the schoolbook method instead of 1 time step, can be improved with better algorithms
1. RAM model
  * abstracts assembly language
  * random access means we can access a memory location in one time step (not like Turing machine)
  * unit cost access is too powerful, same problems as pseudocode
  * bit cost is too weak
  * each memory location holds one word (assume the number of bits is $\Theta(\log n)$)
  * Compromises, because if something fits inside the word size, then we assume unit cost, but large numbers are supported as well (at additional cost)
1. Circuit family
  * abstracts hardware circuitry
1. Turing machine
  * abstracts human computer working with pencil and paper
1. Special purpose models
  * comparison model for sorting
  * arithmetic model

In this class, the word RAM model is used, (pseudo-code to represent algorithms, largely unit time step basic operations)

#### Running Time (Review)
We think of running time as a function that takes inputs and maps it to the number of time steps required to compute an algorithm. However, for the same problem size, we may encounter many different running times, we abstract this away by considering the worst-case running time for each problem size (sometimes average-case) and evaluate that function instead

We define worst case as the input for a given input size that maximizes running time
* Gives an absolute guarantee, no other inputs of the same size can take longer
* average case is typically harder to analyze and assumes a prior distribution, so worst-case is more general

#### Asymptotic Analysis of Algorithms
Let $T(n)$ be the worst-case running time of an algorithm as a function of input size $n$. We would like to express $T(n)$ in a way that is simple and meaningful, but also independent of the machine that your algorithm runs on. For instance, a machine releast tomorrow might be twice as fast as your machine, but doesn't make your program any better. However, there are running times that cannot be related by a constant factor. That is, even if your machine were $x$ times faster, there exist two algorithms that will not have comparable running times for large enough $n$. 

To describe this, we define Big $O$ notation.

Let $f(n)$ and $g(n)$ be two functions from $\mathbb{N}$ to $\mathbb{R}$. We say that $f(n) \in O(g(n))$ if there exists postive constants $c$ and $N$ such that for all $n > N$ we have that $f(n) \leq cg(n)$. 

This definition of notation gives us an upper bound. We also have definitions of big $\Omega$, big $\Theta$, which are our lower and tight bounds. "little" $o$ is the opposite of big $O$.

Big $O$ satisfies a few properties:
* Max property: $O(f(n) + g(n))$ is in $O(max(f, g))$
* Transitivity: $f(n) \in O(g(n))$ and $g(n) \in O(h(n))$ then $f(n) \in O(h(n))$

Some common run-time complexities:
* $\log n$ - binary search
* $n$ - find max
* $n \log n$ - comparison searching
* $n^2$ - insertion sort
* $n^3$ - naive matrix matmul
* $2^n$ - list subsets
* $n!$ - list all orderings
