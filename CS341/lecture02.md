# CS341

### Reductions

Often you can use known algorithms to solve new problems, begin with an example

#### 2SUM

Given an array of numbers and $n$, the objective is to find two numbers in the array such that the sum equals $n$. 

We use an algorithm where we will reduce the problem to sorting the array then using a binary search on the sorted array for each element $m$ to search for $n-m$ in the array. The initial sort takes $O(n \log n)$ and the second piece requires $n$ searches of $\log n$ time each so our algorithm is $O(n \log n)$. 

Suppose instead of doing a binary search, we take two pointers $i$ and $j$ at the beginning and end of the array. If $A[i] + A[j]$ is larger than the target $n$, we decrement $j$ our final pointer, and if it is smaller we increment $i$. This gives us a runtime of $O(n)$ after the sorting procedure

#### 3SUM

Now consider the natural extension to 2SUM, which takes 3 numbers from the array instead of 2 to sum up to $n$. We can run 2SUM on $m-A[k]$ for each $k$ in the array, giving us $n$ calls to 2SUM.

A thorough analysis of the runtime complexity requires us to remember that 2SUM is $O(n\log n + n)$. Although there are $n$ calls to 2SUM, we only need to sort once, so the resulting time complexity is:

$$O(n\log n + n*n) = O(n\log n + n^2) = O(n^2)$$

Until 2014, this was the optimal solution, but this was recently shown to be false. 

### Divide and Conquer

Another programming paradigm is to break up problems into smaller problems. Typically, once we break the problem down, we still have to solve the smaller problem. It is helpful when the large problem and small problems are the same and differ only by the input size. The same algorithm that can be used on the larger problem can be used on the smaller one and problem is solved through recursion. Finally, the "conquer" part 

Examples:
* Binary search
* Sorting

Since these problems tend to have recursion, we would like to know the runtime, which are related by recurrences. 

#### Recursion Tree method
A natural method is to simply count the number of non recursive work done to do a problem. For example, given the recurrence relation for mergesort: $T(n) = 2T(n/2) + cn$ and $T(1) = 0$, we can calculate the total work. 

Assume $n$ is a power of $2$, we see that $T(n)$ requires $cn$ work, and produces two recursive calls to functions that do $cn/2$ work, which produces $4$ total calls to $cn/4$, and so on. We can look at the binary tree structure of the recursive calls, and note that each level does $cn$ work. The height of this binary tree is $\log n$ since after dividing by $2$ a $\log n$ number of times produces $1$. The total work is $cn\log n$. 

If we can't assume that $n$ is a power of $2$, the problem already becomes very complicated. The solution happens to be $T(n) = n \lceil \log n \rceil - 2^{\lceil \log n \rceil} + 1$. However if we just want an upper bound we can simply assume that the runtime is non-decreasing and just take the smallest power of 2 greater than $n$. 

#### Recurrence by Induction

Its possible to use the recurrence to prove a claim by induction

#### Master Theorem
We often get a relation in the form

$$T(n) = aT(n/b) + cn^k$$

With $a \geq 1$, $b > 1$, $c > 0$ and $k \geq 0$. The master theorem states

$$T(n) \in \left \{ \begin{array}{c c} \Theta(n^k) & a < b^k \\ \Theta(n^k\log n) & a = b^k \\ \Theta(n^{\log_b a}) & a > b^k \end{array} \right .$$

An intuition for the theorem is follows from our analysis of the recursion tree. Summing the layers of the tree, the first layer sums to $cn^k$, the second layer sums to $ac(n/b)^k$, and the third $a^2c(n/b^2)^k$, and so on. This sum is a geometric series, which converges to our result


