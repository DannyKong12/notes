# QIC 890 - Quntum Communication

## Lecture 1

#### What is communication of Data?
* Simplest scenario is the case with one "sender" and one "receiver"
* Alice (the sender) is given some input, and is allowed some set of operations with the receiver
* Bob (the receiver) after some operations with Alice, is expected to produce some output
* If the input and the output is the same, then we assume that this "data" is communicated from Alice to Bob

**An example:**

* Let the input be distributed on $\{ 0, 1 \}$ (if the message were fixed, there is no need to communicate, so there needs to be some sort of variability in the message)
* Some Rules
  1. Alive and bob are allowed some state, but must be independent on the value of the message $m$
  1. Only after the input is given to Alice can she make operations depending on the value of $m$
  1. Bob's operations cannot depend on $m$ explicitly, but is allowed to depend on data communicated from Alice.
* Bob's output ($m^\prime$) is also some random variable, we would like $m^\prime \approx m$. 

*Definition:* A noisy classical channel $N$ from Alice to Bob with input alphabet $X$ and output alphabet $Y$ is specified by $Pr(Y = y | X = x)$ for all possible $x, y$. 

TODO: basic communication protocol

*Definition:* The noiseless classical channel over $X$ has $X \subseteq Y$ and $Pr(Y = y | X = x) = \delta_{xy}$

Consider the example where Alice would like to communicate a classical message $m \in \{ 0, 1 \}$, they can use *once* a noiseless channel $N$ of $|X| = 2$, Alice can ocmmunicate $M$ to Bob by choosing channel input $x = m$. Alice and Bob can choose a suitable bijection from the sets $M, X, Y$. 

We think of the channel $N$ as a consumed resource in the above protocol, and also produces the resource in the ability to communicate $M$. 

#### Problem with Linearity

In the same example, the state $m$ given to Alice is converted to $x$, and produces $y$ which is given to Bob. We expect Bob then to decode $y$ to obtain $m$. Since this is true for every $m$, we can propose a sequence of state transformations that describes this.

$$\begin{align}
\sum p_m |m\rangle\langle m|_A &\rightarrow_{enc} \sum p_m |m\rangle\langle m|_X \\
&\rightarrow_N \sum p_m |m\rangle\langle m|_Y \\
&\rightarrow_{dec} \sum p_m |m\rangle\langle m|_B \\
\end{align}$$

This model keeps track of the density matrix state of our input and output, and verifies that they are the same. 

However, this isn't quite correct. Notice that the initial state is a maximally mixed state, and also the final state. Although the distribution appears to be "communicated", the value of the final line doesn't depend on the input, it simply represents a random mixture that could have been created without the input. Moreover, there is no way to check for correctness, since the symbols $m$ that Bob holds is not necessarily the same as the symbol that Alice holds.

One way we rectify this problem is to havea sort of referee, whom we call Richard. The referee may hold a copy of $m$ but is non-participating. We may update our sequence of state transformations with a referee holding a copy of the correct state

$$\begin{align}
\sum p_m |m\rangle\langle m|_A &\rightarrow_{enc} \sum p_m |m\rangle\langle m|_R \sum p_m |m\rangle\langle m|_X \\
&\rightarrow_N \sum p_m |m\rangle\langle m|_R \sum p_m |m\rangle\langle m|_Y \\
&\rightarrow_{dec} \sum p_m |m\rangle\langle m|_R \sum p_m |m\rangle\langle m|_B \\
\end{align}$$

This resolves our problem, explicitly imposes correctness as Bob must hold the same symbol as the referee. Without loss of generality we assume that the bases $B$ and $R$ are the same.

#### Quantum Data

In the quantum case, the state is some variable $s \in S$ some quantum state. The input is now a quantum system $S$ that is given to Alice (such as a spin or a photon, etc.) but is not given a description of the quantum data explicitly. Bob is now expected to produce an output system that has the same information, that is for each input $\rho$ on $S$, the output on $S^\prime$ from bob is also $\rho$ (or approximately so)

*Definition:* A *quantum* channel $N$ (sometimes $\eta$) from a d1-dim system $X$ to $d2-dim$ system $Y$ is a function from $d1 \times d1$ matrices to $d_2 \times d_2$ matrices that are linear, trace-preserving, and completely positive ($TPCP$, $Q$-ops, etc.)

*Definition:* A noiseless quantum channel $N$ on a d-dim ysstem is given by the identity map on $d \times d$ matrices (can also embed in an output space with dimension bigger than $d$). 


