_Procedure definitions_ are a powerful abstraction technique by which a compound operation can be given a name and then referred to as a unit.

We begin by examining how to express the idea of “squaring.” We might say, “To square something, multiply it by itself.” This is expressed in our language as

```lisp
(define (square x) (* x x))
```

We have here a _compound procedure_, which has been given the name square. The procedure represents the operation of multiplying something by itself. The thing to be multiplied is given a local name, x, which plays the same role that a pronoun plays in natural language. Evaluating the definition creates this compound procedure and associates it with the name square.

Having defined square, we can now use it:

```lisp
(square 21)  
441  
  
(square (+ 2 5))  
49 
  
(square (square 3))  
81
```

