name: inverse
layout: true
class: center, middle, inverse
---
# Lecture 16: Continuous Random Variables
## Terminology, Use, and Common Distributions
.footnote[Course page: [imouzon.github.io/stat305](https://imouzon.github.io/stat305)]
---
# The Normal Distribution
## It's Definition, Use, and Importance
.footnote[Course page: [imouzon.github.io/stat305](https://imouzon.github.io/stat305)]
---
layout:false
.left-column[
## The Normal Distribution
### Definition
]
.right-column[
## The Normal Distribution

**Origin**: Arises from situations in which we believe the random variable could take almost any value, but we have reason to believe it will be close to one value in particular. 

>**Definition: Normal Distribution** </br>
>The normal distribution is a continuous probability distribution with two parameters, $\mu$ and $\sigma^2$ (which must be positive), and probability density function
>$$ 
>\begin{align}
>f(x) &= \dfrac{1}{\sqrt{2 \pi \sigma^2}} e^{-(x - \mu)^2/2\sigma^2} \\\\
>     &= \dfrac{1}{\sqrt{2 \pi \sigma^2}} \exp\left(-\frac{1}{2\sigma^2}(x - \mu)^2\right) \\\\
>\end{align} 
>$$

We say that a random variable is "normally distributed" if it follows a normal distribution or that $X \sim N(\mu, \sigma^2)$.

]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
]
.right-column[

### The Normal Distribution

Regardless of the values of $\mu$ and $\sigma^2$, the normal pdf has the following shape:
<center>
<img src="normal_pdf.png" alt="normal_pdf" width="400"/>
</center>

In other words, the distribution is centered around $\mu$ and has an inflection point at $\sigma = \sqrt{\sigma^2}$.

In this way, the value of $\mu$ determines the center of our distribution and the value of $\sigma^2$ deterimes the spread. 

]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
]
.right-column[
### Normal Distribution's Center and Shape

Here we can see what differences in $\mu$ and $\sigma^2$ do to the shape of the shape of distribution
<center>
<img src="normal_pdf.png" alt="normal_pdf" width="400"/>
</center>

]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
]
.right-column[
### The Normal Distribution

While it requires levels of mathematics beyond what we can introduce here in this course, it is possible to show that the parameters also lead to the following:

<center>
<img src="normal_pdf.png" alt="normal_pdf" width="300"/>
</center>

>**Mean and Variance of Normal Distribution** </br>
>If $X \sim N(\mu, \sigma^2)$ then $E(X) = \mu$ and $Var(X) = \sigma^2$. We call $\mu$ the mean of the distribution and $\sigma^2$ the variance of the distribution.


]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
### Standard Normal
]
.right-column[
### Standard Normal Distribution

The parameters are important in determining the probability, but because the pdf of a normal random variable is difficult to work with we often use the distribution with $\mu = 0$ and $\sigma^2 = 1$ as a reference point. 

>**Definition: Standard Normal Distribution** </br>
>The standard normal distribution is a normal distribution with $\mu=0$ and $\sigma^2=1$. It has pdf
>$$ 
>\begin{align}
>f(z) &= \dfrac{1}{\sqrt{2 \pi}} e^{-\frac{1}{2} z^2} \\\\
>     &= \dfrac{1}{\sqrt{2 \pi}} \exp\left(-\frac{1}{2} z^2\right) \\\\
>\end{align} 
>$$

We say that a random variable is a "standard normal random variable" if it follows a standard normal distribution or that $Z \sim N(0, 1)$.
]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
### Standard Normal
]
.right-column[
### Standard Normal Distribution (cont)

It's worth pointing out the reason why the standard normal distribution is important. There is no "closed form" for the cdf of a normal distribution. 

In other words, since we can't finish this step:
$$
F(x) = \int_{-\infty}^{x} \dfrac{1}{\sqrt{2 \pi \sigma^2}} e^{-\frac{1}{2 \sigma^2} (t - \mu)^2} dt = ???
$$

we have to estimate the value each time. However, we have already done this for _standard_ normal random variables already in **Table B.3**

So if $Z \sim N(0, 1)$ then $P(Z \le 1.5) = F(1.5) = 0.9332$.

The good news is that we can connect any normal probabilities to the values we have for the standard normal probabilities.
]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
### Standard Normal
]
.right-column[
### Standard Normal Distribution (cont)

These facts drive the connection between different normal random variables:

>**Key Facts: Converting Normal Distributions**</br>
> If $X \sim N(\mu, \sigma^2)$ and $Z = \dfrac{X - \mu}{\sigma}$ then $Z \sim N(0, 1)$
> &nbsp;</br>
> &nbsp;</br>
> If $Z \sim N(0, 1)$ and $X = \sigma Z + \mu$ then $X \sim N(\mu, \sigma^2)$

We use this connection as a way to avoid working with the normal pdf directly. 
]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
### Standard Normal
]
.right-column[
### Standard Normal Distribution (cont)

**Example: Normal to Standard Normal**

If $X \sim N(3, 4)$ then:
$$
\begin{align}
P(X \le 6) &= P\left(\frac{X - 3}{2} \le \frac{6 - 3}{2} \right)\\\\
                 &= P(Z \le 1.5) \\\\
                 &= 0.9332
\end{align}
$$
where the valeu 0.9332 if found from **Table B.3**
]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
### Standard Normal
]
.right-column[

### Standard Normal Distribution (cont)

**Example: Standard Normal to Normal**

For $X \sim N(4, 2)$, find the value of $x$ so that $P(X \le x) = 0.3446$.

From Table B.3 in the text book, we find that for $Z \sim N(0, 1)$ then $P(Z \le -0.40) = 0.3446$. So we just "convert" that probability to a probability for $X$:
$$
\begin{align}
P(Z \le -0.40) 
&= P\left(\sigma Z + \mu \le \sigma (-0.40) + \mu \right) \\\\
&= P\left(\sqrt{2} Z + 4 \le \sqrt{2} (-0.40) + 4 \right) \\\\
&= P\left(X \le \sqrt{2} 4.565685 \right) \\\\
&= 0.3446 
\end{align}
$$

So if $P(X \le x) = 0.3446$ is $x = 4.5656586$.
]
---
.left-column[
## The Normal Distribution
### Definition
### Center and Shape
### Standard Normal
]
.right-column[
### Standard Normal Distribution (cont)

Here's how why that conversion works out mathematically: Suppose that $X \sim N(\mu, \sigma^2)$. Then for any $a$ and $b$, we can say:
\begin{align}
P(a \le X \le b) &= \int_{a}^{b} \frac{1}{2 \pi \sigma^2} exp\left(-\frac{1}{2 \sigma^2} (x - \mu)^2 \right) dx \\\\
\end{align}

substituting for $x$ using $x = \sigma z + \mu$ and $dx = \sigma dz$ gives us new boundaries

\begin{align}
P(a \le X \le b) &= \int_{(a-\mu)/\sigma}^{(b-\mu)/\sigma} \frac{1}{2 \pi} exp\left(-\frac{1}{2} z^2 \right) dz \\\\
                 &= P\left(\frac{a - \mu}{\sigma} \le Z \le \frac{b - \mu}{\sigma}\right) \\\\
                 &= P\left(Z \le \frac{b - \mu}{\sigma}\right) - P\left(Z \le \frac{a - \mu}{\sigma}\right)
\end{align}

]
---
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
]
.right-column[
## Joint Distributions

We often need to consider two random variables together - for instance, we may consider
- the length and weight of a squirrel,
- the loudness and clarity of a speaker,
- the blood concentration of Protein A, B, and C
and so on.

This means that we need a way to describe the probability of two variables _jointly_. We call the way the probability is simultaneously assigned the "joint distribution".

]
---
layout:false
.left-column[
## Joint Distributions
### Discrete RVs
]
.right-column[
### Joint Distributions for Discrete RVs

For discrete random variables, we describe the joint distribution mathematically using a _joint probability function_:

>**Definition: Joint Probability Function** </br>
>Suppose $X$ and $Y$ are two discrete random variables. Then the _joint probability function_ is a non negative function $f(x, y)$ where
>$$\sum\_{x} \sum\_{y} f(x, y) = 1$$
>defined so that
>$$ f(x, y) = P\left(X = x, Y = y\right) $$

]
---
layout:false
.left-column[
## Joint Distributions
### Discrete RVs
]
.right-column[
### Clear Notation for Joint Distributions of Discrete RVs

So we have probability functions for $X$, probability functions for $Y$ and now a probability function for $X$ and $Y$ together - that's a lot of $f$s floating around though! In order to be clear which function we refer to when we refer to "$f$", we also add some subscripts

Suppose $X$ and $Y$ are two discrete random variables.

- we may need to identify the _joint probability function_ using $f_{XY}(x, y)$, 

- we may need to identify the probability function of $X$ by itself (aka the _marginal probability function_ for $X$) using $f_{X}(x)$,

- we may need to identify the probability function of $Y$ by itself (aka the _marginal probability function_ for $Y$) using $f_{Y}(y)$

]
---
layout:false
.left-column[
## Joint Distributions
### Discrete RVs
]
.right-column[
### Connecting Joint and Marginal Distributions

We can recover the marginal distribution from the joint distribution:

>**Use: Joint to Marginal for Discrete RVs** </br>
>Let $X$ and $Y$ be discrete random variables with joint probability function 
>Then the marginal probability function for $X$ can be found by:
>$$
>f\_{X}(x) = \sum\_{y} f\_{XY}(x, y) 
>$$
>and the marginal probability function for $Y$ can be found by:
>$$
>f\_{Y}(y) = \sum\_{x} f\_{XY}(x, y) 
>$$
]
---
layout:false
.left-column[
## Joint Distributions
### Discrete RVs
]
.right-column[
### Connecting Joint and Marginal Distributions

**Example:**

Consider rolling a red die and a blue die. Let $R$ be the number of dots facing up on the red die and $B$ be the number of dots facing up on the blue die. Describe the joint probability function of $R$ and $B$. Use the joint to find the marginal probability function for $R$. 

]
---
layout:false
.left-column[
## Joint Distributions
### Discrete RVs
### Continuous RVs
]
.right-column[
### Joint Distributions for Continuous RVs

For continuous random variables, we have similar properties - as you might expect, though, we are not using integration instead of summation.

>**Definition: Joint Probability Density Function** </br>
>Suppose $X$ and $Y$ are two continuous random variables. Then the _joint probability function_ is a non negative function $f(x, y)$ defined so that
>$$ \int \int f(x, y) dx dy = 1$$
>with values that describe the distribution of the probability such that:
>$$ P(a \le X \le b, c \le Y \le d) = \int\_{c}^{d} \int\_{a}^{b} f(x, y) dx dy$$

]
---
layout:false
.left-column[
## Joint Distributions
### Discrete RVs
### Continuous RVs
]
.right-column[
### Connecting Joint and Marginal Distributions

We can also recover the marginal density function the joint density function:

>**Use: Joint to Marginal for Continuous RVs** </br>
>Let $X$ and $Y$ be discrete random variables with joint probability function 
>Then the marginal probability function for $X$ can be found by:
>$$
>f\_{X}(x) = \int\_{-\infty}^{\infty} f\_{XY}(x, y) dy
>$$
>and the marginal probability function for $Y$ can be found by:
>$$
>f\_{X}(x) = \int\_{-\infty}^{\infty} f\_{XY}(x, y) dx
>$$
]
---
layout:false
.left-column[
## Joint Distributions
### Discrete RVs
### Continuous RVs
]
.right-column[
### Connecting Joint and Marginal Distributions (continued)

**Example:**

Suppose that $X$ and $Y$ have joint probability function:
$$
f\_{XY}(x, y) = 
\begin{cases} 
   c \exp\left(\dfrac{2x + 3y}{6}\right) & x \ge 0, y \ge 0 \\\\
   0 & o.w.
\end{cases}
$$
where $c$ is a constant.

1. Find the value of $c$ that makes this a valid probability function.

2. Sketch the density.

3. Find the marginal density function of $X$.

4. Find the expected value of $Y$.
]
