There are three forms for introducing special variables. *defvar* defines a special variable and can optionally be used to supply an initial value and a documentation string. The initial value is evaluated and assigned only if the variable does not yet have any value. *defparameter* is similar, except that the value is required, and it will be used to change any existing value. *defconstant* is used to declare that a symbol will always stand for a particular value.

`(defvar variable-name initial-value "optional documentation")  
`(defparameter variable-name value "optional documentation")  `
`(def constant variable-name value "optional documentation")`

All the def- forms define global objects. It is also possible to define local variables with let, and to define local functions with labels, as we shall see.

The *defstruct* special form defines a structure type. The general syntax is:

`(defstruct structure-name "optional documentation" slot)`

As an example, we could define a structure for names:

```lisp
(defstruct name
	first
	(middle nil)
	last)
```

This automatically defines the constructor function make-name, the recognizer predicate name-p, and the accessor functions name-first, name-middle and name-last. The (middle nil) means that each new name built by make-name will have a middle name of nil by default. Here we create, access, and modify a structure:

```lisp
> ( setfb (make-name : first 'Barney : last 'Rubble)) =>  
#S(NAME :FIRST BARNEY :LAST RUBBLE)  
> (name-first b) => BARNEY  
> (name-middle b) => NIL  
> (name-last b) => RUBBLE  
> (name-p b) => Τ  
> (name-p 'Barney) => NIL ; only the results of make-name are names  
> ( setf (name-middle b) 'Q) => Q  
> b #S(NAME :FIRST BARNEY .-MIDDLE Q :LAST RUBBLE)
```

Do not let this representation fool you: it is a convenient way of printing the structure,  
but it is not an accurate picture of the way structures are represented internally.  
Structures are actually implemented much like vectors. This means structures are more efficient  than lists: they take up less space, and any element can be accessed in a single step.  In a list, it takes η steps to access the nth element.