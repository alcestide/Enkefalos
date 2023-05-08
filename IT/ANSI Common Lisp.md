```lisp
(defun ask-number ()
	(format t "Please enter a number. ")
	(let ((val (read)))
		(if (numberp val)
			val
			(ask-number))))
```

This function creates a variable v a l to hold the object returned by read. Because it has a handle on this object, the function can look at what you entered before deciding whether or not to return it. As you probably guessed, `numberp` is a predicate that tests whether its argument is a number.

If the value entered by the user isn't a number, ask-number calls itself. The result is a function that insists on getting a number:

```lisp
> (ask-number)
Please enter a number, a
Please enter a number, (ho hum)
Please enter a number. 52
52
```

Variables like those we have seen so far are called local variables. They are only valid within a certain context. There is another kind of variable, called a global variable, that can be visible everywhere.

You can create a global variable by giving a symbol and a value to `defparameter`:

```lisp
> (defparameter *glob* 99)
*GLOB*
```

Such a variable will then be accessible everywhere, except in expressions that create a new local variable with the same name. To avoid the possibility of this happening by accident, it's conventional to give global variables names that begin and end with asterisks.

The name of the variable we just created would be pronounced "star-glob-star".

You can also define global constants, by calling def constant:

```lisp
(defconstant limit (+ *glob* 1))
```

If you want to check whether some symbol is the name of a global variable or constant, use `boundp`:

```lisp
> (boundp '*glob*)
T
```

In Common Lisp the most general assignment operator is setf. We can use it to do assignments to either kind of variable:

```lisp
> (setf *glob* 98)
98
> ( let ((n 10))
		(setf n 2)
		n)
2
```

## **Functional Programming**

Functional programming means writing programs that work by returning values, instead of by modifying things. It is the dominant paradigm in Lisp.

Most built-in Lisp functions are meant to be called for the values they return, not for side-effects.

The function remove, for example, takes an object and a list and returns a new list containing everything but that object:

```lisp
> (setf 1st '(c a r a t))
(C A R A T)
> (remove 'a 1st)
(C R T)
```

The original list is untouched afterwards:

```lisp
> 1st
(C A R A T)
```

So what if you really do want to remove something from a list? In Lisp you generally do such things by passing the list as an argument to some function, and using setf with the return value. To remove all the as from a list x, we say:

```lisp
(setf x (remove `a x))
```

Functional programming means, essentially, avoiding setf and things like it. At first sight it may be difficult to imagine how this is even possible, let alone desirable. How can one build programs just by returning values?

## Iteration

When we want to do something repeatedly, it is sometimes more natural to use iteration than recursion. A typical case for iteration is to generate some sort of table. This function

```lisp
(defun show-squares (start end)
	(do (( i start (+ i 1)))
			((> i end) 'done)
		(format t "~A ~k~l" i (* i i))))
```

prints out the squares of the integers from start to end:

```lisp
> (show-squares 2 5)
2 4
3 9
4 16
5 25
DONE
```

Recursive version of `show-squares`:

```lisp
(defun show-squares (i end)
	(if (> i end)
			'done
			(progn
				(format t "~A ~A~%" i (* i i ))
				(show-squares (+ i 1) end))))
```

`progn`: _it takes any number of expressions, evaluates them in order, and returns the value of the last._

To iterate through the elements of a list, for example, you would be more likely to use `dolist`.

Here is a function that returns the length of a list:

```lisp
(defun our-length (1st)
	(let ((len 0))
		(dolist (obj 1st)
			(setf len (+ len 1)))
		len))
```

Here `dolist` takes an argument of the form (variable expression), followed by a body of expressions. The body will be evaluated with variable bound to successive elements of the list returned by expression. So the loop above says, for each obj in 1st, increment len.

The obvious recursive version of this function would be:

```lisp
(defun our-length (1st)
	(if (null 1st)
			0
			(+ (our-length (cdr 1st)) 1)))
```

## Functions as Objects

In Lisp, functions are regular objects, like symbols or strings or lists

Like quote, function is a special operator.

```lisp
> (function +)
#<Compiled-Function + 17BA4E>
```

Just as we use `as an abbreviation for quote, we can use #` as an abbreviation for function.

```lisp
> #' +
#<Compiled-Function + 17BA4E>
```

This abbreviation is known as sharp-quote. Like any other kind of object, we can pass functions as arguments. One function that takes a function as an argument is apply. It takes a function and a list of arguments for it, and returns the result of applying the function to the arguments:

```lisp
> (apply #'+ ' ( 1 2 3))
6
> (+ 1 2 3)
6
```

## What is Lambda?

The lambda is not an operator, but just a symbol `°`. In the earlier dialects of Lisp, it was used to tell a function from a ordinary list because functions were represented as lists (lambda as the first element). In Common Lisp, it is no longer required.

```lisp
((x) (+ x 100))

instead of

(lambda (x) (+ x 100)
```

Functions have no need to have a name, nor do we have to define them using `defun` .

We can instead refer to functions literally. To refer literally to an integer, we use a series of digits; to refer literally to a function, we use what’s called a lambda expression, which is a list containing the symbol lambda, followed by a list of parameters, followed by a body of zero or more expressions.

```lisp
(lambda (x y)
	(+ x y))
```

The list (x y) is the parameter list, and right after there is the body of the function. A lambda expression can be considered as the name of a function. Like an ordinary function name, a lambda expression can be the first element of a function call

```lisp
> ((lambda (x) (+ x 100)) 1)
101
```

and by affixing a sharp-quote to a lambda expression, we get the corresponding function

```lisp
> (funcall #`(lambda (x) (+ x 100))
					 1)
101
```

Among other things, this notation allows us to use functions without naming them.

In this chapter we have barely scratched the surface of Lisp. And yet a portrait of a very unusual language is beginning to emerge. To start with, the language has a single syntax to express all program structure. This syntax is based on the list, which is a kind of Lisp object. Functions, which are Lisp objects in their own right, can be expressed as lists.
