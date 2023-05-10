A critical aspect of a programming language is the means it provides for using names to refer to computational objects. We say that the name identifies a _variable_ whose _value_ is the object. In Lisp, we can name things with `define` 

```lisp
(define size 2)
```

Once the name size has been associated with the number 2, we can refer to the value 2 by name:

```lisp
size  
2
(* 5 size)  
10
```

Define is our language's simplest [[The Elements of Programming|mean of abstraction]], for it allows us to use simple names to refer to the results of [[Compound Procedures|compound operations]].