# CS 135

#### Tests
  * Use check-expect, looks for exact values
  * Use a good number of tests to thoroughly test your code

#### Contract
  * Maps inputs to outputs
  * requires:
    * includes additional restrictions besides the type
    * Allows you to control your inputs to ones that make sense

#### Check solutions

#### Boolean-valued functions
  * returns a boolean
  * binary boolean comparators:
    * =, <=, >=, >, <
    * notice not '==' but '=' because we use (define) in racket
    * >= and => is the same operation

#### Complex relationships
  * AND, OR, NOT operators
  * same as the typical boolean operators

#### Short circuiting
  * AND and OR are special forms, so not all of its arguments are evaluted all the time
  * (and false ____), (or true ____) both never evaluate the second expression
  * Should be used to handle errors, e.g. 0 division errors
  * (and (not (= x 0)) (= 5 (/ y x)))
  * NOT always evaluates its argument, and thus its blue

#### Predicates
  * Functions that return booleans
  * end with '?'
  * odd? even? integer? exact? zero? etc.
  * Can also build predicates

#### Symbols
  * denoted by ' e.g. 'blue
  * A sort of immutable string
  * symbol? checks if something is a symbol
  * symbol=? checks if two symbols are equal

#### Strings
  * "This is a string"
  * "it contains a space"
  * 'symbols 'cannot 'contain 'spaces
  * Lexicographical comparison
    * (string<? x y), (string>? x y)
    * (string<? "alpha" "bet") => true

#### General comparators
  * each data type has a comparator for its type, e.g.
    * string=?
    * symbol=?
  * general operator equal? takes any data types
  * do not overuse equal?
    * use the comparator specific to the data type
    * use equal? to avoid errors or when you cannot use a specific comparator
      or when you do not know the type of the comparator to use

#### Conditional Expressions
__Ex1:__ Absolute value
Absolute value of x
$$\begin{cases}
-x & x<0 \\
x & x\geq 0 \\
\end{cases}$$

```racket
(define (my-abs x)
  (cond
    [(< x 0) (- x)]  ;; notice that racket will short circuit the cond terms
    [(>= x 0) (x)])) ;; that do not return true
```

* Racket will also short circuit when any question evaluates to true
* as in racket cond statements are compound if/elif/else statements
* Questions are evaluated top to bottom
* as soon as one question is found to evaluate to true, no further questions are evaluated












&nbsp;

&nbsp;

&nbsp;

&nbsp;
