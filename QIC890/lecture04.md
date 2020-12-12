# QIC890

### Superdense Coding and Teleportation

If entanglement is free, the communication protocols superdense coding and teleportation are inverses of one another, in the sense that the resources required/produced are opposites.

#### Optimality of Teleportation
Any method to communicate one qubit using unlimited entanglement must send at list 2 cbits. Even further, if we send a $d$ dimensional system, we must send no less than $2\log(d)$ classical bits (no economies of scale). 

*Proof*: Suppose there is a protocol $T$ that communicates a qubit by sending $c < 2$ classical bits. If we use $T$ to be the protocol that communicates one qubit. Such a protocol communicates $2$ classical bits while sending $c < 2$ classical bits, which violates C2. 

#### Optimality of Superdense Coding

*Proof*: We can prove this in the same manner as Teleportation. 

### Cobits

Recall the definition of a cobit of communication, aka $\forall x |x\rangle_A \rightarrow |x\rangle_B|x\rangle_{A^\prime}|0\rangle$. 

The Cobit is involved in a few resource inequalities:

$$qbit \geq cobit \geq cbit$$

and 

$$cobit \geq ebit$$

However, suppose that ebits are not free. Then SD and TP convert between 1 qbit + 1 ebit and 2 qbits. We will define a basis change $|\alpha\rangle \mapsto (\sigma_\alpha \otimes I |\Phi\rangle$ where $\alpha \in \{0,1,2,3\}$. We use this to modify SD. Presented as a sequence of state transformations: 

$$\begin{align}
|\Psi\rangle &= |\alpha\rangle_A \frac{1}{\sqrt{2}}(|00\rangle+|11\rangle)_{AB} \\
&\mapsto |\alpha\rangle_A\left[(\sigma_\alpha \otimes I)\frac{1}{\sqrt{2}}(|00\rangle+|11\rangle)_{AB}\right] \\
&\mapsto |\alpha\rangle_A\left[(\sigma_\alpha \otimes I)\frac{1}{\sqrt{2}}(|00\rangle+|11\rangle)_{CB}\right] \\
&\mapsto |\alpha\rangle_A|\alpha\rangle_B
\end{align}$$



