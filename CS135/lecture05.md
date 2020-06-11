# CS 135

#### Cond statements continued
  * recall:
    * cond statements have list of questions and answers
    * Questions are evaluated top to bottom
    * breaks when a question evaluates to true
    * Answers are not evaluated until a

#### Else
  * Else forces a response to a list of questions
  * must be the last question in a cond statement

#### Helper functions
  * stop writing the same computation multiple times
  * make a helper function where it is called for different parameters
  * __generalize__ similar expressions
  * improves readability

### Module 3
#### Advantages of Racket
  * every expression in racket is either a value or an error
  * lexicographical specifications
    * What is the alphabet
    * Identifiers are used for constants, parameters, user-defined functions
  * Syntax
    * The way we have to say things
    * '?is This Sentence Syntactically Correct' <- wrong form, right characters
  * Semantics
    * 'trombones fly hungrily' <- no
  * Ambiguity
    * Sentences have exactly one possible meaning
    * code should be very precise

#### Grammars
  * english grammar
    \<sentence\> = \<subject\><verb\>\<object\>
  * Semantic model
    * evaluate inner-most expression left to right
  * Application of built-in functions
  * (f v1 ... vn) => v
  * 
