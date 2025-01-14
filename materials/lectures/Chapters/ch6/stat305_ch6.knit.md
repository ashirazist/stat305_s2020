---

output: 
  xaringan::moon_reader:
    lib_dir: libs
    nature:
      highlightStyle: github
      highlightLines: true
      countIncrementalSlides: false

---



class: center, middle, inverse
layout: yes
name: inverse

## STAT 305: Chapter 6 
## Introduction to formal statistical inference
### Amin Shirazi
.footnote[Course page: [ashirazist.github.io/stat305_s2020.github.io](https://ashirazist.github.io/stat305_s2020.github.io/)] 
---
name: inverse
layout: true
class: center, middle, inverse
---
# Chapter 6.1: Large-sample confidence intervals for a mean
---
layout:false
.left-column[
### Large Sample Inference
]
.right-column[
###Large Sample Confidence Interval

Formal statistical inference uses probability theory to quantify the reliability of data-based conclusions. We want information on a population.e.g 

>- true mean fill weight of food jams<br>
>- true mean strength of metal bars<br>
>- true mean of the number of accidents on a highway in Iowa

We can then use:

1. Point estimates:<br>
e.g **sample mean $\overline{X}$** of the strength of metal bars is $4.83$.<br>
>We would then say that $\overline{X}$ is an estimate for true (population ) mean $\mu$.

]
---
layout:false
.left-column[
### Large Sample Inference
]
.right-column[
###Large Sample Confidence Interval

2. Interval estimates:<br>
$\mu$ is likely to be inside an interval. (e.g $\mu \in (2.84, 5.35))$

Then we can say **we are confident that the true mean of the strength of metal bars $(\mu)$ is somewhere in the $(2.84, 5.35)$ **<br>

But the question is *how confident*?
]
---
layout:false
.left-column[
### Large Sample Inference
]
.right-column[
###Large Sample Confidence Interval

Many important engineering applications of statistics fit the following mold. Values for parameters of a data-generating process are unknown. Based on data, the goal is

>1.identify an inteval of values likely to contain an *unknown parameter*<br>

>2.qualify "how likely" the interval is to cover the correct value of the unknown parameter.

]
---
name: inverse
layout: true
class: center, middle, inverse
---
# Confidence Interval
###Definition and the use
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
]
.right-column[
###Confidence Interval

**Definition:** confidence interval for a *parameter* (or function of one or more parameters) is a *data-based interval* of numbers thought likely to contain the parameter (or function of one or more parameters) possessing a stated probability-based confidence or reliability.

>A confidence interval is a realization of a **random interval**, an interval on the real line with a random variable at one or both of the endpoints.


]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
]
.right-column[

**Example:**[Instrumental drift]<br>

Let $Z$ be a measure of instrumental drift of a random voltmeter that comes out of a certain factory. Say $Z\sim N(0,1)$. Define a random interval:
$$
(Z-2,Z+ 2)
$$
What is the probability that $-1$ is inside the interval? 
\begin{align}
P(-1\  \text{is in}\  (Z-2 , Z+2)) &= P(Z-2 < -1 < Z+2)\\
&= P(Z-1 < -1 < Z+3)\\
&= P(-1 < -Z < 3)\\
&= P(-3 < Z < 1)\\
&= \Phi(1)- \Phi(-3)\\
&= 0.84.
\end{align}
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
]
.right-column[
**Example:**[More practice]<br>

Calculate:

- $P(2 \text{ in } (X-1,X+ 1))$, $X\sim N(2,4)$

&nbsp;

\begin{align}
P( 2\in (X-1 , X+1))&= P(X-1 < 2 < X+1)\\
&= P(-1 < 2-X < 1)\\
&= P(-1/2 < X < 1/2)\\
&= \Phi(1/2) - \Phi(-1/2)\\
&= 0.6915 - 0.3085\\
&= 0.383
\end{align}
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
]
.right-column[

**Example:**[Abstract random intervals]<br>

Let's say $X_1,X_2,\dots,X_n$ are iid with $n\ge 25$, mean $\mu$, variance $\sigma^2$. We can find a random interval that provides a lower bound for $\mu$ with $1 - \alpha$ probability:

We want **A** such that $P(\mu\in (A, +\infty))= 1-\alpha$. <br>
We know by CLT: 
$$\overline{X} \approx N(\mu, \sigma^2/n)$$
Therefore, 
$$\dfrac{\overline{X}- \mu}{\sigma/\sqrt{n}} \sim N(0 , 1). $$


]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
]
.right-column[

**Example:**[Abstract random intervals]<br>

Then
\begin{align}
&P(\dfrac{\overline{X}- \mu}{\sigma/\sqrt{n}} \le Z_{1-\alpha})\approx 1-\alpha\\
\Rightarrow &P(\overline{X}- Z_{1-\alpha}\dfrac{\sigma}{\sqrt{n}}\le \mu)\approx 1-\alpha\\
\Rightarrow &P(\mu\in (\overline{X} - Z_{1-\alpha}\dfrac{\sigma}{\sqrt{n}}  , +\infty))\approx 1-\alpha
\end{align}
Now if we set 
$$A= \overline{X} - Z_{1-\alpha}\dfrac{\sigma}{\sqrt{n}} $$
then we have 
$$P(\mu\in(A, +\infty))\approx 1-\alpha$$
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
]
.right-column[
**Example:**[Abstract random intervals]<br>
Calculate:<br>
<span size= "80%">
$P(\mu \in (\overline{X} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}, \overline{X} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})), X \sim N(\mu,\sigma^2)$

\begin{align}
&P(\mu \in (\overline{X} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}, \overline{X} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}))\\
=&P(\overline{X} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}< \mu < \overline{X} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})\\
=&P(-z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}< \mu - \overline{X} < z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})\\
=&P(-z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}< \overline{X} - \mu   < z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})\\ 
=&P(-z_{1-\alpha/2} < \dfrac{\overline{X} - \mu}{\sigma/\sqrt{n}}   < z_{1-\alpha/2})\\
=&P(-z_{1-\alpha/2} < Z < z_{1-\alpha/2})\\
\approx & 1-\alpha
\end{align}
</span>
(<font size="3"> The last result is by **CLT** assuming that $n\ge 25$ </font>)<br>
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
]
.right-column[
**Example:**[Abstract random intervals]<br>

So, $\mu$ falls within the interval $(\overline{X} - z_{1-\color{red}{\alpha/2}}\frac{\sigma}{\sqrt{n}}, \overline{X} + z_{1-\color{red}{\alpha/2}}\frac{\sigma}{\sqrt{n}})$ with the probability of $\color{red}{1-\alpha}$ for $X \sim N(\mu,\sigma^2)$
]
---
layout:true
class:center, middle, inverse
---
##A large-n confidence interval 
##for $\mu$ involving $\sigma$
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
### A Large-n confidence interval for $\mu$ involving $\sigma$

A <span style="color:red"> **(1- $\alpha)\%$ confidence interval** </span> for an unknown parameter is the realization of a random interval that contains that parameter with probability $1-\alpha$.
> $\color{red}\alpha$ is called the **confidence level**

For random variables $X_1,X_2,\dots,X_n$ iid with $E(X_1) = \mu$, $Var(X_1) = \sigma^2$, a $(1-\alpha)\%$ confidence interval for $\mu$ is

$$(\color{red}{\overline{x}} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}, \color{red}{\overline{x}} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})$$
which is a **realization** from the <span style="color:red">random interval</span>
$$(\color{red}{\overline{X}} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}},\color{red}{ \overline{X}} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}).$$

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
###In General

- *Two-sided* $100(1-\alpha)\%$ confidence interval for $\mu$
$$\color{red}{(\overline{x} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}, \overline{x} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})}$$


- *One-sided* $100(1-\alpha)\%$ confidence interval for $\mu$ with a upper confidence bound

$$\color{red}{(-\infty\ ,\  \overline{x} + z_{1-\alpha}\frac{\sigma}{\sqrt{n}})}$$

- *One-sided* $100(1-\alpha)\%$ confidence interval for $\mu$ with a lower confidence bound

$$\color{red}{(\overline{x} - z_{1-\alpha}\frac{\sigma}{\sqrt{n}}\ ,\ +\infty)}$$

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
**Example:**[Fill weight of jars]

Suppose a manufacturer fills jars of food using a stable filling process with a known standard deviation of $\sigma = 1.6$g. We take a sample of $n=47$ jars and measure the sample mean weight $\overline{x} = 138.2$g. A two-sided $90\%$ confidence interval, $\alpha = 0.1$, for the true mean weight $\mu$ is:
\begin{align}
(\overline{x} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}&, \overline{x} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})\\
=(\overline{x} - z_{1- 0.1/2}\frac{\sigma}{\sqrt{n}}&, \overline{x} + z_{1- 0.1/2}\frac{\sigma}{\sqrt{n}})\\
=(138.2 - z_{.95}\frac{1.6}{\sqrt{47}}\ &,\   138.2+ z_{.95}\frac{1.6}{\sqrt{47}})\\
=(038.2 -1.64(.23) \ &, \ 138.2+ 1.64(.23))\\
=(137.82\ &,  \ 138.58)
\end{align}
or we can write it as $138.2 \pm 0.38$g
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
**Example:**[Fill weight of jars]

<span style="color:red">Interpretation:</span>

>We are $90\%$ **confident** that the **true mean**  is between $137.82$g and $138.58$g
>
>or we can say
>
>If we took 100 more samples of 47 jams each, roughly *90 of those samples would have a confidence interval containing the true mean fill weight*

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
**Example:**[Fill weight of jars]

What if we just want to be sure that the true mean fill weight is high enough?

We could use a one-sided $90\%$ CI with a lower bound:

\begin{align}
(\overline{x}-z_{1-\alpha}\frac{\sigma}{\sqrt{n}}\ &, \ +\infty ) \\
=(138.2 - z_{.9}\frac{1.6}{\sqrt{47}}\ &, \ +\infty )\\
=(137.91\ &, \ +\infty)
\end{align}

Then we would say:
>We are $90\%$ confident that the true mean fill weight is above 137.91

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
**Example:**[Hard disk failures]

F. Willett, in the article "The Case of the Derailed Disk Drives?" (**Mechanical Engineering**, 1988), discusses a study done to isolate the cause of link code A failure in a model of Winchester hard disk drive. 

For each disk, the investigator measured the breakaway torque (in. oz.) required to loosen the drive's interrupter flag on the stepper motor shaft. 

Breakaway torques for $26$ disk drives were recorded, with a sample mean of $11.5$ in. oz. Suppose you know the true standard deviation of the breakaway torques is $5.1$ in. oz.
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
**Example:**[Hard disk failures]

 Calculate and interpret:
 
- A two-sided $90\%$ confidence interval for the true mean breakaway torque of the relevant type of Winchester drive.
\begin{align}
(\overline{x} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}&, \overline{x} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})\\
=(\overline{x} - z_{1- 0.1/2}\frac{\sigma}{\sqrt{n}}&, \overline{x} + z_{1- 0.1/2}\frac{\sigma}{\sqrt{n}})\\
=(11.5 - z_{.95}\frac{5.1}{\sqrt{26}}\ &,\   11.5 + z_{.95}\frac{5.1}{\sqrt{26}})\\
=(11.5 -1.64(1.0002) \ &, \ 11.5+ 1.64(1.0002))\\
=(9.86\ &,  \ 13.14)
\end{align}
**Interpretation:** we are $90\%$ confident that the true mean breaking torque lies between $9.86$ and $13.14$ in.oz.
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
**Example:**[Width of a CI]

If you want to estimate the breakaway torque with a 2-sided, $95\%$ confidence interval with $\pm 2.0$ in. oz. of precision, what sample size would you need?

>Interval precision = interval half width

Therefore, for a two-sided $95\%$ CI we have
$$(\overline{x} - z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}, \overline{x} + z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}})$$
which means that the precision is $z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}}$

We want $z_{1-\alpha/2}\frac{\sigma}{\sqrt{n}} \leq 2$<br>
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
]
.right-column[
**Example:**[Width of a CI]

So, 

\begin{align}
z_{1-.05/2}\frac{5.1}{\sqrt{n}}&\leq 2\\
z_{.975}\frac{5.1}{\sqrt{n}}&\leq 2\\
1.96\frac{5.1}{\sqrt{n}}&\leq 2\\
\frac{9.996}{\sqrt{n}}&\leq 2
\end{align}
$$\Rightarrow n\ge 24.98$$
$$\Rightarrow n\ge 25$$
We would need a sample of at least 25 disks to have at least a precision of 2 in.oz
]
---
layout:true
class: center, middle, inverse
---
##A large-n confidence interval 
##for $\mu$ when $\sigma$ is Unknown
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
]
.right-column[
#### A generally applicable large-n confidence interval for $\mu$

Although the equations for a $(1-\alpha)\%$ confidence interval is mathematically correct, it is severely limited in its usefulness because
it requres us to know $\sigma$ (the population variance). It is unusual to have to estimate $\mu$ and know $\sigma$ in real life. 

>If $n \ge 25$ and $\sigma$ is *unknown*, $Z = \frac{\overline{X} - \mu}{\color{red}{s}/\sqrt{n}}$, where 
$$
s = \sqrt{\frac{1}{n-1}\sum\limits_{i = 1}^n (x_i-\overline{x})^2}.
$$

is still **approximately standard normally distributed**. 

So, you can replace $\sigma$ in the confidence interval formula with the sample standard deviation, $s$.

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
]
.right-column[
#### A generally applicable large-n confidence interval for $\mu$

- *Two-sided* $100(1-\alpha)\%$ confidence interval for $\mu$
$$\color{red}{(\overline{x} - z_{1-\alpha/2}\frac{s}{\sqrt{n}}, \overline{x} + z_{1-\alpha/2}\frac{s}{\sqrt{n}})}$$


- *One-sided * $100(1-\alpha)\%$ confidence interval for $\mu$ with a upper confidence bound

$$\color{red}{(-\infty\ ,\  \overline{x} + z_{1-\alpha}\frac{s}{\sqrt{n}})}$$

- *One-sided* $100(1-\alpha)\%$ confidence interval for $\mu$ with a lower confidence bound

$$\color{red}{(\overline{x} - z_{1-\alpha}\frac{s}{\sqrt{n}}\ ,\ +\infty)}$$

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
]
.right-column[


**Example:**

Suppose you are a manufacturer of construction equipment. You make $\color{blue}{0.0125}$ inch wire rope and need to determine how much weight it can hold before breaking so that you can label it clearly. Here are breaking strengths, in kg, for $\color{blue}{41}$ sample wires:


```
 [1] 100.37  96.31  72.57  88.02 105.89
 [6] 107.80  75.84  92.73  67.47  94.87
[11] 122.04 115.12  95.24 119.75 114.83
[16] 101.79  80.90  96.10 118.51 109.66
[21]  88.07  56.29  86.50  57.62  74.70
[26]  92.53  86.25  82.56  97.96  94.92
[31]  62.00  93.00  98.44 119.37 103.70
[36]  72.40  71.29 107.24  64.82  93.51
[41]  86.97
```

>The sample mean breaking strength is $\color{red}{91.85}$ kg and the sample standard deviation is $\color{red}{17.6}$ kg.



]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
]
.right-column[
**Example:**
Using the appropriate $95$% confidence interval, try to determine whether the breaking strengths meet the requirement of at least $85$ kg.
$$(1-\alpha =.95\hspace{.5cm}, \hspace{.5cm}\overline{x}=91.85 \hspace{.5cm},\hspace{.5cm} s=17.6\hspace{.5cm}, \hspace{.5cm} n=41 )$$
The CI is then
\begin{align}
(\overline{x} - z_{1-\alpha/2}\frac{s}{\sqrt{n}}\ &,\ +\infty )\\
=(91.85 - z_{\color{red}{.95}}\frac{17.6}{\sqrt{41}}\ &,\ +\infty )\\
=(91.85 - 1.64\frac{17.6}{\sqrt{41}}\ &,\ +\infty )\\
=(87.3422\ &,\ +\infty )\\
\end{align}
>With $95\%$ confidence, we have shown that the true mean breaking strength is above $87.3422$kg.<br>
>Hence, we meet the $85$kg requirement with $95\%$ confidence


]
---
layout:true
class: center, middle, inverse
---
##Small-sample Confidence Interval
##for a Mean
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
]
.right-column[
### Small-sample confidence intervals for a mean

- The most important practical limitation on the use of the methods of the previous sections is the requirement that $n$ **must be large $(\ge 25)$**

- That restriction comes from the fact that without it, there is no way (in general) to calculate $\dfrac{\overline{X}- \mu}{S/n}$ that is approximately $N(0,1)$. (i.e we cannot use CLT when sample size is small)

- So, if one mechanically uses the large- $n$ interval formula $\overline{x} \pm z \frac{s}{\sqrt{n}}$ with a small sample, there is no way of assessing what actual level of confidence should be declared. 

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
]
.right-column[
### Small-sample confidence intervals for a mean

- **If** it is sensible to model the observations as iid normal random variables, then we can arrive at inference methods for small-$n$ sample means.

In this case (small sample size), $\overline{x} \pm z \frac{s}{\sqrt{n}}$ is not standard Normal anymore, BUT it is a different normed distribution!
]
---
layout:true
class:center, middle, inverse
---
##The Student t Distribution
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
]
.right-column[
###t Student distribution

**Definition**: The (Student) $t$ distribution with degrees of freedom parameter $\nu$ is a continuous probability distribution with probability density

$$f(t) = \frac{\Gamma\left(\frac{\nu + 1}{2}\right)}{\Gamma\left(\frac{\nu}{2}\right)\sqrt{\pi \nu}}\left(1 + \frac{t^2}{\nu}\right)^{-(\nu + 1)/2} \qquad  \text{for all } t \in R.$$
The $t$ distribution
 
>- is bell-shaped and symmetric about $0$
>- has fatter tails than the normal, but approaches the shape of the normal as $\nu \rightarrow \infty$.

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
]
.right-column[
###t Student distribution

We use the $t$ table (Table B.4 in Vardeman and Jobe) to calculate quantiles. 

![](stat305_ch6_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
]
.right-column[
###t Student distribution


**Example**: Say $T \sim t_5$. Find $c$ such that $P(T \le c) = 0.9$.

![Student's $t$ distribution quantiles.](ch6-andee/images/head_t_quantiles.png)

So, $P(T\le c) = 0.9$ holds true if $c= 1.476$ (by the table).
]
---
layout: true
class: center, middle, inverse
---
##Small-sample Confidence Interval
## for $\mu$ when $\sigma$ is unknown
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$

]
.right-column[

### Small-sample confidence intervals, $\sigma$ unknown

**If** we can assume that $X_1,\dots,X_n$ are iid with mean $\mu$ and variance $\sigma^2$, and are also normally distributed, if $n < 25$, we cannot use CLT.

It is not easy to prove but, 

> $\dfrac{\overline{X}-\mu}{S/\sqrt{n}} \sim t_{n-1}$

We can then use $t_{n-1,1-\alpha/2}$ instead of $z_{1-\alpha/2}$ in the confidence intervals.

Note that the df (degree of freedom) for the t distribution is $n-1$. 
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$

]
.right-column[

### Small-sample confidence intervals, $\sigma$ unknown

- *Two-sided* $100(1-\alpha)\%$ confidence interval for $\mu$
$$\color{red}{(\overline{x} - t_{n-1, 1-\alpha/2}\frac{s}{\sqrt{n}}, \overline{x} + t_{n-1,\  1-\alpha/2}\frac{s}{\sqrt{n}})}$$


- *One-sided * $100(1-\alpha)\%$ confidence interval for $\mu$ with a upper confidence bound

$$\color{red}{(-\infty\ ,\  \overline{x} + t_{n-1,\ 1-\alpha}\frac{s}{\sqrt{n}})}$$

- *One-sided* $100(1-\alpha)\%$ confidence interval for $\mu$ with a lower confidence bound

$$\color{red}{(\overline{x} - t_{n-1, \ 1-\alpha}\frac{s}{\sqrt{n}}\ ,\ +\infty)}$$

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$

]
.right-column[

**Example**: [Concrete beams]

10 concrete beams were each measured for flexural strength (MPa). Assuming the flexural strengths are iid normal, calculate and interpret a two-sided $99$\% CI for the flexural strength of the beams. 

 [1]  8.2  8.7  7.8  9.7  7.4  7.8  7.7 11.6 11.3 11.8
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$

]
.right-column[

**Example**: [Concrete beams]

Is the true mean flexural strength below the minimum requirement of 11 MPa?  Find out with the appropriate 95\% CI.


]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$

]
.right-column[

**Example**: [Paint thickness]

Consider the following sample of observations on coating thickness for low-viscosity paint.

```
 [1] 0.83 0.88 0.88 1.04 1.09 1.12 1.29
 [8] 1.31 1.48 1.49 1.59 1.62 1.65 1.71
[15] 1.76 1.83
```

A normal QQ plot shows that they are close enough to normally distributed.

![](stat305_ch6_files/figure-html/unnamed-chunk-6-1.png)<!-- -->
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$

]
.right-column[

**Example**: [Paint thickness]

Calculate and interpret a two-sided $90$% confidence interval for the true mean thickness.

]
---
layout:true
class: center, middle, inverse
---
##Let's Wrap Up
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$
###Wrap Up
]
.right-column[
### Common Assumptions and Common Statements
Suppose that $X_1, X_2, \ldots, X_n$ are random variables whose values will be determined based on the results of random events.
>**Large Sample Size, Known Variance**</br>
>Assuming:</br>
>- $E(X_i) = \mu$, 
>- $n \ge 30$,
>- $Var(X_i) = \sigma^2$ is known
>
>Then by CLT,
>$$\dfrac{\bar{X} - \mu}{\sqrt{\sigma^2/n}} \sim N(0, 1)$$

$100(1-\alpha)\%$ Confidence interval for $\mu$: 

>$$\bar{x} \pm z_{1 - \alpha/2} \sqrt{\frac{\sigma^2}{n}}$$
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$
###Wrap Up
]
.right-column[
### Common Assumptions and Common Statements

>**Large Sample Size, Unknown Variance**</br>
>Assuming:</br>
>- $E(X_i) = \mu$, 
>- $n \ge 30$,
>- $Var(X_i)$ is unknown, but sample variance $S^2 = \frac{1}{n-1}\sum{(X_i - \bar{X})^2}$ can be calculated
>
>Then by CLT and convergence of sample variance
>$$\dfrac{\bar{X} - \mu}{\sqrt{S^2/n}} \sim N(0, 1)$$

$100\cdot(1 - \alpha)$%-Confidence interval for $\mu$: 
>$$\bar{x} \pm z_{1 - \alpha/2} \sqrt{\frac{s^2}{n}}$$
]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$
###Wrap Up
]
.right-column[
### Common Assumptions and Common Statements
>**Small Sample Size, Unknown Variance**</br>
>Assuming:</br>
>- $E(X_i) = \mu$, 
>- $n < 30$,
>- $Var(X_i)$ is unknown, but sample variance $S^2 = \frac{1}{n-1}\sum_{i=1}^{n}{(X_i - \bar{X})^2}$ can be calculated
>
>Then by CLT and convergence of sample variance
>$$\dfrac{\bar{X} - \mu}{\sqrt{S^2/n}} \sim t_{n-1}$$

$100\cdot(1 - \alpha)$%-Confidence interval for $\mu$: 
>$$\bar{x} \pm t_{n-1, 1 - \alpha/2} \sqrt{\frac{s^2}{n}}$$

]
---
layout:false
.left-column[
### Large Sample Inference
###Confidence Interval
###CI for $\mu$ 
###CI for $\mu$ unknown $\sigma^2$
###t Distribution
###Small $n$ unknown $\sigma^2$
###Wrap Up
]
.right-column[
### Common Assumptions and Common Statements

With the last set of assumptions, we can conclude that $\dfrac{\bar{X} - \mu}{\sqrt{S^2/n}}$ follows a "t-distribution with $n-1$ degrees of freedom"

The t-distribution looks a lot like a standard normal distribution and we use it the same way: 
- It is symmetric
- It is centered at 0
- Important quantiles are collected together in tables for reference

It only has one parameter, the degrees of freedom. In this class, the degrees of freedom are related to the number of parameters being tested
<center>
degrees of freedom = (# of observations) - (# of parameters)
</center>
]
---
