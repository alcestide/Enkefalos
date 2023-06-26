
# Table of Contents

1.  [Substitution Method](#substitution-method)
    1.  [Example 1 - Substitution Method](#example-1---substitution-method)
2.  [Elimination Method](#elimination-method)
3.  [Graphical Method](#graphical-method)
    1.  [Example 3 - Graphical Method](#example-3---graphical-method)
4.  [Number of Solutions of a Linear System in Two Variables](#number-of-solutions-of-a-linear-system-in-two-variables)
5.  [Guidelines For Modeling With Systems of Equations](#guidelines-for-modeling-with-systems-of-equations)
6.  [Solving a Linear System](#solving-a-linear-system)
    1.  [Example 1 - Solving a Triangular System Using Back Substitution](#example-1---solving-a-triangular-system-using-back-substitution)
    2.  [Example 2 - Solving a System of Three Equations in Three Variables](#example-2---solving-a-system-of-three-equations-in-three-variables)
7.  [The Number of Solutions of a Linear System](#the-number-of-solutions-of-a-linear-system)
8.  [Matrices and Systems of Linear Equations](#matrices-and-systems-of-linear-equations)
9.  [Definition of Matrix](#definition-of-matrix)
10. [The Augmented Matrix of a Linear System](#the-augmented-matrix-of-a-linear-system)

A **system of equations** is a set of equations that involve the same
variables. A system of linear equations is a system of equations in
which each equation is linear.

A solution of a system is an a\*ssignment of values\* for the variables
that makes each equation in the system **true**.

To solve a system means to find **all solutions** of the system.  
Here is an example of a system of linear equations in two variables:

$$2x-y=5$$
$$x+4y=7$$

We can check that $x = 3$ and $y = 1$ is a solution of this system.


<a id="substitution-method"></a>

# Substitution Method

1.  *Solve for one Variable*. Choose one equation, and solve for one
    variable in  
    terms of the other variable.
2.  *Substitute*. Substitute the expression you found in Step 1 into the
    other  
    equation to get an equation in one variable, then solve for that
    variable.
3.  *Back-Substitute*. Substitute the value you found in Step 2 back into
    the  
    expression found in Step 1 to solve for the remaining variable.


<a id="example-1---substitution-method"></a>

## Example 1 - Substitution Method

$$2x+y=1$$

$$3x+4y=14$$

We solve for y in the first equation.

$$y=1-2x$$

Now we substitute for y in the second equation and solve for x.

$$3x+4(1-2x)=14$$

$$3x+4-8x=14$$

$$-5x+4=14$$

$$-5x=10$$

$$x=-2$$

Next we back-substitute x=-2 into the equation y=1-2x


<a id="elimination-method"></a>

# Elimination Method

1.  **Adjust the Coefficients**. Multiply one or more of the equations by
    appropriate numbers so that the coefficient of one variable in one
    equation is the negative of its coefficient in the other equation.
2.  **Add the Equations**. Add the two equations to eliminate one variable,
    then solve for the remaining variable.
3.  **Back-Substitute**. Substitute the value that you found in Step 2 back
    into one of the original equations, and solve for the remaining
    variable. ### Example 2 - Elimination Method

$$3x+2y=14$$

$$x-2y=2$$

Since the coefficients of the y terms are negatives of each other, we
can add the equations to eliminate y.

$$4x=16$$

$$x=4$$

Now we back-substitute x = 4 into one of the original equations and
solve for y. Let&rsquo;s  
choose the second equation because it looks simpler.

$$x-2y=2$$

$$4-2y=2$$

$$-2y=-2$$

$$y=1$$


<a id="graphical-method"></a>

# Graphical Method

1.  **Graph Each Equation**. Express each equation in a form suitable for
    the graphing calculator by solving for y as a function of x. Graph
    the equations  
    on the same screen.
2.  **Find the Intersection Point(s)**. The solutions are the x- and
    y-coordinates of the point(s) of intersection.


<a id="example-3---graphical-method"></a>

## Example 3 - Graphical Method

$$1.35x - 2.13y = -2.36$$

$$2.16x+0.32y=1.06$$

Solving for y in terms of x, we get the equivalent system

\\[
\left \\{ 

\begin{aligned}
y= 0.63x + 1.11 \\\\
y= -6.75x + 3.31
\end{aligned}

\right.
\\]


<a id="number-of-solutions-of-a-linear-system-in-two-variables"></a>

# Number of Solutions of a Linear System in Two Variables

For a system of linear equations in two variables, exactly one of the
following  
is true.  

1.  The system has exactly one solution.
2.  The system has no solution.
3.  The system has infinitely many solutions.


<a id="guidelines-for-modeling-with-systems-of-equations"></a>

# Guidelines For Modeling With Systems of Equations

1.  **Identify the Variables**. Identify the quantities that the problem
    asks you to find. These are usually determined by a careful reading
    of the question posed at the end of the problem. Introduce notation
    for the variables (call them x and y or some other letters).
2.  **Express All Unknown Quantities in Terms of the Variables**. Read the
    problem again, and express all the quantities mentioned in the
    problem in terms of the variables you defined in Step 1.
3.  **Set up a System of Equations**. Find the crucial facts in the problem
    that give the relationships between the expressions you found in
    Step 2. Set up a system of equations (or a model) that expresses
    these relationships.
4.  **Solve the System and Interpret the Results**. Solve the system you
    found in Step 3, check your solutions, and state your final answer as
    a sentence that answers the question posed in the problem.


<a id="solving-a-linear-system"></a>

# Solving a Linear System

The following are two examples of systems of linear equations in **three**
variables. The  
second system is in **triangular form**; that is, the variable x doesn&rsquo;t
appear in the second equation, and the variables x and y do not appear
in the third equation.

\\[
\left \\{ 

\begin{aligned}
x-2y-z=1 \\\\
-x+3y+3z=4 \\\\
2x-3y+z=10
\end{aligned}

\right.
\\]

\\[
\left \\{ 

\begin{aligned}
x-2y-z=1 \\\\
y+2z=5 \\\\
z=3 
\end{aligned}

\right.
\\]


<a id="example-1---solving-a-triangular-system-using-back-substitution"></a>

## Example 1 - Solving a Triangular System Using Back Substitution

\\[
\left \\{ 

\begin{aligned}
x-2y-z=1 \\\\
y+2z=5 \\\\
z=3
\end{aligned}

\right.
\\]

From the last equation we know that z=3. We back-substitute this into
the second equation and solve for y.

\\[
\left \\{ 

\begin{aligned}
y+2(3)=5 \\\\
y=-1
\end{aligned}

\right.
\\]

Then we back-substitute y = 1 and z = 3 into the first equation and
solve for x.

\\[
\left \\{ 

\begin{aligned}
x-2(-1)-(3)=1 \\\\
x=2
\end{aligned}

\right.
\\]

The solution of the system is x = 2, y = -1, z = 3. We can also write
the solution  
as the ordered triple (2, -1, 3).


<a id="example-2---solving-a-system-of-three-equations-in-three-variables"></a>

## Example 2 - Solving a System of Three Equations in Three Variables

Solve the following system using **Gaussian** elimination:

\\[
\left \\{ 

\begin{aligned}
x-2y+3z=1 \\\\
x+2y-z=13 \\\\
3x+2y-5z=3
\end{aligned}

\right.
\\]

We need to change this to a triangular system, so we begin by
eliminating the x-term from the second equation

\\[

\begin{aligned}
x+2y-z=13& \\\
\underline{\quad x-2y+3z=1}& \\\
4y-4z=12&
\end{aligned}

\\]

This gives us a new equivalent system that is one step closer to
**triangular** form.

\\[
\left \\{ 

\begin{aligned}
x-2y+3z=1 \\\\
4y-4z=12 \\\\
3x+2y-5z=3
\end{aligned}

\right.
\\]

\\[
\left \\{ 

\begin{aligned}
x-2y+3z=1 \\\\
4y-4z=12 \\\\
8y-14z=0
\end{aligned}

\right.
\\]

\\[
\left \\{ 

\begin{aligned}
x-2y+3z=1 \\\\
4y-4z=12 \\\\
-6z=-24
\end{aligned}

\right.
\\]

\\[
\left \\{ 

\begin{aligned}
x-2y+3z=1 \\\\
y-z=3 \\\\
z=4
\end{aligned}

\right.
\\]

We then use back-substitution to solve the system.

\\[

\begin{aligned}
y-(4)=3 \\\\
y=7
\end{aligned}

\\]

Now we back-substitute y=7 and z=4 and solve for x

\\[

\begin{aligned}
x-2(7)+3(4)=1 \\\\
x=3
\end{aligned}

\\]

The solution of the system is (3, 7, 4).


<a id="the-number-of-solutions-of-a-linear-system"></a>

# The Number of Solutions of a Linear System

For a system of linear equations, exactly one of the following is true.

1.  The system has exactly one solution.
2.  The system has no solution.
3.  The system has infinitely many solutions.

A system with no solution is said to be **inconsistent**, and a system
with infinitely  
many solutions is said to be **dependent**. As we see in the next example,
a linear system has no solution if we end up with a false equation after
applying Gaussian elimination to the system.


<a id="matrices-and-systems-of-linear-equations"></a>

# Matrices and Systems of Linear Equations

A **matrix** is simply a rectangular array of numbers. Matrices\* are used
to organize information into categories that correspond to the rows and
columns of the matrix.

\\[

\begin{aligned}
2x-y=5 \\\\
x+4y=7
\end{aligned}

\\]

\\[

\begin{vmatrix}
2 & -1 & 5\\
1 & 4 & 7
\end{vmatrix}

\\]


<a id="definition-of-matrix"></a>

# Definition of Matrix

An $m \times n$ matrix is a rectangular array of numbers with m rows
and n columns. We say that the matrix has dimension $m \times n$. The
numbers $a_ij$ are the entries  
of the matrix. The subscript on the entry $a_ij$ indicates that it is
in the ith row and  
the jth column.


<a id="the-augmented-matrix-of-a-linear-system"></a>

# The Augmented Matrix of a Linear System

We can write a system of linear equations as a matrix, called the
**augmented matrix** of the system, by writing only the coefficients and
constants that appear in the equations.  
Here is an example.

**Linear system:**

\\[
\left \\{

\begin{aligned}
3x-2y+z=5 \\\\
x+3y-=0 \\\\
-x+4z=11
\end{aligned}

\right.
\\]

**Augmented matrix:**

\\[

\begin{vmatrix}
 3 & -2 & 1 & 5 \\
 1 & 3 & -1 & 0 \\ 
 -1 & 0 \ & 4 & 11 
\end{vmatrix}

\\]

