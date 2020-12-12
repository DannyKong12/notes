# CS666

### Hardness of Approximation

#### Why Study Hardness of Approximation?
* Even before we formally knew about NP, we were already noticing that certain combinatorial problems were much harder to solve than others
* Many early problems came in the form of combinatorial optimization
* Saw the same question that we have, what do we do when we see such a hard problem?
  * Design algoritm which is efficient on "most" instances and always gives us the exact/best answer
  * Design (always) efficient algorithm, but only finds suboptimal algorithms
  * For $\alpha \geq 1$, an algorithm is $\alpha$-approximate for a minimization problem if on every input instance the algorithm finds solution with cost $\leq \alpha \cdot OPT$
  * But, there are some approximations that are too good to be true. Having an $\alpha$-approximation is essentially the same as exactly solving the problem
* The point of hardness of approximation is to discover the limits of approximation algorithms

#### Proving Hardness of Approximation
* A "reduction" in the sense of NP-completness for example:
  * Maps every *YES* instance of *L* to a *YES* instance of *C*
  * Maps every *NO* instance of *L* to a *NO* instance of *C*
* A hardness of approximation reduction requires more robustness
  * Maps *YES* for every instance of *L* to a *YES* instance of *C*
  * Maps *NO* instance of *L* to a *VERY-MUCH-NO* instance of *C*
* i.e. in the *CLIQUE* problem, a *NO* instance maps to a graph with a max clique size much less than $k$ (say, $k/3$)
*  The robust approximation allows us to reduce a problem to a different problem with lax requirements. Suppose we reduce $SAT$ to $CLIQUE$, then we take a $YES$ instance of $SAT$ to a graph with clique of size $k$, we find this with our approximation algorithm to be greater than $k/2$. If we map a $NO$ instance, then our approximation algorithm finds a clique with small size (less than $k/3$). If we have a 2-approximation algorithm for *MAX-CLIQUE*, then we can solve $SAT$. 

#### Traveling Salesman Problem
* We k now that General TSP without repetitions *TSP-NR*
  * If $P \neq NP$ then there is no poly-time constant-approximation algorithm for General *TSP-NR*
  * more generally, if there is any function $r: \mathbb{N} \rightarrow \mathbb{N}$ such that $r(n)$ is computable in polynomial time then it is hard to $r(n)$-approximate General *TSP-NR* if we assume that $P \neq NP$
* We can prove this by reducing to Hamiltonian Cycle

**Hamiltonian Cycle Problem**: Given a graph $G(V, E)$ decide whether there exists a cycle which passes through every vertex at most once
1. If we had an algorithm $M$ which solved the $\alpha$-approximate *TSP-NR* problem, then
  * From graph $G$, construct a weighted graph $H(V, F, w)$ such that all edges $\{u, v\}$ \in $F$
  * $w(u, v) = 1$ if $\{ u, v\} \in E$, $(1+\alpha)*|V|$ otherwise
2. If $G$ has a Hamiltonian cycle, then $OPT$ for *TSP* has value $\leq |V|$
3. If there does not exist a Hamiltonian Cycle, then *TSP* has optimal value greater than $(1+\alpha) \cdot |V|$, since it must use an edge that is not in $E$. 
4. Thus $M$ will output a Hamiltonian cycle of $G$ if $G$ has one or output a solution with value $\geq (1+\alpha)\cdot|V|$
* Some additional intuition for this proof is to consider the region of solutions that exist for *TSP-NR*, there is an optimal value in the region, but everything that is $\alpha\cdotOPT$ is empty by construction of our graph. All other solutions have value much greater than $\alpha \cdot OPT$, so we can easily tell the difference. 

#### Proofs & Hardness of Approximatioon
Recall some important complexity classes
* **NP**: The set of languages $L \subseteq \{ 0, 1\}^*$ such that there exists a poly-time Turing Machine $V$ with one input such that $x \in L \iff \exists w \in \{0, 1\}^{poly(|x|)} s.t. V(x, w) = 1$, i.e. a *YES* instance has a polynomial time verifier
* **BPP**: The set of langages $L \subseteq \{ 0, 1 \}^*$ such that there exists a poly-time Turing machine $M$ such that $x \in L \iff \Pr_{R\in \{ 0, 1}^{poly(|x|)}} [M(x, R) = 1] \geq 2/3$, i.e. using some polynomially bounded randomness, the probability that $M$ accepts is greater than $2/3$
* **RP**: The set of languages $L \subseteq \{ 0, 1 \}^*$ such that there exists a poly-time Turing machine $M$ such that:
  * $x \in L \implies \Pr_{R\in \{ 0, 1}^{poly(|x|)}} [M(x, R) = 1] \geq 2/3$ 
  * $x \notin L \implies \Pr_{R\in \{ 0, 1}^{poly(|x|)}} [M(x, R) = 1] = 0$ 
* **co-RP**: The set of languages $L \subseteq \{ 0, 1 \}^* s.t. \bar L \in RP$

#### Proof Systems
* Prover and Verifier agree on the following:
  * The prover must provide proofsi n a certain format
  * The verifier can use algorithms from a certain complexity class for verification
* A statement is given to both the prover and the verifier (for instance "Graph $G(V,E)$ has a Hamiltonian Cycle")
* *NP* as a proof system: $L \subseteq \{ 0, 1\}^n$ is the language, and verifier can use a poly-time turing machine, the witness is the proof

#### Interactive Proofs
($P$, $V$) is an interactive proof system, where 
* $V$ is a randomized polynomial time algorithm
* and there is an honest prover $P$ that is all powerful
* for any $x \in \{ 0, 1 \}^*$
  * $x \in L \implies$ for an honest prover $P$, we always accept
  * if $x \notin L \implies$ for any prover $P^\prime$, we accept w.p. $\leq 1/2$

#### Probabilistic Proof Systems
* Given a language $L$, $x \in L \implies$ there exists a proof $w$ such that $\Pr[V(x, w) = 1] = 1$, and $x \notin L \implies$ for any proof $w$, we have $\Pr[V(x, w) = 1 \leq 1/2$
* $V$ i a verifier that runs in polynomial time
* $PCP[r(n), q(n)]$ consists of all languages $L \in PCP$ such that on an input of length $n$, we use $O(r(n))$ random bits and check $O(q(n))$ bits of a proof $w$ to verify
* Theorem (PCP theorem [AS'98. ALMSS'98]): $PCP[\log n, 1] = NP$

#### PCP and Approximability of MAX-SAT
* The PCP theorem implies that there is an $\epsilon \geq 0$ such that there is no polynomial time $(1+\epsilon)$-approximation algorithm for *MAX-3SAT*, unless $P = NP$
* Moreover if *MAX-3SAT* is hard to approximate within a factor of $(1+\epsilon)$, then the *PCP* theorem holds.
**Proof**: 

Reverse direction is an exercise

Assume the PCP theorem holds, then we have a PCP verifier $V$. Given an instance $x$ of problem $L$, construct $3CNF$ formula $\psi_x$ with $m$ clauses such that for some $\epsilon$ we have
  * $x \in L \implies \psi_x_x$ is satisfiable
  * $x \notin L \implies$ no assignment satisfies more than $(1-\epsilon)\cdot m$ clauses of $\psi_x$

Enumerate all random inputs $R$ for the verifier $V$
  * Length of each string is $O(\log(n))$, so the number of random inputs is $poly(n)$. For each $R$, $V$ chooses $q$ positions and a boolean function $f_R: \{0, 1\}^r \rightarrow \{0, 1 \}$ and accepts iff $f_R(w_{r_1}, w_{r_q}) = 1$ i.e. $V$ checks the proof $w$ at $q$ positions.

Now, we have $poly(n)$ number of functions, we can simulate the computation of $f_R$ with a CNF of size $2^q$, convert into a 3CNF or size $q2^q$. We then put together all the 3CNFs we constructed together and call it $\psi_x$. If $x \in L$, there is a witness such that $V(x, w)$ accepts for every random string $R$, so $\psi_x$ is satisfiable. 

If $x \notin L$, then the verifier says $NO$ for half of the random strings $R$, that means for at least one of the clauses constructed per string will fail. In $\psi_x$, $1/2q2^q$ will fail. 



