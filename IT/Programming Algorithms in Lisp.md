## Algorithmic Complexity

In principle, the *complexity* of an algorithm is the dependence of the number of operations that will be performed on the size of the input. It is crucial to the computer system’s scalability: it may be easy to solve the programming problem for a particular set of inputs, but how will the solution behave if the input is doubled or increased tenfold or millionfold?

Let’s look at the following illustrative example:

```lisp
(defun mat-max (mat)
   (let (max)
     (dotimes (i (array-dimension mat 0))
       (dotimes (j (array-dimension mat 1))
         (when (or (null max)
               (> (aref mat i j) max))
         (setf max (aref mat i j)))))
    max))

```

This function finds the maximum element of a two-dimensional array (matrix):

```lisp
> *CL-USER> (mat-max #2A((1 2 3) (4 5 6)))*
6
```

There are six major complexity classes of algorithms:
- Constant-time (O(1))
- Sublinear (usually, logarithmic—O(log n))
- Linear (O(n)) and superlinear (O(n * log n))
- Higher-order polynomial (O(nˆc), where c is some constant
greater than 1)
- Exponential (O(cˆn), where c is usually 2 but, at least, greater
than 1)
- Just plain lunatic complex (O(n!) and so forth)—I call them
O(mg), jokingly

## Core Lisp

[[ANSI Common Lisp]]

Lisp programs are supposed to be run not only in a one-off fashion of
simple scripts but also as live systems that operate over long periods of
time experiencing change not only of their data but also code. This
general way of interaction with a program is called Read-Eval-Print
Loop (REPL), which literally means that the Lisp compiler reads a
form, evaluates it with the aforementioned rule, prints the results
back to the user, and loops over.

### Branching
Conditional expressions calculate the value of their \0irst form and,
depending on it, execute one of several alternative code paths. The
basic conditional expression is if:

```lisp
    CL-USER> (if nil
                (print "hello")
                (print "world"))
    "world"
    "world"

```

As we’ve seen, nil is used to represent logical falsity, in Lisp. All
other values are considered logically true, including the symbol t which
directly has the meaning of truth.
And when we need to do several things at once, in one of the
conditional branches, it’s one of the cases when we need to use progn
or block :

```lisp
    CL-USER> (if (+ 2 2)
                 (progn (print "hello")
                     4)
              (print "world"))
    "hello"
    4
  ```

The t case is a catch-all that will trigger if none of the previous
conditions worked (as its condition is always true). The preceding code
is equivalent to the following:

```lisp
    (if (typep 4 'string)
        (print "hello")
        (if (> 4 2)
            (progn
              (print "world")
              nil)
              (print "can't get here")))
```


### Looping

Lisp has a rich set of looping constructs, and it’s also easy to define new ones when necessary. This approach is different from the mainstream languages that usually have a small number of such statements and, sometimes, provide an extension mechanism via polymorphism. And it’s even considered to be a virtue justified by the idea that it’s less confusing for the beginners. It makes sense to a degree. Still, in Lisp, both generic and custom approaches manage to coexist and complement each other.

Anyway, for a complete beginner, actually, you have to know the
same number of iteration constructs as in any other language. The
simplest one is dotimes that iterates the counter variable a given
number of times (from 0 to (- times 1)) and executes the body on
each iteration. It is analogous to for (int i = 0; i < times;
i++) loops found in C-like languages:


```lisp
    CL-USER> (dotimes (i 3)
               (print i))
    0
    1
    2
    NIL
```


The return value is nil by default, although it may be speci\0ied in
the loop header.
The most versatile (and low-level) looping construct, on the other
hand, is do:

```lisp
    CL-USER> (do ((i 0 (1+ i))
                  (prompt (read-line) (read-line)))
                 ((> i 1) i)
              (print (pair i prompt))
              (terpri))
    foo

    (0 "foo")
    bar

    (1 "bar")
    2
```


do iterates a number of variables (zero or more) that are defined in
he First part (here, i and prompt) until the termination condition in
he second part is satisfied (here, (> i 1)) and, as with dotimes
(and other do-style macros), executes its body—the rest of the forms (here, print and terpri, which is a shorthand for printing a
newline). read-line reads from standard input until newline is
encountered, and 1+ returns the current value of i increased by 1.
All do-style macros (and there’s quite a number of them, both built-
in and provided from external libraries: dolist, dotree, do-
register-groups, dolines, etc.) have an optional return value. In
do, it follows the termination condition—here, just return the final
value of i.
Besides do-style iteration, there’s also a substantially different beast
in CL ecosystem—the infamous loop macro. It is very versatile,
although somewhat unlispy in terms of syntax and with a few
surprising behaviors.


### Procedures and Variables
Procedures are the simplest way to reuse computations and they accept arguments.
A procedure in Lisp, is called lambda. You can define one like this: (lambda (x y) (+ x y))
When used, such procedure will produce the sum of its inputs:


```lisp
    CL-USER> ((lambda (x y) + (+ x  y)) 2 2)
    4
```


It is quite cumbersome to refer to procedures by their full code signature, and an
obvious solution is to assign names to them. A common way to do that in Lisp is via the defun macro:


```lisp
    CL-USER> (defun add2 (x y) (+ x y))
    ADD2
    CL-USER> (add2 2 2)
    4
```


The arguments of a procedure are examples of variables. Variables
are used to name memory cells whose contents are used more than once and may be changed in the process. They serve different purposes:

 - To pass data into procedures
- As temporary placeholders for some varying data in code blocks, like loop counters
- As a way to store computation results for further reuse
- To define program configuration parameters (like the OS environment variables)
- To refer to global objects that should be accessible from anywher in the program

And more. So, how do we define variables in Lisp? You've already seen some of the variants:
procedural arguments and let bindings. Such variables are called local or lexical in Lisp parlance.
That's because they're only accessible locally. *let* is a general way to introduce such local variables
which is lambda in disguise:

``` lisp
    CL-USER> (let ((x 2))
              (+ x x))
    4
    CL-USER> ((lambda (x) (+ x x))
              2)
    4
```

While with lambda you can create a procedure in one place,
possibly assign it to a variable, and then apply many times in various places, with let
you define a procedure and immediately call it, leaving no way to store it and reapply again afterward.
Creating variables with let is called binding. It is possible to bind several variables at once.

```lisp
    CL-USER> (let ((x 2)
                    (y 2))
                (+ x y))
    4
```


In the code throughout this book, you’ll only see these two binding
constructs: let for trivial and parallel bindings and with for all the
rest.
As we said, variables may not only be defined, or they’d be called
“constants” instead, but also modified. To alter the variable’s value,
we’ll use the setf operator :


```lisp
    CL-USER> (let ((x 2))
                (print (+ x x))
                (setf x 4)
                (+ x x))
    4
    8
```

Modification, generally, is a dangerous construct as it can create
unexpected action-at-a-distance effects, when changing the value of a
variable in one place of the code affects the execution of a different part
that uses the same variable. This, however, can’t happen with lexical
variables: each let creates its own scope that shields the previous
values from modification (just as passing arguments to a procedure call
and modifying them within the call doesn’t alter those values, in the
calling code):

The common way to define a global variable is with
defparameter, which specifies its initial value:

```lisp
    (defparameter *connection* nil
           "A default connection object.") ; this is a
       docstring describing the variable
   #+end_src
```

   Procedures in Lisp are first-class objects. This means the one you
    can assign to a variable as well as inspect and redefine at runtime and,
    consequently, do many other useful things with. The funcall operator
    1 will call a procedure passed to it as an argument:

```lisp
    CL-USER> (funcall 'add2 2 2)
        4
        CL-USER> (let ((add2 (lambda (x y) (+ x y))))
                    (funcall add2 2 2))
        4
```

### Comments

This is how different comments may look like:

```lisp
    ;;; Some code section
    (defun this ()
      "This has a curious docstring."
     ...)
    (defun that ()
     ...
    ;; this is an interesting block don't you find?
     (block interesting
      (print "hello"))) ; it prints hello
```

## Data Structures
 From one point of view, algorithms are the essence of many programs, while data structures may seem
 secondary. Besides, although a majority of algorithms rely on certain features of particular data structures,
 not all do. Good examples of the data-structure-relying algorithms are heapsort, search using BSTs, and Union-Find.
 At the same time, some seasoned developers state that when the right data structure is found, the algorithm will almost write itself

 The Art of Unix Programming by Eric S. Raymond as the “Rule of
 Representation”:

 > Fold knowledge into data so program logic can be stupid and
 robust.
 Even the simplest procedural logic is hard for humans to verify,
 but quite complex data structures are fairly easy to model and
 reason about.
 To see this, compare the expressiveness and
 explanatory power of a diagram of (say) a fifty-node pointer tree
 with a flowchart of a fifty-line program.
 Or, compare an array
 initializer expressing a conversion table with an equivalent switch
 statement. The difference in transparency and clarity is dramatic.
 Data is more tractable than program logic.
 It follows that where
 you see a choice between complexity in data structures and
 complexity in code, choose the former. More: in evolving a design,
 you should actively seek ways to shift complexity from code to
 data.

 Data structures are more static than algorithms. Surely, most of
them allow change of their contents over time, but there are certain
invariants that always hold. This allows reasoning by simple induction:
consider only two (or at least a small number of) cases, the base one(s)
and the general. In other words, data structures remove, in the main,
the notion of time from consideration, and change over time is one of
the major causes of program complexity. In other words, data
structures are declarative, while most of the algorithms are imperative.
The advantage of the declarative approach is that you don’t have to
imagine (trace) the flow of time through it.

Among Data Structures there are actually two distinct kinds: abstract and concrete.
 The significant difference between them is that an abstract structure is just an interface
 and a number of conditions or invariants that have to be met. Their particular implementations,
 which may differ significantly in efficiency characteristics and inner mechanisms, are provided by the concrete
 data structures.
 
### Contiguous and Linked Data Structures
The current computer architectures consist of a central processor, memory
and peripheral input-output devices. Data is exchanged via the IO devices, stored in memory
and processed by the CPU. There's a crucial costraint called the von Neumann's bottleneck:
the CPU can only process data that is stored inside of it in a limited number of special basic memory
blocks called registers. So it has to constantly move data elements back and forth between
the registers and main memory (using intermediate cache to speed up the process). Now
there are things that can fit in a register and those that cant't. The first ones are caleld primitive and mostly unite
those items that can be directly represented with the integer numbers: integers proper, floats and characters.
Everything that requires a specific data structure to be represented can't be put in a register as a whole.

Another item that fits into the processor register is a memory address. In fact, there's an important constant - the
number of bits in a general-purpose register, which defines the maximum memory address that a particular CPU may handle
and, thus, the maximum amount of memory it can work with. For a 32-bit architecture, it's 2^32 (4GB) and for 64-bit
it's 2^64. A memory address is usually called a *pointer*, and if you put a pointer in a register, there are commands
that allow the CPU to retrieve the data in memory from where it points.

So there are two ways to place a data structure inside the memory:

- A contiguous structure occupies a single chunk of memory, and its
    contents are stored in adjacent memory blocks. To access a particular
    piece, we should know the offset of its beginning from the start of the
    memory range allocated to the structure. (This is usually handled by
    the compiler.) When the processor needs to read or write to this
    piece, it will use the pointer calculated as the sum of the base address
    of the structure and the offset. The examples of contiguous structures
    are arrays and structs.

- A linked structure, on the contrary, doesn’t occupy a contiguous
    block of memory, that is, its contents reside in different places. This
    means that pointers to a particular piece can’t be pre-calculated and
    should be stored in the structure itself. Such structures are much
    more flexible at the cost of this additional overhead both in terms of
    used space and time to access an element (which may require several
    hops when there’s nesting, while in the contiguous structure, it is
    always constant). There exist a multitude of linked data structures
    like lists, trees, and graphs.

### Tuples
In most languages, some common data structures, like arrays or lists, are built-in.
To implement an arbitrary data structure, these languages provide a special emchanism called records, structs
objects and so on. The proper name for it would be "tuple", which is an abstract data structure, and its sole
interface is the field accessor function: by name, or index.
It can be implemented in several ways. Python has a dedicated tuple data type that is often used for this purpose,
which is a linked data structure under the hood. The following Python function
will return a tuple (written in parens) of a decimal and remainder parts
of the number x:

```python
    def truncate(x):
        dec = int(x)
        rem = x - dec
        return (dec, rem)
```

A better approach both from the point of view of
efficiency and code clarity is to use a predefined structure. In Lisp, a
tuple is called “struct” and is defined with defstruct, which uses a
contiguous representation by default.

```lisp
    (defstruct pair
            left right)
```

The defstruct macro generates several definitions  the
struct type, its constructor that will be called make-pair and have
two keyword arguments :left and :right and field accessors
pair-left and pair-right.

### Passing Data Structures in Function Calls

There are two ways to use data structures with
functions: pass them directly via copying memory areas (call-by-value),
or pass a pointer (call-by-reference). The difference between the two, is that in call-by-value there is no way to modify the contents of the original structure, but in call-by-reference it's possible and is also the more general and efficient approach. It's the default way to handle structures. In C, both are supported.

### Structs in Actions: Union-Find
Union-Find is a family of data structure–
algorithms that can be used for efficient determination of set
membership in sets that change over time. They may be used for
finding the disjoint parts in networks, detection of cycles in graphs,
finding the minimum spanning tree, and so forth.

Let’s consider the following problem: How to determine if two
points of the graph have a path between them, given a graph that is a
set of points (vertices) and edges between some of the pairs of these
points? A path in the graph is a sequence of points leading from source
to destination with each pair having an edge that connects them. If
some path between two points exists, they belong to the same
component, and if it doesn’t, to two disjoint ones.

The Union-Find approach is based on a simple idea: when adding,
the items record the id of the component they belong to.

```lisp
    (defstruct point
      parent) ; if the parent is null the point is
    the root
    (defun uf-union (point1 point2)
     "Join the subsets of POINT1 and POINT2."
     (setf (point-parent point1) (or (point-parent
                                      point2)
                                  point2)))
    (defun uf-find (point)
     "Determine the id of the subset that a POINT
    belongs to."
     (let ((parent (point-parent point)))
      (if parent
       (uf-find parent)
       point)))
```

## Arrays

Arrays are one of the most basic data structure and they're often the default choice for implementing algorithms of sort.

```lisp
CL-USER> (make-array 3)

# (0 0 0)
```

The printed result is the literal array representation. It happens that the array is shown to hold 0s, but that's the implementation dependent. Additional specifics can be set during array initialization for instance: element-type, :initial-element and even full contents"

```lisp
CL-USER> (make-array 3 :element-type 'list
:initial-element nil)
#(NIL NIL NIL)
CL-USER> (make-array 3 :initial-contents '(1.0 2.0
3.0))
#(1.0 2.0 3.0)
```

### Multidimensional Arrays

There are a staggering variety of other structures that can be built on
top of arrays, such as binary (or, in fact, any n-ary) trees, hash-tables,
and graphs, to name a few. If we have a chance to implement the data
structure on an array, usually, we should not hesitate to take it as it will
result in constant access time, good cache locality contributing to faster
processing, and, in most cases, efficient space usage.

*Multidimensional arrays* are a contiguous data structure that stores
its elements so that, given the coordinates of an element in all
dimensions, it can be retrieved according to a known formula. Such
arrays are also called tensors and, in the case of two-dimensional
arrays, matrices. We have already seen one matrix *example* in the
discussion of complexity:

```lisp
#2A ((1 2 3)
     (4 5 6))
```

A **matrix** has rows (first dimension) and columns (second
dimension).

### Binary Search


The simple way to  search for an element in Lisp is using the function find :  

```lisp
CL-USER> (let ((vec (make-array 2 :initial-  
	contents  
								  (list (rtl:pair  
:foo :bar)  
										(rtl:pair  
:baz :quux)))))  
		   (print (find (rtl:pair :foo :bar) vec))  
           (print (find (rtl:pair :foo :bar) vec  
:test 'equal))  
	       (print (find (rtl:pair :bar :baz) vec  
:test 'equal))  
           (print (find :foo vec :key 'lt)))  
NIL  
(:FOO :BAR)  
NIL  
(:FOO :BAR)
```

In the first case, the element was not found due to the wrong  
comparison predicate: the default eql will only consider two  
structures to be the same if they’re the same object, and, in this case,  
there will be two separate pairs with the same content.  

The second search is successful as equal performs deep comparison. 
Such search is called sequential scan because it is performed in a  
sequential manner over all elements of the vector starting from the  
beginning

If we know that our sequence is sorted, we can perform  
the search much faster. The algorithm used for that is one of the most  
famous algorithms that every programmer has to know and use, from  
time to time—binary search. 
The more general idea behind it is called  *“divide and conquer”:* if there’s some way, looking at one element, to  
determine the outcome of our global operation for more than just this  
element, we can discard the part for which we already know that the  
outcome is negative. In **binary search**, when we’re looking at an  
arbitrary element of the sorted vector and compare it with the item we  
search for  

- If the element is the same, we have found it.  
- If it’s smaller, all the previous elements are also smaller and thus  
- uninteresting to us—we need to look only on the subsequent ones.  
- If it’s greater, all the following elements are not interesting.

Here’s an “optimized” version of binary search that returns  
three values:  
- The final element of the array.  
- Its position.  
- Has it, actually, matched the element we were searching for?

```lisp
(defun bin-search (val vec &key (less '<) (test  
'=) (key 'identity))  
	(when (plusp (length vec))  
	(let ((beg 0)  
		(end (1- (length vec))))  
	 (do ()  
		((= beg end))  
	(let ((mid (+ beg (floor (- end beg) 2))))  
		(if (funcall less (funcall key (aref vec  
mid)) val)  
			(setf beg (1+ mid))

			(setf end mid))))  
		(values (aref vec beg)  
				beg  
				(funcall test (funcall key (aref vec  
beg)) val)))))
```

The number of  iterations needed to expand the full array may be calculated by the  
inverse of exponentiation—the logarithmic function. That is, we’ll need  
**(log n 2)** iterations (where n is the initial array size). Shrinking the  
array takes the same as expanding, just in the opposite order, so the  
complexity of binary search is **O(log n)**.

Here's a speed comparison:

```lisp
CL-USER> (rtl:with ((size 100000000)  
					(mid (1+ (/ size 2)))  
					(vec (make-array size)))  
			(dotimes (i size)  
				(setf (aref vec i) i))  
			(time (find mid vec))  
			(time (bin-search mid vec)))  
Evaluation took:  
	0.591 seconds of real time  
	0.595787 seconds of total run time (0.595787  
user, 0.000000 system)  
	100.85% CPU  
	...  
Evaluation took:  
	0.000 seconds of real time
	0.000000 seconds of total run time (0.000000  
user, 0.000000 system)  
	100.00% CPU  
	...
```

The **crucial limitation** of binary search is that it requires our  
sequence to be presorted because sorting before each search already  
requires at least linear time to complete, which kills any performance  
beneit we might have expected. 
Obviously, it will only work fast for  
**vectors** and not linked sequences.

## Sorting
Unlike searching, there is no single optimal algorithm for sorting. Several aspects differentiate sorting functions:

- **In-place**: This kind of sorting is a destructive operation, but it is often  
desired because it may be faster and also it preserves space. The alternative is copying sort.
- **Stable**: Whether two elements, which are considered the same by the  
predicate, retain their original order or may be shufled.
- **Online**: Does the function require the whole sequence before starting the sorting process?

An ideal  algorithm should show better than average performance (up to **O(1)**)  
on the sorted and almost sorted special cases.
**Sorting** was and still remains a popular  research topic. 
Not surprisingly, several dozens of different sorting  
algorithms were developed. But before discussing the prominent ones,  
let’s talk about “stupid sort” (or “**bogosort**”). In the case of bogosort, the  
number of possible inputs is the number of all permutations that’s  equal to n!, so considering that we need to also examine each permutation’s order, the algorithm’s complexity is **O(n * n!)**.

```lisp
(defun bogosort (vec comp)  
	(dolist (variant (all-permutations vec))  
		(dotimes (i (1- (length variant)))  
					;; this is the 3rd optional  
					;; argument of dotimes header  
					;; that is evaluated only after  
					;; the loop finishes normally  
					;; if it does we have found a  
					;;completely sorted permutation!  
					(return-from bogosort variant))  
		(when (funcall comp (aref variant (1+ i))  
(aref variant i))  
		(return))))) ; current variant is not  
sorted, skip it
```

### O(n^2) Sorting
Bogosort gives us a good lower bound on the sorting  
algorithm’s performance. There are a number of simple algorithms that work in quadratic time and that are far more efficient than bogosort.
One of the most well known is "**Bubble Sort**", but it's not too straightforward and has poor performance characteristics too, and for that reason is rarely used.
Two simple quadratic algorithms that are actually useful are:

- Selection Sort
- Insertion Sort

Selection Sort is an in-place sorting algorithm that moves left to right from the beginning of the vector one element at a time and builds the sorted prefix to the left of the current element. This is done by finding the largest element in the right part and swapping it with the current element:

```lisp
(defun selection-sort (vec comp)  
	(dotimes (i (1- (length vec)))  
		(let ((best (aref vec i))  
				(idx i))  
			(dotimes (j (- (length vec) i 1))  
				(when (call comp (aref vec (+ i j 1))  
best)  
			(setf best (aref vec (+ i j 1))  
				idx (+ i j 1))))  
		(rotatef (aref vec i) (aref vec idx)))) ;  
this is the Lisp swap operator  
	vec)
```

This algorithm requires a constant number of operations regardless of the level of sortedness: `(/ (* n (- n  1)) 2)` --- the sum of the arithmetic progression from 1 to n, because at each step, it needs to fully examine the remainder of the lements to find the maximum and the remainder's size varies from n to 1. It handles well both contiguous and linked sequences.
The Insertion Sort is another quadratic-time in-place sorting algorithm. This one, instead of looking for the global maximum on the right-hand side, it looks for a proper place of the current element on the left-hand side. As this part is always sorted, it takes linear time to find the place for the new element and insert it accordingly.
This has great implications:

- It is stable;
- It is online. In contrat with selection sort, it doesnt't have to find the maximum element of the sequence in the first step;
- For sorted sequences, it works in linear time. However, for reverse sorted sequences, its performance will be the worse **O(k *  n)**, where k is the average offset of the element. For sorted  sequences k=0 and for reverse sorted sequences, it’s `(/ (- n 1)  2)`;

```lisp
(defun insertion-sort (vec comp)  
	(dotimes (i (1- (length vec)))  
		(do ((j i (1- j)))  
			((minusp j))  
		  (if (funcall comp (aref vec (1+ j)) (aref  
vec j))  
			(rotatef (aref vec (1+ j)) (aref vec j))  
			(return))))  
	vec)
```

The implementation is  simple: we look at each element starting from the second an compare it to the previous element, and if it's better, we swap them and continue the comparison with the previous element until we reach the array's beginning.
So, when it comes to actual processing time, which one is better?

If we compare them when taking into analysis the average case, we’ll get the following numbers:

- Selection sort: `(+ (/ (* n (- n 1)) 2) (/ n 2)) = (/  (+ (* n n) n) 2)`
- Insertion sort: `(+ (/ (* n (- n 1)) 2) (+ (/ (* (- n  1) (- n 2)) 4) = (/ (+ (* 1.5 n n) (* -2.5 n) 1)  2)`

The second number is slightly higher than the first. For small `n`s it is almost negligible, but for huge ones, insertion sort will need **1.5 times** more operations. 
It is also the case that swaps are more expensive than comparisons. In practice, insertion sort ends up being used more often. In general,  quadratic sorts are only used when the input array is **small**.

## Quicksort
There are a number of other **O(n^2)** sorting algorithms similar to  
selection and insertion sorts, but studying them quickly turns boring,  
so we won’t, as there are also a number of signiicantly faster  
algorithms that work in **O(n * log n)** time *(almost linear)*.

They rely on the *divide-and-conquer* approach. Probably, the most famous of such algorithms is quicksort. Its idea  is, at each iteration, to select some element of the array as the “**pivot**”  point and divide the array into two parts—all the elements that are  
smaller and all those that are larger than the pivot—and then  recursively sort each subarray. As all left elements are below the pivot  and all right above, when we manage to sort the left and right sides, the  whole array will be sorted. This invariant holds for all iterations and for all subarrays.

There’re several tricks in quicksort implementation. The first one has to do with pivot selection.
Let’s say  that all elements are greater than the pivot—then the pivot will be at index 0.
Now, if  moving left to right over the array we encounter an element that is not  
greater than the pivot, we should put it before, that is, the pivot’s index  
should increment by 1. When we reach the end of the array, we know  
the correct position of the pivot, and in the process, we can swap all the  
elements that should precede it in front of this position. We have then  to put the element that is currently occupying the pivot’s place  somewhere. The most obvious  thing is to swap it with the pivot:

```lisp
(defun quicksort (vec comp)  
	(when (> (length vec) 1)  
	  (with ((pivot-i 0)  
			(pivot (aref vec (1- (length vec)))))  
		(dotimes (i (1- (length vec)))  
		  (when (funcall comp (aref vec i) pivot)  
		    (rotatef (aref vec i)  
					 (aref vec pivot-i))  
			(incf pivot-i)))  
			;; swap the pivot (last element) in its  
			;; proper place  
		(rotatef (aref vec (1- (length vec)))  
				(aref vec pivot-i))  
		(quicksort (rtl:slice vec 0 pivot-i) comp)  
		(quicksort (rtl:slice vec (1+ pivot-i))  
comp)))  
	vec)
```

Let's consider the complexity of this implementation. 
If on every iteration, we divide the array in two equal halves, we'll need to perform `n` comparisons and `n/2` swaps and increments, which totals to `2n` operations. We'll also need to do that `(log n 2)`, which is the height of a complete binary tree with `n` elements.. At every level of the recursion tree, we'll need to perform twice as many sorts with twice as little data, so each levels equals to a `2n` operations number.
Total complexity would then be `2n * (log n 2)` which become, when in the ideal case, **O(n * log n*)**.

However, we cannot guarantee that the selected pivot will divide the array into two ideally equal parts.  In the worst case, if we were to split it into two totally unbalanced subarrays, with n-1 and 0 elements, respectively, we'd need to perform sorting n times and perform a number of operations that will diminish in the arithmetic progression from 2n to 2. 
This sums to (* n ( - n 1)), a dreaded **O(n^2)** complexity.

So the worst-case performance for quicksort is not just worse, but in a different complexity league than the average-case one. 
Moreover, the conditions for such performance are not so uncommon: sorted and reverse sorted arrays. It is also interesting to note that if, at each stage, we were to split  
the array into parts that have a 10:1 ratio of lengths, this would have  
resulted in n * log n complexity.

Dealing with equal elements is another corner case for quicksort  
that should be addressed properly. The ix is simple: to divide the array  
not in two but three parts, smaller, larger, and equal to the pivot. This  
will allow for the removal of the equal elements from further  
consideration and will even speed up sorting instead of slowing it  
down.

## Linked Lists

