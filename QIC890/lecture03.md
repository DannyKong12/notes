# QIC890

### Composable Communication

Let $\Lambda$ be a comunication resource, and $\Pi$ be a protocol approximately creating the resource. We defined how good this approximation is in terms of the diamond norm, so we would like to look at why the diamond norm is a natural choice. 

Specifically, we will show that if $|| \Lambda - \Pi ||_{\meddiamond}$ then we have the property of composition

#### Composability

Suppose we have a protocol consuming $\Lambda$ as a resource. If $\Lambda \approx \Pi$ then replacing $\Lambda$ by $\Pi$ in the protocol then the new protocol is approximately equal to the one with $\Lambda$. 

*Proof Sketch*: Suppose we have protocol $P$ that consumes $\Lambda$, and we replace $\Lambda$ by $\Pi$ making a new protocol $P^\prime$. Then we have

$$\begin{align}
||P - P^\prime||_{\meddiamond} = max || I \otimes P (|\psi \rangle\langle \psi | - I \otimes P^\prime(|\psi\rangle\langle\psi|)||_t
\end{align}$$

In the protocol up until the point where $\Lambda$ is consumed, the protocol is exactly the same in both protocols. The global state $\sigma_{RW}$ must be the same across both protocols. The subsequent operations are also the same. Note that since the protocol after the substitution is also the same the final state is no more distinguishable than the state immediately after the substitution (*Note*: I believe this is a result from Niesen and Chuang). 

The important part of the proof is the following: Since $|| \Lambda - \Pi ||_{\meddiamond} < \epsilon$, then we have that for any state $\xi$ (i.e. the global state immediately before the $\Lambda$ step) the trace distance between $\Lambda(|\xi\rangle\langle\xi|)$ and $\Pi(|\xi\rangle\langle\xi|)$ must also be less than $\epsilon$. Combined with the fact that subsequent quantum operations may not increase the trace distance beween the states (TPCP maps are contractive) we have our proof.

### No-Signalling Principle

#### Locality of Quantum Mechanics
Consider a situation where Alice and Bob share a quantum state, Alice proceeds to make a measurement, on her system with outcome $k$. To Alice, the global state appears to change, but since Bob does not know the value of $k$, even though for each value of $k$ the global state looks different, if we take the weighted average of states for all $k$ we recover the original state. 

This example essentially shows that although it *appears* to an omniscient observer that something has changed the moment Alice makes a measurement, nothing is *communicated*. This is summarized by the no-signalling principle

> Alice cannot communicate 1 classical bit to Bob if no system physically moves from Alice to Bob

This statement is implied by the following
1. Without a system moving between Alice and Bob, their operations commute
2. Bob's state is well defined
  * Communication causes state change, if you can have a state change (without communication) then you don't have a valid, well defined state
3. Quantum Mechanics
  * Quantum mechanics is a more restricted setup
  * Similar to the example, any operation on Bob's side cannot be dependent on the input message

#### Consequences
1. No-signalling holds even if we allow unlimited amount of entanglement
  * Straightforward to see from viewpoint 3.
2. Cannot communicate 1 out of $s+t$ messages using a noiseles classical channel with input size $s$ even with unlimited entanglement for any integers $t, s$
  * Entanglement cannot "augment" a classical protocol
3. Cannot communicate a $s+t$ dimension system using a noiseless quantum channel with input dimension $s$, even with unlimited entanglement

*Note: 1. is sometimes referred to as no free lunch, 2. and 3. are sometimes referred to as no discounted lunch*

#### Proving the Consequences (C2)
Suppose we have a protocol that we suspect might be too good to be true, we can attempt to verify this by replacing the communication by a random guess of the message, and obtain a contradiction. 

Suppose the opposite of C2, suppose there exist $s, t$ and protocol $P$ such that we can communicate 1 out of $s+t$ messages using a noiseless classical channel consuming some state $|\psi\rangle$ and for all $m \in \{1, ..., s+t\}$, $m^\prime = m$. 

WLOG we can model this situation as the following:
1. The input $m$ is given to Alice, and upon receiving $m$ she may perform some arbitrary operation that ends in a classical message $b$ (so she performs a generalized measurement operation). 
1. She then sends $b$ to Bob through the channel
1. Bob performs a generalized measurement operation, and obtains the output message $m^\prime$. 

We will modify this protocol by removing the channel $N$. Instead of communicating, Alice does nothing in this step, and Bob randomly generates a message $b^\prime$ completely randomly in his own lab. Since $b$ is a message that may be any 1 of $s$ messages, with probability $1/s$ $b^\prime = b$ and $m^\prime = m$ . Since $m$ varies over $s+t$ values, $m$ and $m^\prime$ must not be independent, so there is a contradiction. This concludes the proof of C2

#### Proving the Consequences (C3)

Recall that because of Superdense Coding and Teleportation, $1 qbit = 2cbits$. 

Suppose there is a protocol $P$ approximating the identity map from $X_1$ to $X_2$ in diamond norm by consuming an $s$-dimentional noiseless quantum channel. We perform a very similar protocol as in he proof for C2. Alice performs some operations on her work qubits and produces a new state $Y_1$, which is sent over the channel. Upon arriving we change the name to $Y_2$ and Bob is allowed to use this state in addition to his own shared entanglement states. Finally, Bob produces $X_2$. 

This time, we make $P^\priem$ by replacing $N$ by using teleportation. We consume entanglement, and send 1 in $s^2$ classical messages and we teleport $Y_1$ into $Y_2$.

In the second step, we use the entire protocol (including the teleportation modification) to perform superdense coding. Recall that in superdense coding, we require the use of a quantum channel. Instead of the quantum channel, we use our protocol $P^\prime$ which sends 1 in $s^2$ messages. However, since $X_2$ has a dimension $s+t$, superdense coding allows us to communicate 1 out of $(s+t)^2$ classical messages, which violates no-signalling.


