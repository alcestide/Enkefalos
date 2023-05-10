As a case in point, let us consider that, in evaluating combinations, the interpreter is itself following a [[Compound Procedures|procedure]].

-   To evaluate a combination, do the following:

> 1.  Evaluate the subexpressions of the combination.
> 
> 2.  Apply the procedure that is the value of the leftmost sub[[Expressions (Lisp)|expression]] (the operator) to the arguments that are the values of the other subexpressions (the operands).

First, observe that the first step dictates that in order to accomplish the evaluation process for a combination we must first perform the evaluation process on each element of the combination. Thus, the evaluation rule is recursive in nature; that is, it includes, as one of its steps, the need to invoke the rule itself.

Viewing evaluation in terms of the tree, we can imagine that the values of the operands percolate upward, starting from the terminal nodes and then combining at higher and higher levels. In general, we shall see that recursion is a very powerful technique for dealing with hierarchical, treelike objects. In fact, the “percolate values upward” form of the evaluation rule is an example of a general kind of process known as _tree accumulation_.
