
# Table of Contents

1.  [Proof by Contradiction](#org1941073)
2.  [Proof by Induction](#org283fe88)
    1.  [Introduction axiom](#orgb9601c0)
    2.  [Proof By induction](#org842b803)
    3.  [Base case](#orga076b23)
    4.  [Inductive Step](#orgcbf3bf3)
3.  [Theorem](#orgcc3e3d2)
    1.  [Proof By Induction](#org7e0b01e)
    2.  [Base case](#org26b1d1b)
    3.  [Inductive Step](#orgacc440e)
4.  [False proof using induction](#org826d430)
    1.  [Thm (not!) All horses are the same color.](#org7f78f27)
    2.  [Proof by Induction](#org179a4d8)
    3.  [Base case](#orga7fbdd0)
    4.  [Inductive Step](#orgebbef2f)


<a id="org1941073"></a>

# Proof by Contradiction

To prove proposition $P$ is true, you will assume that is false, which means that $!P$ is false.
Then you use that hypothesis to derive a falsehood. (deriving a contradiction).Let&rsquo;s prove that $\sqrt(2)$ is irrational. 

Assuming for the purpose of contradiction that $\sqrt(2)$ is rational.

$$\sqrt(2)=a/b$$

$$\sqrt(2) = \frac{a^2}{b^2}$$

$$2b^2=a^2$$

$$(2|a)$$

$$4|a^2$
$$

$$4|2b^2$$

$$2|b^2$$

b is even => $a/b$ is not in lowest terms => contradiction

$\sqrt(2)$ is irrational


<a id="org283fe88"></a>

# Proof by Induction


<a id="orgb9601c0"></a>

## Introduction axiom

Let $P(m)$ be a predicate. If p(0) is true, and $\forall n \in N$ ==> $(P(n) => (P(n+1)))$ is true, then $\forall n \in N$. If $P(0), P(0) => P(1), P(1) => P(2)$ &#x2026; then $P(0), P(1), P(2)$ are true.

Let&rsquo;s prove that: 

$$\forall n \ge 0$$ 

$$1+2+3+...+n=\frac{n(n+1)}{2}$$

If $n=1$   ,   $1+2+...+n=1$ (we&rsquo;re summing the numbers from 1 to 1, which makes this expression quite ambigous).

If $n=0$   ,   $1+2+...+n=0$ (no integers to sum).

If $n=4$   ,   $1+2+...+n=10=\frac{4(5)}{2}$.


<a id="org842b803"></a>

## Proof By induction

Let P(n) be proposition that $$\sum_{i=1}^{n}}=\frac{n(n+1)}{2}$$


<a id="orga076b23"></a>

## Base case

We have to check that P(0) is true
         $\sum_{i=1}^{0 = 0=\frac{0(0+1)}{2}$


<a id="orgcbf3bf3"></a>

## Inductive Step

We have to show that for $n \ge 0$ $P(n)=>P(n+i)$ is true.
Assume $P(n)$ is true (for purposes of induction).
Let&rsquo;s assume, $1+2+...+n = \frac{n(n+1)}{2}$.
We need to show that $1+2+...+(n+1)= \frac{(n+1)(n+2)}{2}$.

$$1+2...+n+(n+1)$$

$$\frac{n(n+1)}{2} + n+ 1 = \frac{n^2+n+2n+2}{2}=\frac{(n+1)(n+2)}{2}$$


<a id="orgcc3e3d2"></a>

# Theorem

$$\forall n \in N  3|(n^3-1)$$

$$(Ex. \ n=5 ,\ 3|(125-5)$$


<a id="org7e0b01e"></a>

## Proof By Induction

Let $P(n)$\\ be \\$3|(n^3-n)$


<a id="org26b1d1b"></a>

## Base case

$n = 0$   $3|(0-0)$


<a id="orgacc440e"></a>

## Inductive Step

For n &ge; 0, show P(n) => P(n+1) it true.
We assume that P(n) is true. In other words we assume that 3|(n<sup>3</sup>-n)

Examine:

$$(n+1)^3-(n+1)$$

$$=n^3+3n^2+3n+1-(n+1)$$

$$= n^3+3n^2n$$

$$=n^3-n+3n^2+3n$$

$3|3n^3$

$3|3n$

$3|(n^3-n)$ by $P(n)$.

Which means $3|(n+1)^2-(n-1)$.


<a id="org826d430"></a>

# False proof using induction


<a id="org7f78f27"></a>

## Thm (not!) All horses are the same color.


<a id="org179a4d8"></a>

## Proof by Induction

$P(n)$: in any set of n horses $(n \ge 1)$ the horses are all the same color.


<a id="orga7fbdd0"></a>

## Base case

$n=1$ that would say that any set of one horses, the horses in the set all are  the same color.

$P(1)$ is true since just $1$ horse.


<a id="orgebbef2f"></a>

## Inductive Step

Assume that $P(n)$ is true to prove $P(n+1)$. Consider a set of $n+1$ horses and let&rsquo;s call these horses $H_1$ $H_2$ $H_{n+1}$

Then $H_1$, $H_2$,&#x2026;$H_4$ are the same color. Also, $H_2, H_3$ and $H_{n+1}$  &rsquo;&rsquo;  &rsquo;&rsquo;  &rsquo;&rsquo; Since the color of $H_1$ equals the color of $ H<sub>2</sub> , H<sub>n</sub> $ = the color of $ H<sub>n+1</sub> $. That means that $H_1$ same color $H_n+1$ and all $H_n+1$ are the same color. The flaw consists on the &#x2026; notation.

$P(1)$    $P(2) => P(3)$, $P(3) => P(4)$

We did not prove that $P(1) => P(2)$

