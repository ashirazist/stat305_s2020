name: inverse
layout: true
class: center, middle, inverse
---
# Lecture 14: Discrete Random Variables
## Common Distributions
.footnote[Course page: [imouzon.github.io/stat305](https://imouzon.github.io/stat305)]
---
# Common Distributions
## Working with Off The Shelf Random Variables
---
layout:false
.left-column[
## Common Distributions
### Background
]
.right-column[
## Common Distributions

### Why Are Some Distributions Worth Naming?

Even though you may create a random variable in a unique scenario, the way that it's probability distribution behaves (mathematically) may have a lot in common with other random variables in other scenarios. For instance,

> I roll a die until I see a 6 appear and then stop. I call $X$ the number of times I have to roll the die in total. 

> I flip a coin until I see heads appear and then stop. I call $Y$ the number of times I have to flip the coin in total.

> I apply for home loans until I get accepted and then I stop. I call $Z$ the number of times I have to apply for a loan in total.

]
---
.left-column[
## Common Distributions
### Background
]
.right-column[
### Why Are Some Distributions Worth Naming? (cont)

In each ot the above cases, we count the number of times we have to do some action until we see some specific result. The only thing that really changes from the random variables perspective is the likelyhood that we see the specific result each time we try.

Mathematically, that's not a lot of difference. And if we can really understand the probability behavior of one of these scenarios then we can move our understanding to the different scenario pretty easily.

By recognizing the commonality between these scenarios, we have been able to identify many random variables that behave very similarly.
We describe the similarity in the way the random variables behave by saying that they have a common/shared distribution.

We study the most useful ones by themselves.

]
---
layout: true
class: center, middle, inverse
---
# The Bernoulli Distribution
---
layout: false
.left-column[
## Common Distributions
### Background
### Bernoulli
]
.right-column[
### The Bernoulli Distribution

**Origin**: A random experiment is performed that results in one of two possible outcomes: successful or failure. The probability of a successful outcome is $p$.

**Definition**: $X$ takes the value 1 if the outcome is a success. $X$ takes the value 0 if the outcome is a failure.

**probability function**:

With $0 < p < 1$,
$$ 
f(x) = \begin{cases}
p & x = 1, \\\\
1-p & x = 0, \\\\
0 & o.w.
\end{cases}
$$
which can also be written as
$$ 
f(x) = \begin{cases}
p^x (1-p)^{1-x} & x = 0, 1 \\\\
0 & o.w.
\end{cases}
$$

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
]
.right-column[
### The Bernoulli Distribution

**Expected value**: $ E(X) = p $

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
]
.right-column[
### The Bernoulli Distribution

**Variance**: $ Var(X) = (1-p) \cdot p $

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
]
.right-column[
### The Bernoulli Distribution

A few useful notes:

- In order to say that "$X$ has a bernoulli distribution with success probability $p$" we write $X \sim Bernoulli(p)$

- Trials which results in which the only possible outcomes are "success" or "failure" are called **Bernoulli Trials**

- The value $p$ is the Bernoulli distribution's **parameter**. We don't treat parameters like random values - they are fixed, related to the real process we are studying.

- "Success" does not mean something we would perceive as "good" has happened. It just means the outcome we were watching for was the outcome we got.

- Please note: we have two outcomes, but the probability for each outcome is **not** the same (duh!).

]
---
layout: true
class: center, middle, inverse
---
# The Binomial Distribution
---
layout: false
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
]
.right-column[
### The Binomial Distribution

**Origin**: A series of $n$ independent random experiments, or trials, are performed. Each trial results in one of two possible outcomes: successful or failure. The probability of a successful outcome, $p$, is the same across all trials.

**Definition**: For $n$ trials, $X$ is the number of trials with a successful outcome. $X$ can take values $0, 1, \ldots, n$.

**probability function**:

With $0 < p < 1$,
$$ 
f(x) = \begin{cases}
\dfrac{n!}{x!(n-x)!} p^x (1-p)^{n-x} & x = 0, 1, \ldots, n \\\\
0 & o.w.
\end{cases}
$$
where $n! = n \cdot (n-1) \cdot (n-2) \cdot \ldots \cdot 1$ and $0! = 1$.

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
]
.right-column[
### The Binomial Distribution

**Expected value**: $ E(X) = n \cdot p $

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
]
.right-column[
### The Binomial Distribution

**Variance**: $ Var(X) = n \cdot (1-p) \cdot p $

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
]
.right-column[
### The Binomial Distribution

A few useful notes:

- In order to say that "$X$ has a binomial distribution with $n$ trials and success probability $p$" we write $X \sim Binomial(n, p)$

- If $X_1, X_2, \ldots, X_n$ are $n$ independent Bernoulli random variables with the same $p$ then $X = X_1 + X_2 + \ldots + X_n$ is a binomial random variable with $n$ trials and success probability $p$.

- Again, $n$ and $p$ are referred to as "parameters" for the Binomial distribution. Both are considered fixed.

- Don't focus on the actual way we got the expected value - focus on the trick of trying to get part of your complicated summation to "go away" by turning it into the sum of a probability function.
]
---
layout: true
class: center, middle, inverse
---
# The Geometric Distribution
---
layout: false
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
### Geometric
]
.right-column[
### The Geometric Distribution

**Origin**: A series of independent random experiments, or trials, are performed. Each trial results in one of two possible outcomes: successful or failure. The probability of a successful outcome, $p$, is the same across all trials. The trials are performed until a successful outcome is observed.

**Definition**: $X$ is the trial upon which the first successful outcome is observed. $X$ can take values $1, 2, \ldots$.

**probability function**:

With $0 < p < 1$,
$$ 
f(x) = \begin{cases}
p (1-p)^{x-1} & x = 1, 2, ... \\\\
0 & o.w.
\end{cases}
$$

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
### Geometric
]
.right-column[
### The Geometric Distribution

**Cumulative probability function**: $ F(x) = 1 - (1 - p)^x $

Here's how we get that cumulative probability function:

- The probability of a failed trial is $1-p$. 
- The probability the first trial fails is also just $1-p$.
- The probability that the first two trials both fail is $(1 - p) \cdot (1 - p) = (1 - p)^2$.
- The probability that the first $x$ trials all fail is $(1 - p)^x$.
- This gets us to this math:
\begin{align}
F(x) &= P(X \le x) \\\\
     &= 1 - P(X > x) \\\\
     &= 1 - (1-p)^x
\end{align}
]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
### Geometric
]
.right-column[
### The Geometric Distribution

**Expected value**: $ E(X) = \dfrac{1}{p} $

**Variance**: $ Var(X) = \dfrac{1-p}{p^2} $

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
### Geometric
]
.right-column[
### Example

A shipment of 200 widgets arrives from a new widget distributor. The distributor has claimed that the widgets there is only a 10% defective rate on the widgets.

- How many widgets would you expect to test before finding the first defective widget?

You find your first defective widget while testing the thrid widget. 
- What is the probability that a the first defective widget would be found **on** the third test if there are only 10% defective widgets from in the shipment?
- What is the probability that a the first defective widget would be found **by** the third test if there are only 10% defective widgets from in the shipment?
- Is it unusual to find the first defective widget on the third test? What is value of $p$ makes finding the first defective widget **by** the third test the least unusual?
]
---
layout: true
class: center, middle, inverse
---
# The Poisson Distribution
---
layout: false
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
### Geometric
### Poisson
]
.right-column[
### The Poisson Distribution

**Origin**: A rare occurance is watched for over a specified interval of time or space.

**Definition**: $X$ is the number of times the rare occurance is observed.

**probability function**:

For $\lambda > 0$
$$ 
f(x) = \begin{cases}
\dfrac{e^{-\lambda} \lambda^x}{x!} & x = 0, 1, ... \\\\
0 & o.w.
\end{cases}
$$
This distribution comes from letting $n \rightarrow \infty$ and $n \cdot p \rightarrow \lambda$ at the same time (in other words, our $n$ gets large, but our $p$ gets small). For very large $n$ and very small $p$, the binomial probability function is very close to the poisson.
]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
### Geometric
### Poisson
]
.right-column[
### The Poisson Distribution

**Cumulative probability function**: $ F(x) = 1 - (1 - p)^x $

Here's how we get that cumulative probability function:

- The probability of a failed trial is $1-p$. 
- The probability the first trial fails is also just $1-p$.
- The probability that the first two trials both fail is $(1 - p) \cdot (1 - p) = (1 - p)^2$.
- The probability that the first $x$ trials all fail is $(1 - p)^x$.
- This gets us to this math:
\begin{align}
F(x) &= P(X \le x) \\\\
     &= 1 - P(X > x) \\\\
     &= 1 - (1-p)^x
\end{align}
]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
### Geometric
### Poisson
]
.right-column[
### The Poisson Distribution

**Expected value**: $ E(X) = \lambda $

**Variance**: $ Var(X) = \lambda $

]
---
.left-column[
## Common Distributions
### Background
### Bernoulli
### Binomial
### Geometric
### Poisson
]
.right-column[
### Example

My last slide set contained 912 words and 4 misspellings. 

Using this information, describe a possible model for the number of typos in my current slide deck, which has 1,205 words.

]
