The term "special form" is used to refer both to Common Lisp's syntactic constructs and the reserved words that mark these constructs.
The most commonly used are:

| **definitions**  | **conditional** | **variables** | **iteration** | **other**    |
| ------------ | ----------- | --------- | --------- | -------- |
| defun        | and         | let       | do        | declare  |
| defstruct    | case        | let*      | do*       | function |
| defvar       | cond        | pop       | dolist    | progn    |
| defparameter | if          | push      | dotimes   | quote    |
| deconstant   | or          | setf      | loop      | return   |
| defmacro     | unless      | incf      |           | trace    |
| labels       | when        | decf      |           | untrace         |

To be precise, only declare, function, if, labels, let, let*, progn and quote are true special forms. The others are actually defined as macros, even though there's no real difference to the programmer.

[[IT/Special Forms for Definitions]]
[[A Guide to Lisp Style]]
[[Expressions (Lisp)]]
[[Conditional Expressions and Predicates]]

