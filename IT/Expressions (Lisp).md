One easy way to get started at programming is to examine some typical interactions with an interpreter for the Scheme dialect of Lisp. Imagine that you are sitting at a computer terminal. You type an _[[Mathematics/Mathematics|expression]]_, and the interpreter responds by displaying the result of its _evaluating_ that expression.

One kind of primitive expression you might type is a number. (More precisely, the expression that you type consists of the numerals that represent the number in base 10.) If you present Lisp with a number 

```lisp
486
```

the interpreter will respond by printing 486. Expressions representing numbers may be combined with an expression representing a primitive procedure (such as + or * ) to form a compound expression that represents the application of the procedure of those numbers. 

```lisp
(+ 137 349)  
486  
(- 1000 334)  
666  
(* 5 99)  
495  
(/ 10 5)  
2
(+ 2.7 10)  
12.7
```

Expressions such as these, formed by delimiting a list of expressions within parentheses in order to denote procedure application, are called _combinations_. The leftmost element in the list is called the _operator_, and the other elements are called _operands_.

The convention of placing the operator to the left of the operands is known as _prefix notation_. Prefix notation has several advantages, however. One of them is that it can accommodate procedures that may take an arbitrary number of arguments, as in the following examples:

```lisp
(+ 21 35 12 7)  
_75_  
  
(* 25 4 12)  
_1200_
```

