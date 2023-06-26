
# Table of Contents

1.  [Euler&rsquo;s Theorem](#orgb7e6bb3)
    1.  [Lemma 1](#orgce49aff)
    2.  [Lemma 2](#orgcc09778)
    3.  [Proof 1:](#org347c915)
    4.  [Proof 2:](#orgc47eef5)
2.  [Proof (Euler&rsquo;s Theorem)](#org9220b93)


<a id="orgb7e6bb3"></a>

# Euler&rsquo;s Theorem


<a id="orgce49aff"></a>

## Lemma 1

If $gcd(n,k)=1$, then $ak \equiv bk (mod \ n) => a \equiv b (mod \ n)$.


<a id="orgcc09778"></a>

## Lemma 2

Suppose that $gcd(n, k) = 1$, let $k_1,...,k_r$ in ${1,2,3...,n-1}$ denote the integers relatively prime to $n$ ($r=\phi(n)$). Then $\{rem(k_1 \cdot k, n),..., rem(k_r \cdot k, n)\}=\{k_1, ... k_r\}$.


<a id="org347c915"></a>

## Proof 1:

$$rem(k_i \cdot k, n) = rem (k_j \cdot k,n)$$
$$k_i \cdot k \equiv k_j \cdot k (mod \ n)$$

$$ k_i \equiv k_j (mod \ n)$$

$$k_i \equiv k_j$$


<a id="orgc47eef5"></a>

## Proof 2:

$$gcd(m, rem(k_ik,n))= gcd(n,k_ik)=1$$

$$gcd(n, k)=1$$

$$gcd(n, k_i)=1$$


<a id="org9220b93"></a>

# Proof (Euler&rsquo;s Theorem)

$$k_1 \cdot k_2 ... k_r = rem(k_ik,n)...rem(k_rk,n)$$

$$\equiv k_1k, k_2k,..., k_rk (mod \ n)$$

$$\equiv k_1k_2, ..., k_r \cdot k^r (mod \ n)$$

$$1 \equiv k^r (mod \ n)$$

$$r = \phi(n)$$

