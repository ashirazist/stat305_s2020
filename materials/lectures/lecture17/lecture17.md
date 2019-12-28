name: inverse
layout: true
class: center, middle, inverse
---
# Chapter 5.4: Joint Distributions and Independence
## Working with Multiple Random Variables
---
layout:false
.left-column[
## Joint Distributions
### Recap
]
.right-column[
### Recap: Joint Distributions

When we talk about the random variable $X$ by itself, we are talking about one specific aspect of a random event. 

However, we are often concerned with more than one specific aspect of the outcome of a random event. 

In other words, since Random Variables are just values that we record based on a random event's outcome, we are often interested in more than one random variable and how those random variables behave simultaneously (or _jointly_). 
]
---
layout:false
.left-column[
## Joint Distributions
### Recap
]
.right-column[
### Recap: Joint Distributions (cont)

We describe the way more than one random variable behave _jointly_ using **joint distributions**

  - For discrete random variables, we use **the joint probability function**, a function $f(x, y)$ where
  $$P(X=x, Y=y) = f(x, y)$$

  - For continuous random variables, we use **the joint probability density function**, a function $f(x, y)$ where
  $$P(a \le X \le b, c \le Y \le d) = \int\_{c}^{d} \int\_{a}^{b} f(x, y) dx dy$$

These random variables may be connected with each other: for instance, if we measure the conditions outside, we are likely to find that it is common to see high temperature and high humidity together and less likely to see high heat and low humidity together - regardless of how likely high heat is by itself.

]
---
layout:false
.left-column[
## Joint Distributions
### Recap
]
.right-column[
### Recap: Joint Distributions (cont)

If we know how both random variables behave together (in other words, if we know the joint distribution) then we can get the way they behave alone (the single random variables distribution, which in this context we call the **marginal distribution**):

>**Joint Distribution to Marginal Distribution** </br> </br>
>For discrete random variables $X$ and $Y$:
>$$
>f\_{X}(x) = \sum\_{y} f\_{XY}(x, y) 
>$$
>For continuous random variables $X$ and $Y$:
>$$
>f\_{X}(x) = \int\_{\infty}^{\infty} f\_{XY}(x, y) dy
>$$
]
---
layout:false
.left-column[
## Joint Distributions
### Recap
### Example
]
.right-column[
### Connecting Joint and Marginal Distributions (continued)

**Example:**

Suppose that $X$ and $Y$ have joint probability function:
$$
f\_{XY}(x, y) = 
\begin{cases} 
   c \exp\left(-\dfrac{2x + 3y}{6}\right) & x \ge 0, y \ge 0 \\\\
   0 & o.w.
\end{cases}
$$
where $c$ is a constant.

1. Find the value of $c$ that makes this a valid probability function.

2. Sketch the density.

3. Find the marginal density function of $X$.

4. Find the expected value of $Y$.
]
---
name: inverse
layout: true
class: center, middle, inverse
---
# Conditional Distributions 
## and 
# Independence
---
layout:false
.left-column[
## Joint Distributions
## Conditional Distributions
]
.right-column[
### Conditional Distributions

Recall Lecture 12 and 13 and the idea of conditional probability. We have the same concept in distributions: if we know information about the random variable $Y$, then we may be changing how likely we are to see certain values for $X$.

>**Conditional Distributions for Discrete RVs** </br> </br>
>For discrete random variables $X$ and $Y$, the conditional probability function of $X$ given that $Y = y$ is
>$$
>f\_{X|Y}(x) = \dfrac{ f\_{XY}(x, y) }{ f\_Y(y) }
>$$

This is how we find the probability that $X = x$ if we know that $Y = y$.

]
---
layout:false
.left-column[
## Joint Distributions
## Conditional Distributions
]
.right-column[
### Conditional Distributions

The same rule applies for the continuous random variables:

>**Conditional Distributions for continuous RVs** </br> </br>
>For continuous random variables $X$ and $Y$, the conditional probability density function of $X$ given that $Y = y$ is
>$$
>f\_{X|Y}(x|y) = \dfrac{ f\_{XY}(x, y) }{ f\_Y(y) }
>$$

This is how we express probability density for $X$ if we know that $Y = y$.

]
---
layout:false
.left-column[
## Joint Distributions
## Conditional Distributions
### Examples
]
.right-column[
### Example: Example 19 in text book

Suppose that $S$ and $R$ have joint probability density function:
$$
f\_{SR}(s, r) = \frac{1}{16.5} e^{\left(-\frac{s}{16.5}\right)} \frac{1}{\sqrt{2 \pi (.25)}} e^{\left(-(r-s)^2/2(.25)\right)}
$$
if $s > 0$ and is 0 otherwise.

1. Find the $f\_{S|R}(s|r)$. What is the distribution of $S$ if $R = r$?

2. Find the expected value of $S$ given $R = 2$.

3. Find the expected value of $S$ given $R = 3$.
]
---
layout:false
.left-column[
## Joint Distributions
## Conditional Distributions
### Examples
]
.right-column[
### Example

Suppose that $X$ and $Y$ have joint probability function:
$$
f\_{XY}(x, y) = 
\begin{cases} 
   c \exp\left(-\dfrac{2x + 3y}{6}\right) & x \ge 0, y \ge 0 \\\\
   0 & o.w.
\end{cases}
$$
where $c$ is a constant.

1. Find the $f\_{X|Y}(x|y)$. What is the distribution of $X$ if $Y = y$?

2. Find the expected value of $X$ given $Y = 2$.

3. Find the expected value of $X$ given $Y = 3$.

4. What is the difference between the way these two examples?
]
---
layout:false
.left-column[
## Joint Distributions
## Conditional Distributions
### Examples
### Independence
]
.right-column[
### Independence

The big difference between the distributions in the last two examples is that while changing the value taken by $R$ changes the likelihood of values $S$ can take, changing $Y$ has no impact on the likelihood of the values $X$ can take. We call $X$ and $Y$ **independent** random variables.

>**Independence** </br> </br>
>For discrete or continuous random variables $X$ and $Y$, we say $X$ and $Y$ are independent if and only ifif the conditional probability density function of $X$ given that $Y = y$ is
>$$
>f\_{XY}(x,y) = f\_{X}(x) \cdot f\_{Y}(y)
>$$

This concept is hugely important in statistics.

]
---
layout:false
.left-column[
## Joint Distributions
## Conditional Distributions
### Examples
### Independence
]
.right-column[
### Independence (cont)

**Example**

Suppose that $Z_1, Z_2, Z_3, Z_4$ are independent random variables and that each follows a standard normal distribution. 

Find the joint pdf $f(z_1, z_2, z_3, z_4)$.

]
---
layout:false
.left-column[
## Joint Distributions
## Conditional Distributions
### Examples
### Independence
]
.right-column[
### Wrap Up Example

**Example**: Section 5.4 Exercise 5

]
