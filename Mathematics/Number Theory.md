
# Table of Contents

1.  [Number Theory](#orga3ac651)
    1.  [Problem](#orgc91233e)
    2.  [Theorem:](#org743d8af)
    3.  [State machine](#org5a2e86a)
    4.  [Transitions](#org32a3615)
    5.  [Problem Solution](#org8909293)
    6.  [Theorem Proof](#orgffb7e57)
        1.  [Proof by Induction](#org703ea76)
    7.  [Problem 2](#org6696e03)
        1.  [Proof](#org6c85fea)
    8.  [Euclid&rsquo;s Algorithm](#org55e526c)
        1.  [Lemma](#orgc26a3a2)
2.  [Encryption](#orgb3d9f22)
    1.  [Turing&rsquo;s code V1](#orgd00b6c5)
    2.  [Turing&rsquo;s code V2](#orgf410fdb)
        1.  [Hard to factor a product of 2 large primes](#org7ad5d0c)
    3.  [Known Plain-Text Attack](#orgfa76004)
    4.  [Euler&rsquo;s Totient Function](#orgf808fe5)


<a id="orga3ac651"></a>

# Number Theory

One of the oldest mathematical disciplines, it is a branch of pure mathematics devoted primarily to the study of the integers and arithmetic functions.

**Definition:** $m|a$
if $\exists_k$ such that $a=km$
$3|6$ suppose $a=0$


<a id="orgc91233e"></a>

## Problem

Suppose we have a a-gallon jug $(a=3)$ and also a b-gallon jug $(b=5)$ and we issue that $a\le b$.


<a id="org743d8af"></a>

## Theorem:

$m|a$ and $m|b$, then $m |$ any result.


<a id="org5a2e86a"></a>

## State machine

**States pairs** $(x,y)$ where

$x =$ # gal in the &ldquo;a-jug&rdquo;
$y =$ # gal in the &ldquo;b-jug&rdquo;

Start-state: $(0,0)$


<a id="org32a3615"></a>

## Transitions

1.  *emptying*
    
    $$(x,y)=>(0,y)$$
    
    $$(x,y)=>(x,0)$$

2.  *filling*
    
    $$(x,y)=>(a,y)$$
    
    $$(x,y)=>(x,b)$$

3.  *pouring*
    
    $(x,y)=>(0, x+y)$, $x+y \le b$
    
    $(x,y)=>(x-(b-y)),b)=(x+y-b,b)$, $x+y \ge b$
    
    $(x,y)=>(x+y,0)$, $x+y \le a$
    
    $(x,y)=>(a,y-(a-x))$ = $(a, x+y-a)$, $x+y \ge a$


<a id="org8909293"></a>

## Problem Solution

$a=3$, $b=5$, $(0,0)=>(0,5)=>(3,2)=>(0,2)=>(2,0)=>(2,5)=>(3,4)$


<a id="orgffb7e57"></a>

## Theorem Proof


<a id="org703ea76"></a>

### Proof by Induction

Assume $m|a$, $m|b$

**Invariant**: $P(n)=$&ldquo;If $(x,y)$ is the state after $n$ transitions, then $m|x$, $m|y$&rdquo;

1.  Base Case

    $(0,0)$, $m|0$ $=> P(0)$ is *True*

2.  Inductive Step

    Assume $P(n)$.
    Suppose that $(x, y)$ state after $n$ transitions
    $P(n)=>m|x$ and $m|y$. After another transition, each of the jugs are filled with either $0$, $a$, $b$, $x$, $y$, $x+y$, $x+y-a$, $x+y-b$ gallons.
    
    -   $m|0$, $m|a$, $m|b$, $m|x$, $m|y$
    
    We will conclude that $m$ **divides** *any* of the above.


<a id="org6696e03"></a>

## Problem 2

-   $a=33$
-   $b=55$

Again we have to get precisely 4 gallons.

**Definition:**
**gcd** $(a,b)$ = the *greatest common divisor* of $a$ and $b$.

$a=3$, $b=5$

**Definition:**
$a$ and $b$ are relatively prime if gcd $(a,b)=1$

Any linear combination $L=s \cdot a+t\cdot b$, of $a$ and $b$ with $0 \le L \le b$ can be reached.

$$4= (-2) \cdot 3 + 2 \cdot 5$$


<a id="org6c85fea"></a>

### Proof

**Notice** $L=sa+tb=(s+mb)a+(t-ma)b$. $\exists s',t'$ $L=s'a+t'b$ with $s'>0$. Assume $0<L<b$.

1.  Algorithm

    To obtain $L$ gallons repeat $s'$ times:
    
    -   Fill the **a-jug**;
    -   Pour into the **b-jug**;
    -   When the **b-jug** becomes full, empty it out;
    -   Continue pouring the **a-jug** into the **b-jug**;
    
    **First Loop:**
    
    -   $(0,0) => (3,0) => (0,3)$
    
    **Second Loop:**
    
    -   $(0,3)=>(3,3)=>(1,5)=>(1,0)=>(0,1)$
    
    **Third Loop:**
    
    -   $(0,1)=>(3,1)=>(0,4)$
    
    We have filled the **a-jug** $s'$ times. Suppose that the **b-jug** is emptied $u$ times. Let $r$ be the remainder in the **b-jug**. $0 \le r \le b$, $0 \le L \le b$, $r=s'a-ub$, $L=s'a+t'b$. $r=s'a+t'b-t'b-ub=L-(t'+u)b$.
    
    If $t'+u \ne 0 => [r<0 \lor r>b]$
    $t'+u=0 => u =-t'=> r=L$


<a id="org55e526c"></a>

## Euclid&rsquo;s Algorithm

There exists a unique $q$ (quotient) and $r$ (remainder) such that $b=q\cdot a+r$.


<a id="orgc26a3a2"></a>

### Lemma

$$gcd(a,b)=gcd(rem(b,a),a)$$


<a id="orgb3d9f22"></a>

# Encryption

-   Beforehand: &ldquo;keys&rdquo; are exchanged.
-   **Encryption**  $m'=E_{keys}(m)$
-   **Decryption**  $m'=D_{keys}(m')$


<a id="orgd00b6c5"></a>

## Turing&rsquo;s code V1

$victory$
$m=22090320151825$

Every two digit number corresponding to the position of the letter in the alphabet.

-   Beforehand: exchange secret prime $k$
-   Encryption: $m'=m\cdot k$
-   Decryption: $\frac{m'}{k} = \frac{m'/k}{k}$

$m' = m \cdot k$
$m'_2 = m_2 \cdot k$
$gcd = (m'_1$ , $m'_2)$


<a id="orgf410fdb"></a>

## Turing&rsquo;s code V2

-   **Beforehand**: exchange public prime $p$, a secret prime $k$
-   **Encryption**: message as a number $m \in {0,1,...,p-1}$, compute $m'=rem(mk,p)$
-   **Decryption:** ?


<a id="org7ad5d0c"></a>

### Hard to factor a product of 2 large primes

$a,b$ relatively **prime** *iff* $gcd(a,b)=1$ iff $\exists_{s,t} sa+tb=1$

**Definition:**
$x$ is **congruent** to $y$ **modulo** $n$ : $x \equiv y (mod \ n)$ iff $n|(x-y)$

Ex:  $31 \equiv 16 (mod \ 5)$

**Definition:**

The multiplicative inverse of $x \mod\ n$ is a number $x^{-1}$ , ${0,1...n-1}$ s.t $x \cdot x^{-1} \equiv 1 (mod \ n)$

Ex $2 \cdot 3 \equiv 1 (mod \ 5)$
    $2 \equiv 3^-1 (mod \ 5)$
    $3 \equiv 2^-1 (mod \ 5)$
    $5 \cdot 5 \equiv 1 (mod \ 6)$
    $5 \equiv' 5^-1 (mod \ 6)$

$rem (mk, p) \equiv mk (mod \ p)$
$m'=mk(mod \ p)$

If $k \cdot k^{-1} \equiv 1 (mod \ p)$, then $m'k^{-1} \equiv mk \cdot k^1 \equiv m (mod \ p)$.

**Decryption:** $m = rem(m'k^-1, p)$


<a id="orgfa76004"></a>

## Known Plain-Text Attack

Assume to know a message $m$ and an encryption of this message $m'=rem(mk,p)$.

$$m' \equiv mk (mod \ p)$$

$$gcd(m,p) = 1$$

Compute the multiplicative inverse $m^{-1}$ s.t $m \cdot m^{-1} \equiv 1 (mod \ p)$.

$$m'm^{-1} \equiv k m \cdot m^{-1} \equiv k (mod \ p )$$


<a id="orgf808fe5"></a>

## Euler&rsquo;s Totient Function

$\phi(n)$ denotes the number of integers in ${1,2,3,...,n-1}$ that are relatively prime to $n$.

Ex: $n=12$    $1,2,3,4,5,6,7,8,9,10,11,12$

$\phi(12)=4$ *(there are 4 integers in the sequence that are relatively prime)*

Ex. $n=15$    $1,2,3,4,5,6,7,8,9,10,11,12,13,14$

$\phi(15)=8$

