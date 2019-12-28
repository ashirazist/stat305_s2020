name: inverse
layout: true
class: center, middle, inverse
---
# Chapter 5.4: Continuing Joint Distributions and Independence
## Working with Multiple Random Variables
---
# Functions of Random Variables
## Linear Combinations
---
layout:false
.left-column[
## Linear Combinations
### Defined
]
.right-column[
### Linear Combinations

Suppose that $X\_1, X\_2, ..., X\_n$ are all random variables. 

Then $U = g(X\_1, X\_2, ..., X\_n)$ is also a random variable. 

However, the probability function (or density function) for $U$ can be very, *very*, **very** difficult to find. However, there are still some things we can say generally about a certain kind of function: a linear combination

>**Linear Combination of Random Variables** </br>
> For constants $a_0, a_1, a_2, ..., a_n$ and independent random variables $X_1, X_2, ..., X_n$, let $U = a_0 + a_1 X_1 + a_2 X_2 + ... + a_n X_n$. Then $U$ is a *linear combination* of the random variables.
]
---
layout:false
.left-column[
## Linear Combinations
### Defined
### Example
]
.right-column[
### Linear Combination Example I

Suppose that $X$ and $Y$ are two random variables.

Let $U = 5 - 2 X + \sin(\pi/8) Y$

Then $U$ is a linear combination of $X$ and $Y$. Here's why:

- $a_0 = 5$

- $a_1 = -2$

- $a_2 = \sin(\pi/8)$

]
---
layout:false
.left-column[
## Linear Combinations
### Defined
### Example
### Expectation
]
.right-column[
### Expected Value of Linear Combination

In most cases, if $U = g(X\_1, X\_2, ..., X\_n)$ then to get the expected value we have to find the joint probability function of $X_1, X_2, ..., X_n$ is also a random variable ($f(x_1, x_2, ..., x_n)$). This is (as we said before) really, really hard! Then we have to do a sum/integration over all the random variables in the distribution!

However, there is a special result for linear combinations, as long as the random variables are independent:

>**Expected Value of Lin. Comb. of RVs** </br>
>For constants $a_0, a_1, a_2, ..., a_n$ and independent random variables $X_1, X_2, ..., X_n$, let 
>$$U = a_0 + a_1 X_1 + a_2 X_2 + ... + a_n X_n$$
>Then 
>$$E(U) = a_0 + a_1 E(X_1) + a_2 E(X_2) + ... a_n E(X_n)$$

]
---
layout:false
.left-column[
## Linear Combinations
### Defined
### Example
### Expectation
### Variance
]
.right-column[
### Variance of Linear Combination

The process for getting the variance of a function of random variables is usually even more difficult than the process of getting the expected value.

However, there is a special result for linear combinations, as long as the random variables are independent:

>**Variance of Lin. Comb. of RVs** </br>
>For constants $a_0, a_1, a_2, ..., a_n$ and independent random variables $X_1, X_2, ..., X_n$, let 
>$$U = a_0 + a_1 X_1 + a_2 X_2 + ... + a_n X_n$$
>Then 
>$$Var(U) = a_1^2 Var(X_1) + a_2^2 Var(X_2) + ... a_n^2 Var(X_n)$$

Notice that the $a_0$ drops away. Since it's just a constant and doesn't connect to one of the random variables, it never varies - so the variance of that part is 0.
]
---
layout:false
.left-column[
## Linear Combinations
### Defined
### Example
### Expectation
### Variance
### Example
]
.right-column[
### Linear Combination Example II

Suppose that $X \sim N(5, 4)$ and $Yi \sim N(-3, 9)$ are independent random variables.

Let $U = 5 - 2 X + \sin(\pi/8) Y$. Then

$$ \begin{aligned} E(U) &= 5 - 2 E(X) + \sin(\pi/8) E(Y) \\\\ &= 5 - 2 (5) + \sin(\pi/8) (-3) \\\\ &= - 5 - 3 \sin(\pi/8) (-3) \\\\ \\\\ Var(U) &= (-2)^2 Var(X) + (\sin(\pi/8))^2 Var(Y) \\\\ &= 4 (4) + \sin^2(\pi/8) (9) \end{aligned} $$
]
---
layout:false
.left-column[
## Linear Combinations
### Defined
### Example
### Expectation
### Variance
### Example
### Example
]
.right-column[
### Modeling A System With Random Variables

Suppose that River U has two tributaries, River X and River Y with the following additional pieces of information:

- River X has a baseline volume that flows into River U (say, $V_X$)
- River Y has a baseline volume that flows into River U (say, $V_Y$)
- The volume flowing from each river could exceed the baseline
- The volume flowing from River X and River Y are not related
- If the volume flowing into River U from the two tributaries exceeds $M$, River U will overflow

Model this system and determine a formula for the probability that River U will overflow.

]
---
layout:false
.left-column[
## Linear Combinations
## Central Limit Theorem
]
.right-column[
### Central Limit Theorem

The most important result in statistics

>**Central Limit Theorem** </br>
> If $X_1, X_2, ..., X_n$ are independent and identically distributed (iid) random variables each with mean $\mu$ and variance $\sigma^2$ and let the random variable $\bar{X} = \frac{1}{n} X_1 + \frac{1}{n} X_2 + \ldots + \frac{1}{n} X_n$. Then
>1. $E(\bar{X}) = \mu$ 
>2. $Var(\bar{X}) = \sigma^2/n$
>3. For large $n$, $\bar{X}$ is approximately normally distributed (limit goes to normal...)

Example 25 (page 317) in the book provides a wonderful illustration of this
]
