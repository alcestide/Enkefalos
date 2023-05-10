The expressive power of the class of [[Compound Procedures|procedures]] that we can define at this point is very limited, because we have no way to make tests and to perform different operations depending on the result of a test. For instance, we cannot define a procedure that computes the absolute value of a number by testing whether the number is positive, negative, or zero and taking different actions in the different cases according to the rule

$\frac{1}{1 \cdot 3}+\frac{1}{5 \cdot 7}+\frac{1}{9 \cdot 11}+...$

This construct is called a _case analysis_, and there is a special form in [[Programming Algorithms in Lisp|Lisp]] for notating such a case analysis. It is called cond (which stands for “conditional”), and it is used as follows:

```lisp
(define (abs x)  
  (cond ((> x 0) x)  
        ((= x 0) 0)  
        ((< x 0) (- x))))
```

The general form of a conditional expression is

$$
\begin{aligned}
(cond (<p_1> <e_1>) \\  
      (<p_2> <e_2>) \\
      ⋮  \\
      (<p_n> <e_n>)) \\
\end{aligned}
$$

consisting of the symbol cond followed by parenthesized pairs of expressions (<_p_> <_e_>) called _clauses_. The first expression in each pair is a _predicate_ – that is, an expression whose value is interpreted as either true or false.

Conditional expressions are evaluated as follows. The predicate <_p1_> is evaluated first. If its value is false, then <_p2_> is evaluated. If <_p2_>'s value is also false, then <_p3_> is evaluated. This process continues until a predicate is found whose value is true, in which case the interpreter returns the value of the corresponding _consequent expression_ <_e_> of the clause as the value of the conditional expression. If none of the <_p_>'s is found to be true, the value of the cond is undefined.

In addition to primitive predicates such as <, =, and >, there are logical composition operations, which enable us to construct compound predicates. The three most frequently used are these:

- $(and <e_1> ... <e_n>)$

The interpreter evaluates the expressions <_e_> one at a time, in left-to-right order. If any <_e_> evaluates to false, the value of the and expression is false, and the rest of the <_e_>'s are not evaluated. If all <_e_>'s evaluate to true values, the value of the and expression is the value of the last one.

-  $(or <e_1> ... <e_n>)$

The interpreter evaluates the expressions <_e_> one at a time, in left-to-right order. If any <_e_> evaluates to a true value, that value is returned as the value of the or expression, and the rest of the <_e_>'s are not evaluated. If all <_e_>'s evaluate to false, the value of the or expression is false.

- $(not <e>)$

The value of a not expression is true when the expression <_e_> evaluates to false, and false otherwise.