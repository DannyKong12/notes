# CS666

#### Recap - Why Amortized Analysis?
* Evaluates *average* running time for a certain sequence of operations, which may have a better running time than the worst running time for each individual operation
* Data structures can have great amortized running time as subroutines for certain algorithms, even if certain operations have bad worst case times
* A few different methods of amortized analysis
  * Aggregate analysis
  * Accounting Method
  * Potential Method

#### Splay Trees
Binary trees are:
* Extremely useful data structures
* Worst case running time $\Theta(height)$
* *But* need a method of balancing height
* such as red-black trees, avl trees, etc.
Splay Trees:
* Don't need extra balance information, much easier to implement
* also easier to analyze?
* Splay trees have $\Theta(\log n)$ amortized cost operation, $\Theta(n)$ worst-case time
Main idea is to adjust the tree on access rather than to keep information in the tree itself

#### Implementation of Splay Trees
Naive idea: why don't we perform single rotations to move the searched note to the root
  *single rotation meaning we swap one node with one of its children*
However, this increases our amortized search cost of $\Omega(n)$. Instead, we describe new rotations (zig-zag, zig-zig, zigs)
Create the operation $SPLAY(k)$ with input $k$ and no output, but the state of the tree rebalances
* Rebalancing occurs when one of the 3 rotations is possible, and repeats until $k$ is at the root of the tree
Tree operations:
* $SEARCH(k)$ search for the element $k$ as usual, if it exists do $SPLAY(k)$
* $INSERT(k)$ perform standard insert, then do $SPLAY(k)$
* perform standard deletion, then do $SPLAY(Parent(k))$

#### Analysis
Using the potential method:
* Assign a potential function $\phi$ which is a mapping from the data structure to a real number
* the charge $\hat{c]$ of the $i$th operation with respect to the potential function is
  * $\hat{c} \equiv c_i + \phi(D_i)-\phi(D_{i-1})$
  * the amortized cost (sum) is just the difference in potential and the sum of the actual cost
The potential function we choose is as follows,
* $\delta(k) \equiv$ the number of descendants of $k$ (including k)
* The rank function $rank(k) \equiv \log(\delta(k))$
* Potential is given by the sum $\sum rank(k)$
The charge is upper bounded after a rotation by 3 times the difference in rank ($+1$ for a zig)
The total charge from the splay operation is the sum of the charges from the splay operations which is $1+3(rank(t)-rank(k))$
