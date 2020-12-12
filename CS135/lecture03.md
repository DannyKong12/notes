# CS 135

## Module 1

#### Scope in functions:
  * function parameters only apply within the brackets of _define_
  * An _abstraction_ using e.g. f and its parameters

#### Other uses of _define_:
  * e.g. _(define k 3)_ => defines k as the value 3
  * e.g. _(define p (* k k))_ => define p as the value of 3*3=9
  * __CONSTANT CANNOT BE REDEFINED__
  * if we tried _(define k 5)_ at this point, DrRacket would return an error
  *

#### Constants:
  * give meaningful names to specific values
  * improves readability
  * are not variables, and cannot be changed as such

#### Racket tools:
  * Stepper
    * step by step evaluation of your code
  * Check syntax

#### "Goals of this module":
  * understand basic syntax
  * what DrRacket might do when given a function that returns an error
  * Terms:
    * function
    * parameter
    * application
    * argument
    * constant
    * expression


## Module 2
### The design recipe
#### Programs as communication:
  * Every program is an act of communication
    * Between you and the computer
    * Between you and yourself in the future
    * Between you and others
  * __COMMENTS__
  * Comments are given by `';'`
```racket
;; a comment
;; define x to be the family size of Troy's family
(define x 3) ; this is a in-line comment
(define (f x y)
  (- x y))   ; this section does not get evaluated, e.g. (- 3 5)

```
#### Goals of software design
  * Does it work? Is it fast?
  * __THESE ARE NOT THE ONLY GOALS__
  * Programs should be:


Program Goals |  |  |
--- | --- | ---
compatible | __correct__ | durable
efficient | extendible | __*readable*__
reusable | scalable |

  * Five design recipe components
    * __*purpose*__
      * english language description of a function
      * what. it. does.
    * __*contract*__
      * formal description of inputs and outputs
      * consumes and produces
      * types of arguments
    * __examples__
      * demonstrates for possible values
      * typical uses
    * __definition__
      * header and body
      * "actual code"
    * __tests__
      * thorough evaluation of the function
      * boundary cases
      * typical cases
      * verifies your code
  * Order of execution
    * Write a draft of the purpose
    * Work out examples by hand
    * Write the header & contract
    * Finish contract with parameter names
    * Write definition body
    * Write tests
  * example

__Purpose__:
```Racket
;; (sum-of-squares p1 p2) produces the sum of the squares of p1 and p2
```
__Contract__:
```Racket
;; sum-of-squares: Num Num -> Num
```
or mathematically: sum-of-squares:
<dl><dt>&#8477, &#8477 -> &#8477 </dt></dl>

__Examples__:
```Racket
(check-expect (sum-of-squares  3 4) 25)
```  

__Header and body__:
```Racket
(define (sum-of-squares p1 p2)
  (+ (sqr p1) (sqr p2)))
```

__Tests__:
```Racket
(check-expect (sum-of-squares 0 0 ) 0)
(check-expect (sum-of-squares -2 7) 53)
```
