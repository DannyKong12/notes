# CS 135
#### Lists
  * [17 32 16 4] is a list of numbers
  * [16 4] is also a list
  * [4] is still a list
  * a list of 1 number is 3 numbers followed by a list of 1 number
  * empty: a value a list with 0 items
  * cons: a function that consumes an item and produces a new longer list
  * first: consumes a nonempty list and produces the first item
  * empty?: pretty self explanatory doe
  * cons?: true if it is a valid cons value

#### Formally, what is a list
  ```racket
    list
      empty
      (cons value list)
  ```

#### Referencing list objects
  * we reference using first and rest
```racket
(define clst (cons 'Waterboys
                    (cons 'DaCapo
                           (cons 'Waterboys empty))))

(first clst)
=> 'Waterboys
(rest clst)
=> (cons 'DaCapo (cons 'Waterboys empty))
```
  * These functions require non-empty lists e.g.

```racket
(first empty)
=> Error
(rest empty)
=> Error
;; However

(first (cons 1 empty))
=> 1
(rest (cons 1 empty))
=> empty
```
