name: inverse
layout: true
class: center, middle, inverse
---
# Chapter 5: Probability
## Mathematically Describing Randomness
### and
## Discrete Random Variables
.footnote[Course page: [imouzon.github.io/stat305](https://imouzon.github.io/stat305)]
---
layout:false
.left-column[
## Probability
### What is Probability Theory?
]
.right-column[
## Probability Theory

In a mathematics, the field of **Probability** is the axioms, theories, concepts, terminology, and discoveries that are used to allow for random variation in a strict, rigorous, and mathematically (or logically) sound way. Using probability theories, we can use our existing knowledge of mathematics to deal with elements in a system that behave in chaotic ways.

### History

In the long history of mathematics, Probability is a fairly young branch. Initial attempts to make random chance events the subject of mathematical study go back to the 17th century, but the strongest mathematical foundations were largely laid in the 20th century, with much credit going to Andrey Kolmogorov (1903-1987).

]
---
.left-column[
## Probability
### What is Probability Theory?
]
.right-column[
## Probability

### History, Cont

In it's foundations, Probability is relies on much of **measure theory**, a branch of mathematics concerned with measurement. 

In Kolmogorov's application, a probability is a way of _measuring the likelihood of a given outcome_. By grafting the earlier probability concepts onto the elements of measure theory, Kolmogorov created an axiomatic basis for probability on which others could base their work with certainty.

]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
## Probability Basics

### An Example: Throwing Dice

To introduce the core concepts, we can start with some examples that go back further than the field itself.

Consider a 6-sided die.

![die](die-6-sides.png)

a) In terms of the number of dots facing up, what are the possible outcomes from a single roll of the die?

b) What would it mean for the die to be a "fair" die?
]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### Basic Terminology I

We call the process of tossing the die and observing the number of dots facing up a **random experiment** - meaning, we are rigorous about how we do the process but we still expect the end result to be change.

A few more key terms:

**Sample space**: The set of all possible outcomes from a random experiment.

**Event**: A subset of the sample space.

**Fair**: A system is fair if all the outcomes in the sample space are equally likely to occur.

]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### An Example: Throwing Dice

In our example we have the following sample space:

<center>
S = {"one dot showing up", "two dots showing up", ..., "six dots facing up"}
</center>

That's a little cumbersome to write out, but if we all agree we are talking about dots facing up (instead of, say, cows in the field), then it's OK to write this as:
$$
S = \\{1, 2, 3, 4, 5, 6\\}
$$

All of our existing set notation and rules work on sample spaces: union, intersection, compliment, subset, etc.
]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### Review of Working with Sets

We have the following key terms and set operations:

- **element**: The term used for a member of a set.

- **universe**: The universe is the set of all elements (in probability, the sample space is our universe)

- **union**: We define $A \cup B$ as the set of all elements in either $A$ or $B$.

- **intersection**: We define $A \cap B$ as the set of all elements in $A$ and $B$.

- **compliment**: We define $A^C$ as the set of all elements in the universe that are **not** in $A$.

- **subset**: We say that $A$ is a subset of $B$ if every element in $A$ is in $B$.

- **empty set**: the empty set is the set with no elements. We write this as $\\{\\}$ or $\\emptyset$.
]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### Review of Working with Sets

Suppose that $U$ is the set of all letters. Suppose $A = \\{a, b, c\\}$, $B = \\{b, c, e\\}$ and $A_1 = \\{x, y, z\\}$. 

Find the following:

1. $A^C$

2. $A \cup B$

3. $A \cap B$

4. $A \cap A_1$

4. $A^C \cup B$

4. $A^C \cap B$

]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### Example

In our example we have the following sample space:

<center>
S = {"one dot showing up", "two dots showing up", ..., "six dots facing up"}
</center>

That's a little cumbersome to write out, but if we all agree we are talking about dots facing up (instead of, say, cows in the field), then it's OK to write this as:
$$
S = \\{1, 2, 3, 4, 5, 6\\}
$$

All of our existing set notation and rules work on sample spaces: union, intersection, compliment, subset, etc.
]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### An Example: Throwing Dice

Any subset of our sample space is an event. Using the sample space

$$
S = \\{1, 2, 3, 4, 5, 6\\}
$$

- If we take the subset $E_1 = \\{1, 3, 5\\}$, then $E_1$ is the event that an odd number of dots are facing up.

- If we are interested in whether or not the number of dots facing up is less that 3, we could write $E_2 = \\{1, 2\\}$ as an event.

- If the only outcome we care about is if the roll results in 6 dots facing up, we would be interested in the event $E_3 = \\{6\\}$.

- We can still do set math with events: for example, $E_1 \cap E_2 = \\{1\\}$

Note: For a samples space $S$, $S$ is also an event and so is $\\emptyset$.

]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### An Example: Throwing Dice

Since our sample space has 6 possible outcomes, 

$$
S = \\{1, 2, 3, 4, 5, 6\\}
$$

then for a die roll to be "fair" each of the 6 should have the same chance of occuring. We could think of think of this by saying

- For each possible result, there is a 1 in 6 chance that the next toss will be that result.

or

- If we were able to continue tossing this die infinitly, then each outcome will be seen on 1/6 of the tosses.
]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### Basic Terminology II

**Probability**: A special measurement used to describe the likelihood of a specific event. A probability of 0 means the event will not occur. A probability of 1 means the event will occur. 

In order to valid for a sample space, $S$, the probability must follow these rules:

1. For any event $A$, $P(A) \gt 0$

2. $P(S) = 1$

3. If $A \cap B = \emptyset$ then $P(A \cup B) = P(A) + P(B)$.

We can translate these rules into words:

1. All probabilities are at least 0 (they can be 0).

2. The probability that something occurs is 1.

3. The probability of any event is the sum of the probabilities of its parts.

]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### Basic Terminology II

By combining these three rules we get the many other rules, such as the following:

- $P(A^C) = 1 - P(A)$

- For any events $A$ and $B$, $P(A \cup B) \le P(A) + P(B)$

- $P(\emptyset) = 0$

- For disjoint events $A_1$, $A_2$, ..., $A_k$, $P(A_1 \cup A_2 \cup ... \cup A_k) = P(A_1) + P(A_2) + ... + P(A_k)$.

]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### Example: Red die, blue die
A fair red die and fair blue die are tossed at the same time. The number of dots facing up on each die are recorded.

1. What is the sample space for this random event.
2. What is the probability that the red die shows 4 dots facing up?
3. What is the probability that the blue die and the red die both have 4 dots facing up?
4. What is the probability that one of the die has 4 dots facing up?
5. What is the probability that neither of the die has 4 dots facing up?
6. What is the most common total number of dots facing up?

]
---
.left-column[
## Probability
### What is Probability Theory?
### Basics
]
.right-column[
### Example: Deck of Cards

]
