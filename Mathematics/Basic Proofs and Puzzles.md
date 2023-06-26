
# Table of Contents

    1.  [Fermat&rsquo;s Last Theorem](#org41c8f65)
1.  [The 8-Puzzle](#org24e5e58)
    1.  [Thm: there is no sequence of legal moves to invert G and H and also return all the other letters to their original order or position](#org3fa9b65)
        1.  [Row Moves](#orgcb7d10d)
        2.  [Column Moves](#org8b76035)
        3.  [Definition](#org2084f0c)
        4.  [Proof by induction](#org297568d)
        5.  [Base Case](#orgf026e97)
        6.  [Inductive Step](#org587c21d)
    2.  [Proof of Theorem](#org4f194e7)
2.  [Strong Induction Axiom](#org105d991)
    1.  [Example: the Unstacking Game](#org5a1f33d)
        1.  [Example Moves](#orgd60ae4f)
        2.  [Theorem](#org74f7305)
        3.  [Proof By strong induction](#org0a073ff)

**Good proof** are:

-   correct
-   complete
-   clear
-   brief
-   elegant
-   well-organized
-   in order


<a id="org41c8f65"></a>

## Fermat&rsquo;s Last Theorem

$\forall$ $n > 2$ there does not $\exists \,   x,y,z \in N^+$

$x^2+y^2=z^2$


<a id="org24e5e58"></a>

# The 8-Puzzle

**Problem:** Find a sequence of moves to go from

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">A</td>
<td class="org-left">B</td>
<td class="org-left">C</td>
</tr>


<tr>
<td class="org-left">D</td>
<td class="org-left">E</td>
<td class="org-left">F</td>
</tr>


<tr>
<td class="org-left">H</td>
<td class="org-left">G</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

to

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">A</td>
<td class="org-left">B</td>
<td class="org-left">C</td>
</tr>


<tr>
<td class="org-left">D</td>
<td class="org-left">E</td>
<td class="org-left">F</td>
</tr>


<tr>
<td class="org-left">G</td>
<td class="org-left">H</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

**Legal move:** slide a letter into adjacent blank square


<a id="org3fa9b65"></a>

## Thm: there is no sequence of legal moves to invert G and H and also return all the other letters to their original order or position


<a id="orgcb7d10d"></a>

### Row Moves

1.  Lemma 1

    A row move does not change the order of the items.

2.  Proof:

    In a row move we move an item from cell $i$ into an adjacent cell $i-1$ or $i+1$. Nothing else move. Hence the order of the items is preserved.


<a id="org8b76035"></a>

### Column Moves

1.  Lemma 2

    A column move changes the relative order of precisely two pairs of items.

2.  Proof

    In a column move, we move an item in cell $i$, to a blank spot in cell $i-3$ or $i+3$. When an item moves 3 positions, it changes relative order with two other items. $i-1$, $i-2$, $i+1$, $i+2$.


<a id="org2084f0c"></a>

### Definition

A pair of letters $L_1$ and $L_2$ form an inversion called an **inverted pair** if $L_1$ preceds $L_2$ in the alphabet, but $L_1$ appears after in the puzzle.

1.  Lemma 3

    During a move, the number of inversions can only increase by two, decrease by two or stay the same.

2.  Proof:

    **Row move:** *no changes* (by **Lemma 1**)
    **Column move:** *2 pairs* change order (by **Lemma 2**)
    
    **Case A**: both of the inverted pairs were in order before the column move => # of inversions *goes up* by 2.
    
    **Case B:** both pairs were inverted before I made the column move => # of inversions *decreases* by 2.
    
    **Case C:** one of the pairs is inverted, the other wasn&rsquo;t => # of inversions *stays the same*.

3.  Corollary I:

    During the move the parity (even,odd) of the # of inversions does not change

4.  Proof

    Adding or subtracting 2 does not change the parity.

5.  Lemma 4

    In every state reachabale from the start state


<a id="org297568d"></a>

### Proof by induction

$P(n)$: After any sequence of $n$ moves from the start state, the parity of the number of inversions is odd.


<a id="orgf026e97"></a>

### Base Case

$n=0$ # of inversions = 1 => parity is odd and the hypothesis is satisfied.


<a id="org587c21d"></a>

### Inductive Step

For $n\ge0$, we need to show $P(n) => P(n+1)$. Let&rsquo;s consider any sequence of $n+1$ moves and label them from $M_1,..., M_n$. By $P(n)$ we know that the parity after moves $M_1,...,M_n$ is odd

By *Corollary I*, we know that the parity of the number of inversions does not change during $M_{n+1}$. Therefore this implies that the parity after $M_1,M_2,...,M_n,M_{n+1}$ is odd => $P(n+1)$.


<a id="org4f194e7"></a>

## Proof of Theorem

The parity of # of inversions in *desired state* is even ($0$). By *Lemma 4*, the desired state cannot be reached from the start state because the parity is *odd*.


<a id="org105d991"></a>

# Strong Induction Axiom

Let $P(n)$ be any predicate. If $P(0)$ is *true*, $\forall n$ $(P(0)\land P(1) ... \land P(n))$ => $P(n+1)$ is *true*.


<a id="org5a1f33d"></a>

## Example: the Unstacking Game


<a id="orgd60ae4f"></a>

### Example Moves

**First move:** $8$ split to $5$ and $3$ => $15$ points;

**Second move:** split the stack of $5$ into $4$ and $1$ => $4$ points;

No matter the strategy, the total amount of points will always be $28$.


<a id="org74f7305"></a>

### Theorem

All the strategies for the n-block game produces the same score $S(n)$.

Ex: S(8) = 28,


<a id="org0a073ff"></a>

### Proof By strong induction

$n=1$   $S(1)=0$

1.  Inductive Step

    Assume $P(1),P(2),...,P(n)$ to prove $P(n+1)$.
    Look at n+1 blocks     Split $n+1$ => $k$ and $n+1-k$.
    **Score** = $k(n+1-k)+P(k)+P(n+1-k)$.
    
    $S(n)=\frac{n(n-1)}{2}$
    $S(2)=1$
    $S(3)=3$

