**Conic sections** are the curves that are formed when a plane cuts a cone, as  
shown in the figure. 
For example, if a cone is cut horizontally, the cross  section is a circle. So a circle is a conic section. 
Other ways of cutting a  cone produce ellipses, parabolas, and hyperbolas.

![[2023-05-07_12-48.png]]

# Geometric Definition of a Parabola
> A parabola is the set of all points in the plane that are equidistant from a fixed point *F* (called the **focus**) and a fixed line l (called the **directrix**).

![[2023-05-07_12-51.png]]

The **vertex** *V* of the parabola lies halfway  between the focus and the directrix, and the **axis of symmetry** is the line that runs  through the focus perpendicular to the directrix.
In this section we restrict our attention to parabolas that are situated with the vertex  
at the origin and that have a vertical or horizontal axis of symmetry. 
If the focus of such a parabola is  the point F(0, p), then the axis of symmetry must be vertical, and the directrix has the equation
$$y = -p$$
#### Deriving the Equation of a Parabola
If P(x, y) is any point on the parabola, then the distance from P to the focus F is 
$$\sqrt{x^2+(y-p)^2}$$
The distance from P to the directrix is:
$$| y - (-p) = | y + p |$$
By the definition of a parabola these two distances must be equal.

$$
\begin{align}
\sqrt{x^2+(y-p)^2 } = |y+p| \\\\
x^2+(y-p)^2 = |y+p|^2 = (y+p)^2 \\\\
x^2+y^2-2py+p^2=y^2+2py+p^2 \\\\
x^2-2py=2py \\\\
x^2 = 4py
\end{align}
$$


#### Parabola with Vertical Axis
The graph of the equation $x^2=4py$ is a parabola with the following properties

- Vertex: $V(0,0)$
- Focus: $F(0,p)$
- Directrix: $y= -p$

The parabola opens upward if $p>0$ or downward if $p<0$.

![[2023-05-07_14-08.png]]

#### Parabola with Horizontal Axis
The graph of the equation $y^2=4px$ is a parabola with the following properties.

- Vertex: $V(0,0)$
- Focus: $F(p,0)$
- Directrix: $x=-p$

The parabola opens to the right if $p >0$ or to the left if $p<0$.

![[2023-05-07_14-12.png]]

# Geometric Definition of an Ellipse
An ellipse is an oval curve that looks like an elongated circle. More precisely, we have  
the following definition. 

> An ellipse is the set of all points in the plane the sum of whose distances from  
    two fixed points F1 and F2 is a constant. These two fixed points are the foci (plural of focus) of the ellipse.

### Deriving the Equation of an Ellipse
To obtain the simplest equation for an ellipse, we place the foci on the x-axis at $F_1(-c,0)$ and $F_2(c,0)$. We let the sum of the distances from a point on the ellipse to the foci be $2a$. Then if $P(x, y)$ is any point of the ellipse, we have

$$
\begin{align}
d(P,F_1) + d(P,F_2)=2a \\\\\
\sqrt{(x+c)^2+y^2}+\sqrt{(x-c)^2 + y^2} = 2a \\\\
\sqrt{(x-c)^2+y^2}=2a-\sqrt{(x+c)^2+y^2} \\\\
x^2-2cx+c^2+y^2=4a^2-4a\sqrt{(x+c)^2+y^2}+(x^2+2cx+c^2+y^2) \\\\
4a\sqrt{(x+c)^2+y^2}=4a^2+4cx\\\\
a^2[(x+c)^2+y^2]=(a^2+cx)^2 \\\\
a^2x^2+2a^2cx+a^2c^2+a^2y^2=a^4 + 2a^2cx + c^2x^2 \\\\
(a^2-c^2)x^2 +a^2y^2= a^2(a^2-c^2)\\\\
\frac{x^2}a^2 + \frac{y^2}{a^2-c^2}=1 \\\\
\frac{x^2}{a^2}+\frac{y^2}{b^2}=1 \ \ \ \ \ \ \ \ \ \ \ \ a>b\\\\
\frac{x^2}{a^2}=1
\end{align}
$$

So $x^2=a^2$ or $x=\pm a$ , thus the ellipse crosses the x-axis at $(a,0)$ and $(-a,0)$.
These points are called the **vertices** of the ellipse, and the segment that joins them is called the **major axis**. Its length is 2a.

![[2023-05-07_14-33.png]]

### Definition of Eccentricity
For the ellipse $\frac{x^2}{a^2}+\frac{y^2}{b^2}=1$ or $\frac{x^2}{b^2}+\frac{y^2}{a^2}=1$ (with $a>b>0$), the **eccentricity** *e* is the number 
$$e=\frac{c}{a}$$
where $c=\sqrt{a^2-b^2}$ . The eccentricity of every ellipse satisfies $0<e<1$.

# Geometric Definition of a Hyperbola
A **hyperbola** is the set of all points in the plane, the difference of whose dis-  
tances from two fixed points $F_1$ and $F_2$ is a constant. These two fixed points are the **foci** of the hyperbola.

### Deriving the Equation of a Hyperbola
As in the case of the ellipse, we get the simplest  equation for the hyperbola by placing the foci on the x-axis at $(\pm c,0)$. By definition, if $P(x,y)$ lies on the hyperbola, then either $d(P,F_1)-d(P,F_2)$ or $d(P,F_2)-d(P,F_1)$ must equal some positive constant, which we call 2a. Thus we have:

$$
\begin{align}
d(P,F_1)-d(P,F_2)=\pm 2a \\\\
\sqrt{(x+c)^2+y^2}-\sqrt{(x-c)^2+y^2}=\pm 2a \\\\
(c^2 - a^2)x^2 - a^2y^2 = a^2(c^2-a^2)\\\\
\frac{x^2}{a^2}-\frac{y^2}{b^2}=1 \\\\
\frac{x^2}{a^2}=\frac{y^2}{b^2}+1\ge 1
\end{align}
$$

The hyperbola  consists of two parts, called its branches. The segment joining the two vertices on the  separate branches is the transverse axis of the hyperbola, and the origin is called its center.  
If we place the foci of the hyperbola on the y-axis rather than on the x-axis, this has  the effect of reversing the roles of x and y in the derivation of the equation of the hyper-  
bola. This leads to a hyperbola with a vertical transverse axis.

![[2023-05-07_14-50.png]]

The asymptotes are lines that the hyperbola approaches for large values of x and y. To find the asymptotes in the first case we solve the equation for y to get
$$
\begin{align}
y=\pm \frac{b}{a}\sqrt{x^2-a^2} \\\\
= \pm \frac{b}{a}x\sqrt{a-\frac{a^2}{x^2}}
\end{align}
$$