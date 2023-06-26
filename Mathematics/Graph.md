
# Table of Contents

1.  [Graph](#orgdbdf754)
2.  [Adjacency](#orgb169ebd)
3.  [Incidence](#orga5aae4f)
4.  [Degree of a node](#orgd2d1836)
5.  [Simple graph](#org8a4b473)
6.  [Example: Promiscuity Rate Based on Gender](#orgd50d0ce)
7.  [Bipartite Graphs](#org1bb7056)



<a id="orgdbdf754"></a>

# Graph

A graph $G$ is a pair of sets often called $V$ and $E$, where $V$ is a set of elements called **vertices** or **nodes**, and $E$ is a set of 2 items subset of $V$ called edges.


<a id="orgb169ebd"></a>

# Adjacency

Two nodes $x_i$ and $x_j$ are **adjacent** if they&rsquo;re connected by an edge $(if\ x_i,x_j) \in E$.


<a id="orga5aae4f"></a>

# Incidence

An edge $E={x_i,x_j}$ is said to be **incident** to its end points $x_i, x_j$.


<a id="orgd2d1836"></a>

# Degree of a node

The number of edges incident to a node is called the degree of the node.


<a id="org8a4b473"></a>

# Simple graph

A graph is simple if it has no loops or multiple edges.


<a id="orgd50d0ce"></a>

# Example: Promiscuity Rate Based on Gender

$A_m=$ average number of opposite gender partners for men;

$A_w=$ average number of opposite gender partners for women;

$$\frac{A_m}{A_w}=1.74, 3.33$$

$$A_m=\frac{|E|}{|V_m|}$$

$$A_w=\frac{|E|}{|V_w|}$$

$$\frac{A_m}{A_w}=\frac{|E|/|V_m|}{|E|/|V_w|}=\frac{V_m}{V_w}=1.0325$$


<a id="org1bb7056"></a>

# Bipartite Graphs

A graph $G$ is said to be **bipartite** if $V$ can be split into two sets $V_L$, $V_R$ so that all the edges connect a node in the left set to a node in the right set.

