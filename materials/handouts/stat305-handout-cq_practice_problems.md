---
title: CQ Practice Problems
course: Stat 305
semester: Spring 2019
...

As always, this is not intended to be an complete list of problems. However, you can consider these to be a representative subset of of the population of problems. \vspace{.4cm}

**Competency Topic: Discrete Random Variables** 

1. Suppose that $U$ has a distribution so that, for some constant $c$, the probability function is given by $f(u) = c$ for $u = -2, -1, 0, 1, 2$ and 0 everywhere else.

   a. Find the value of $c$ that makes $f(u)$ a valid probability function.
   b. Find the expected value of $U$.
   c. Find the variance of $U$.

1. Suppose that $X$ has the following distribution: $$ f(x) = \begin{cases} \dfrac{3!}{x!(3-x)!} (0.5)^3 & x = 0, 1, 2, 3 \\ 0 & o.w. \end{cases} $$

   a. Show that $f(x)$ is a valid probability function.
   b. Find the probability that $X$ is less than 2.
   c. Find the expected value of $X$.

1. Suppose that $X$ has the following cumulative probability function: $$ F(x) = \begin{cases} 0 & x < -1.5 \\ 0.3 & -1.5 \le x < 2 \\ 1 & x \ge 2 \end{cases} $$

   a. Sketch the cumulative probability function.
   b. Find the probability function of $X$ (hint: it may be easiest to write it as a piecewise function).
   c. Find the expected value of $X$.

\newpage
**Competency Topic: Continuous Random Variables** 

1. Suppose that $X$ has a step-uniform distribution - that is, $X$ has a probability density function given by $$f(x) = \begin{cases} 0.2 & -1 \le x < 0 \\ 0.8 & 0 \le x \le 1 \\ 0 & otherwise \end{cases}$$

   a. Sketch the probability density function of $X$.
   b. Find the probability that $X$ is less than 0.5.
   c. Find the expected value of $X$.

1. Suppose that $X$ has a distribution so that, for some constant $c$, the cumulative probability density function is given by $$ F(X) = \begin{cases} 0 & x \le -1 \\ 0.5 x + 0.5 & -1 < x < 1 \\ 1 & x \ge 1 \end{cases} $$

   a. Sketch the cumulative density function of $X$.
   b. Find the probability that $X$ is less than 0.
   c. Find the probability density function of $X$.

1. Suppose that $X$ has a gamma distribution with integer valued shape parameter $k \ge 1$ and rate parameter $\beta$, i.e., $$ f(x) = \begin{cases} \dfrac{\beta^k}{(k-1)!} x^{k-1} \exp(-\beta x) & x \ge 0 \\ 0 & o.w. \end{cases} $$ It can be shown that the expected value and the variance are based on the parameters, so that $$ E(X) = \dfrac{k}{\beta} $$ and $$ Var(X) = \dfrac{k}{\beta^2} $$

   a. Suppose that $X$ has a gamma distribution with shape $k = 4$ and variance $10$. Find the value of $\beta$.
   b. Suppose that $X$ has a gamma distribution with mean $0.25$ and variance $0.125$. Find the value of the shape parameter $k$ and the rate parameter $\beta$.

\newpage
**Competency Topic: Joint Distributions** 

1. Suppose that $X$ and $Y$ are independent normal random variables with the same mean $\mu$ and variance $\sigma^2$. That means they both follow a distribution with pdf where  $$ f(t) = \dfrac{1}{\sqrt{2 \pi \sigma^2}} \exp\left( -\frac{1}{2\sigma^2} (t - \mu)^2 \right) $$ for any $-\infty < t < \infty$ (just replace $t$ with $x$ for $X$ and $y$ for $Y$).

   a. Find $f_{XY}(x,y)$, the joint probability density function of $X$ and $Y$ (it will include the parameters $\mu$ and $\sigma$).
   a. Suppose that $a$ is a value such that $$\int_{-\infty}^a \dfrac{1}{\sqrt{2 \pi \sigma^2}} \exp\left( \dfrac{1}{2 \sigma^2} (x-\mu)^2 \right) dt = 0.95$$ 
   Find the value of $$ \int_{-\infty}^{a} \int_{-\infty}^{a} f_{XY}(x, y) dx dy $$.

1. If $\alpha$ and $\beta$ are both integers, then a random variable $P$ following a $beta(\alpha, \beta)$ distribution has pdf $$ f_P(p) = \begin{cases} \dfrac{(\alpha + \beta - 1)!}{(\alpha - 1)! (\beta -1)!} p^{\alpha - 1} (1 - p)^{\beta -1} & 0 \le p \le 1 \\ 0 & otherwise \end{cases} $$. Further suppose that, given $P$, $X$ has the following conditional pdf: $$ f_{X|P}(x|p) = \begin{cases} \dfrac{5!}{x!(5-x)!} p^x (1-p)^{5-x} & x = 0, 1, 2, \ldots, 5 \\ 0 & o.w. \end{cases} $$

   a. Find the probability that $X = 0$ given that $P = 0.1$ (simplify as much as possible, but the answer will include the terms $\alpha$ and $\beta$)
   a. Find the joint probability function, $f_{XP}(x, p)$.

1. Suppose that $P$ has a beta distribution with $\alpha=4$ and $\beta=3$. Then the probability density function of $P$ can be written as $$ f_P(p) = \begin{cases} \dfrac{6!}{3!2!} p^{3} (1 - p)^{2} & 0 \le p \le 1 \\ 0 & otherwise \end{cases} $$. Suppose that $P$ has a joint distribution with $X$ so that $$ f_{XP}(x, p) = \begin{cases} \dfrac{6!}{x! (3-x)! 2!} p^{x + 3} (1-p)^{n + 2 - x}  & 0 \le p \le 1, x = 0, 1, 2, 3 \\ 0 & o.w. \end{cases} $$

   a. Find the conditional probability function, $f_{X|P}(x|p)$.
   a. Find the probability that $X = 0$ given that $P= 0.1$.

\newpage
**Competency Topic: Functions of Random Variables** 

1. Suppose that $X$ is uniform on the interval $[2, 5]$. That is, $f_X(x) = 1/3$ for $x$ in $[2, 5]$ and it is 0 everywhere else. Let $Y = \sqrt{X}$.

   a. Find the cumulative density function of $Y$ (it may help to have the cumulative density function of $X$).
   a. Find the probability density function of $Y$.

1. Suppose that $X \sim N(3, 2)$ and $Y \sim N(-2, 2)$ are independent random variables. If $U = 2 - 2 X - 2 Y$, find

   a. The expected value of $U$.
   b. The variance of $U$

1. Suppose that $X$ has the probability function $$ f_X(x) = \begin{cases} \dfrac{4!}{x! (4 - x)!} \dfrac{1}{2^4} & x = 0, 1, 2, 3, 4 \\ 0 & o.w. \end{cases}$$ and that $U = X - 2$.

   a. Find the probability function for $U$.
   b. Find the expected value of $U$.
