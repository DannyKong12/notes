# CS666

#### Goals of this course
* Through algorithmic techniques, explore several models of computation (deterministic, randomized, parallel, distributed, memory0efficient, online, interactive, etc.) 
* Expand understanding of analytic techniques, randomness, amortized analysis, NP complete problems

### Amortized Anlysis and Union Find

#### Amortized Analysis
* A first attempt at analyzing algorithms leads to "worst-case", "average-case", "best-case" complexity (per query)
* As an example, we may have some data structures, such as ordered arrays, hash tables, linked lists, etc. and find the search/insertion/deletion time in worst-case
* Typically, when given as a table we will see analysis as a worst-case per query or at least average-case per query
* In amortized analysis, one averages the total time required to perform a sequence of data-structure operations over all operations performed
  * Per query, some operations may have bad worst-case performance, but doesn't necessarily have bad performance overall
  * In the case that you are doing many searches but few insertions, certain data structures may be better even if their insertion time is worse, since their performance is better overall

#### Types of Amortized Analysis
* (aggregate analysis) Determine upper bound $T(n)$ on the total cost of a sequence of $n$ operations, amortized complexity is $T(n)/n$
* (accounting method) assign certain charges to each operation, if an operation is cheaper than the charge credit is given to be used later
* (potential energy method) one comes up with the "potential energy" of a data structure which maps the entire data structure state to a real number, like accounting method but for the data structure as a whole instead of assigning credit to each operation

#### Union Find
* Certain problems requires us to maintain/group distinct elements into a collection of disjoint sets
  * i.e. maintain components of a graph that are connected which keeps changing over time
* Union find requires two operations:
  * Given an input element $v$ from the universe of elements, we would like to output the set containing $v$
  * given two sets $A$, and $B$ from your current collection of sets, we would like to take the union of $A \cup B$ and it to the collection, and also remove $A$ and $B$

**Example:** Kruskal's minimum spanning tree algorithm
* Given a graph $G(V, E)$ and edge weights $w: E \rightarrow \mathbb{N}$, output spanning tree $T$ of minimum weight
* Procedure:
  1. sort the edges $e_1, ..., e_{|E|}$
  1. set $T \leftarrow \emptyset$
  1. for $i$ = $1, ..., |E|$:
    1. if endpoints of $e_i$ are in different connected components of $T$ (using two find operations on the endpoints)
      * $T \leftarrow T \cup \{ e_i \}$
      * Combine the connected components of $e_i$ (union operation)
  1. return $T$
* In this procedure, we don't really care about the worst case costs of the union/find operations, we care more about the total cost of all the unions and all the finds used in this algorithm (use amortized analysis)

#### Implementing Union Find
* $n$ is the number of elements, $m$ is the number of operations, so $m$ is the sum of the unions and finds
* $FIND(k)$ is the subroutine that finds the set containing $k$ out of the current collection of disjoint sets
* $UNION(A, B)$ removes $A, B$ from the current collection and adds $A \cup B$
  * In general we have more $FIND$ operations than $UNION$ operations, since $n - 1$ unions of a set with $n$ elements creates one remaining set
**Naive approach**:
* We can use an array of size $n$ to keep track of the set containing each of the elements that we have
  * A $FIND$ operation takes $O(1)$
  * A $UNION$ operation takes $O(|A| + |B|)$ ($\Theta(n)$ worst case)
* A small optimization can be made by taking $UNION$ to be $A = A + B$ since they are disjoint, so only the names of the smallest set are changed
* Using aggregate analysis
  * Look at the cost of all the $UNION$ operations, every time the set containing an element $i$ ($S[i]$) changes, the size of that set at least doubles, since changing means we have taken the union of the set $S[i]$ with a larger set, therefore the $UNION$ operation may change each $S[i]$ at most $\log(n)$ times
  * In our aggregate analysis method, we have a worst case of $O(\frac{n\log n} + 1)$
**Tree representation**
* The next step is based on the assumption that $FIND$ operations tend to be less common than $UNION$ operations, specifically we suppose that $m = o(n\log n)$.
  * We may represent each set as a tree, represented by its root and contains all the nodes in the tree
  * $FIND(k)$ walk up the tree from $k$ and output the node at the root
  * $UNION(A, B)$ link the trees by making the smaller tree's root point to the larger tree's root as its parent
**Path Compression**
* We realize that first of all we can no longer take the "smaller" tree during the $UNION$ step, since smaller is not well defined
  * i.e., shorter height vs. smaller elements, but both give a new problem which is that the tree is increasing in height
  * "compress" the path by flattening the tree on every $FIND$ operation, take $k$ and all of its direct parents and push them to the root
  * Now the height changes every $FIND$ operation, why don't we just do flatten after union?
    * Flatten only when necessary, to avoid doing extra work
    * There is no need to flatten a tall branch if it is never queried
  * Instead of comparing by height, we define the rank of the tree with root $r$, define $RANK(r)$ to be 0 for empty tree, and $max(r_1, r_2+1)$ for two roots when performing a $UNION$
    * This scheme allows us to increase the rank on every $UNION$, but also compare by rank
    * This is similar to taking the height of an *uncompressed* tree
**Analysis**
* Tarjan 75: The amortized cost per operation of union-find is $\Theta(\alpha(m, n))$ where $\alpha(m, n)$ is the inverse Ackerman function
* We will prove: a weaker amortized bound of $O(log*(n))$ using the accounting method
  * note: $\log^*(n) \equiv \text{argmin}_i(\log^{(i)}(n) \leq 1)$
  * The accounting method tells us to choose $\hat{c}_i$ such that $\sum \hat{c}_i \geq \sum c_i$ where $c_i$ is the actual cost of every operation
  * Claim: when an element $k$ is assigned a rank $RANK(k) = r$ then $k$ has at least $2^r$ descendants
    * Can prove by induction, if rank is $0$, then there is 1 element which is itself, but when rank is equal to $r+1$, then there was a union of two trees with $r_1 = r_2 = r$
    * Also we have that $rank(k) < rank(parent(k))$
    * We can also show that the number of vertices of rank $r$ is less than equal to $n/2^r$
  * divide vertices based on rank, a vertex of rank $r$ will be in the group indexed by $\log^*(r)$, with $\log^*(n)$ groups
  * The charge of each$FIND$ operation is increased by 1 for each vertex that is in the same group as it's parent
  * $UNION$ is 1 cost
  * The charging scheme for $FIND$ will always cover the actual cost of $FIND$ because either the node on the path or the operation $FIND$
