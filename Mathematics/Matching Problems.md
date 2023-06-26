
# Table of Contents

1.  [Definitions](#orgd1a8e03)
2.  [Example](#org46defdc)
    1.  [Theorem](#org7dbec80)
    2.  [Proof by contradiction](#org09aa5e1)
3.  [Stable Marriage Problem](#org53aeb0e)
    1.  [Goal: Find Perfect Stable Matching](#orgec07f69)
    2.  [[PLACEHOLDER]](#org836a312)



<a id="orgd1a8e03"></a>

# Definitions

Given graph $G=(V,E)$, a matching is a subgraph of $G$ where every node has degree 1.

A matching is perfect if it has size $\frac{|V|}{2}$.

The weight of a matching $M$ is the sum of the weights on the edges of $M$.

A min-weight matching for a graph $G$ is a perfect matching for $G$ with the min-weight.

Given a matching $M, x \notin y$ form a **rogue couple** if they prefer each other to their mates.

A matching is stable if there are no rogue couples.


<a id="org46defdc"></a>

# Example

****Four**** people, ****love triangle****. Alex who prefers Bobby Joe, Bobby Joe prefers Robin, and Robin prefers Alex. Then there is Mergatoid but nobody likes her.


<a id="org7dbec80"></a>

## Theorem

There doesn&rsquo;t exist a ****stable**** matching.


<a id="org09aa5e1"></a>

## Proof by contradiction

Assume there &exist; stable matching $M$. If it&rsquo;s a stable matching, Mergatoid has to be matched with somebody in $M$. Without loss of generality, assume Mergatoid is matched with Alex.

****WLOG (by symmetry)****, assume Mergatoid is matched to Alex.
Alex and Robin form a rogue couple $\implies$ $M$ is not stable


<a id="org53aeb0e"></a>

# Stable Marriage Problem

$N$ boys and $N$ boys (the same number of each).

Each boy has his own ****ranked list**** of all the girls. The same applies to girls.


<a id="orgec07f69"></a>

## Goal: Find Perfect Stable Matching


<a id="org836a312"></a>

## [PLACEHOLDER]

