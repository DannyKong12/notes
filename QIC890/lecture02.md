# QIC 890

#### Communication of Quantum Data (cont.)

*Definition:* The Diamond norm distance between two *channels* $N_1, N_1$ is given by

$|| N_1 - N_2 ||_{diamond} = max_{|\phi\rangle} || I \otimes N_1 (|\phi\rangle\langle) - I \otimes N_2 ( |\phi\rangle\langle |) ||_t$

Where the norm on the right hand side is given by the trace distance

With this definition, if a communication protocol approximates the noiseless channel from systems $S$ to $S^\prime$ to diamond norm less than some $\epsilon$, then for all systems on $RS$, the protocol yields a state on $RS^\prime$ with trace distance less than $\epsilon$ from $|\phi\rangle$. 

**Example 3** Alice can communicate 1 classical bit to Bob using a noiseless quantum channel $N$ on a 2-dim system

Alice prepares a $|0\rangle$ state, and upon given $m = 1$ performs Pauli-x on the system, and does nothing otherwise. Alice then uses a noiseless quantum channel to Bob, who measures along the computational basis. 

Such a protocol consumes one qbit, and creates 1 cbit. 

We may consider that the resource of 1 qbit is at least as large as the communication value of 1 classical bit. 

**Example 4** Alice and Bob can share the Bell pair $|\Phi\rangle = \frac{1}{\sqrt{2}} (|00\rangle + |11\rangle)$. 

Alice prepares the state in her own lab, and sends the second half of the state to Bob using a noiseless channel. Note that this assumes that the channel preserves entanglement

Similarly, "1 qbit $\geq$ 1 ebit"

**Example 5** Alice and Bob can perform Superdense Coding (Bennett-Wiesner 92)

Suppose Alice and Bob share bell pairs, then they can communicate 2 classical bits per entangled pair they share.

1 ebit + 1 qbit $\geq$ 2 cbits

#### Formalizing qbits and cbits

Choose a basis $\{ |x\rangle \}$ basis for $A$ and $B$. 

qbit: $\forall x |x\rangle_A \rightarrow_{U_N} |x\rangle_B|0\rangle_E$
* or equivalently, there is a definition in terms of density matrices
cbit: $\forall x |x\rangle_A \rightarrow |x\rangle_B |x\rangle_E$
cobit: $\forall x |x\rangle_A \rightarrow |x\rangle_B |x\rangle_{A^\prime} |0\rangle_E$ (Harrow 03)

In the "cobit" or coherent classical bit, the communication leaks no information, although it is classical

