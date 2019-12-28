name: inverse
layout: true
class: center, middle, inverse
---
# STAT 305: Lecture 7
## Wrapping Up Descriptive Statistics
### and
## Introduction to Models
.footnote[Course page: [imouzon.github.io/stat305](https://imouzon.github.io/stat305)]
---
layout:false
.left-column[
## Summaries
### Boxplots
]
.right-column[
### Anatomy of a Boxplot
To create a boxplot with the following data:
```
              Group 1             Group 2
            74 79 77 81         65 77 78 74
            68 79 81 76         76 73 71 71
            81 80 80 78         86 81 76 89
            88 83 79 91         79 78 77 76
            79 75 74 73         72 76 75 79    
```

We need the following statistics to draw the body of the boxplot

|         |  Q1  | median  |  Q3   |
|---------|------|---------|-------|
| Group 1 | 75.5 |   79    |  81   |
| Group 2 | 73.5 |   76    |  78.5 |

And we need to calculate the maximum length for the whiskers:

Group 1: $ 1.5 \cdot (Q3 - Q1) = 1.5 \cdot 5.5 = 8.25 $

Group 2: $ 1.5 \cdot (Q3 - Q1) = 1.5 \cdot 5.0 = 7.5 $

]
---
layout:false
.left-column[
## Summaries
### Boxplots
]
.right-column[
### Anatomy of a Boxplot
]
---
.left-column[
## Summaries
### Boxplots
### Quantile Plots
]
.right-column[
### Quantile Plots 

**Scatterplots using quatiles and their corresponding values**

For each `\(x_i\)` in the data set, we plot `\(\left(\frac{i - .5}{n}, x_i\right)\)` - meaning we are plotting `\( (p, Q(p)) \)`.
We connect the points with a straight line, which follows the values of `\(Q(p)\)` exactly.

Consider the sample: 13, 15, 18, 19, 21, 34, 35, 35, 36, 39.

Notice that we have $n = 10$ observations which means that $Q(0.05) = x_1 = 13$. We can get the quantile for each of our observations and create this table:

|            |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  |
|------------|------|------|------|------|------|------|------|------|------|------|
| `\(p\)`    | 0.05 | 0.15 | 0.25 | 0.35 | 0.45 | 0.55 | 0.65 | 0.75 | 0.85 | 0.95 |
| `\(Q(p)\)` |  13  |  15  |  18  |  19  |  21  |  34  |  35  |  35  |  36  |  39  |

]
---
.left-column[
## Summaries
### Boxplots
### Quantile Plots
]
.right-column[
### Quantile Plots 

We can then use this information to create a quantile plot:

|            |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  |
|------------|------|------|------|------|------|------|------|------|------|------|
| `\(p\)`    | 0.05 | 0.15 | 0.25 | 0.35 | 0.45 | 0.55 | 0.65 | 0.75 | 0.85 | 0.95 |
| `\(Q(p)\)` |  13  |  15  |  18  |  19  |  21  |  34  |  35  |  35  |  36  |  39  |

]
---
.left-column[
## Summaries
### Boxplots
### Quantile Plots
### QQ Plots
]
.right-column[
### Quantile-Quantile Plots: 

**QQ plots** are created by plotting the values of `\(Q(p)\)` for a data set against values of `\(Q(p)\)` coming from some other source.

-  Empirical QQ plots: the other source are quantiles from another actual data set.
-  Theoretical QQ plots: the other source are quantiles from a theoretical set - we know the quantiles without having any data.

**Example**

-  Set 1: 36, 15, 35, 34, 18, 13, 19, 21, 39, 35 
-  Set 2: 37, 39, 79, 31, 69, 71, 43, 27, 73, 71 

|                  |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  |
|------------------|------|------|------|------|------|------|------|------|------|------|
| `\(p\)`          | 0.05 | 0.15 | 0.25 | 0.35 | 0.45 | 0.55 | 0.65 | 0.75 | 0.85 | 0.95 |
| Set 1 `\(Q(p)\)` |  13  |  15  |  18  |  19  |  21  |  34  |  35  |  35  |  36  |  39  |
| Set 2 `\(Q(p)\)` |  27  |  31  |  37  |  39  |  43  |  69  |  71  |  71  |  73  |  79  |

]
---
.left-column[
## Summaries
### Boxplots
### Quantile Plots
### QQ Plots
]
.right-column[
### Quantile-Quantile Plots: 

A QQ plot can then be created by plotting one group's quantiles against the others:

|                  |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  |
|------------------|------|------|------|------|------|------|------|------|------|------|
| `\(p\)`          | 0.05 | 0.15 | 0.25 | 0.35 | 0.45 | 0.55 | 0.65 | 0.75 | 0.85 | 0.95 |
| Set 1 `\(Q(p)\)` |  13  |  15  |  18  |  19  |  21  |  34  |  35  |  35  |  36  |  39  |
| Set 2 `\(Q(p)\)` |  27  |  31  |  37  |  39  |  43  |  69  |  71  |  71  |  73  |  79  |

]
---
layout: true
class: center, middle, inverse
---
# Chapter 4: Describing Relationships Between Variables
## First Steps in Statistical Modeling
---
# Chapter 4, Section 1
## Linear Relationships Between Variables
---
layout: false
.left-column[
## Describing Relationships
### Idea
]
.right-column[
## Describing Relationships

We have a standard idea of how our experiment works:

<center>
   <img src="figure/schemeit-project.png" alt="dmc logo" height="125"> 
</center>

*and* we know that with an valid experiment, we can say that the changes in our experimental variables actually *cause* changes in our response.

But how do we describe those response when we know that random error would make each result different...
]
---
.left-column[
## Describing Relationships
### Idea
]
.right-column[

## The Underlying Idea

<center>
   <img src="figure/schemeit-project.png" alt="dmc logo" height="125"> 
</center>

We start with a valid mathematical model, for instance a line:

\\[
 y = \beta_0 + \beta_1 \cdot x
\\]

In this case, 

-  \\(\beta_0\\) is the intercept - when \\(x = 0\\), \\(y = \beta_0\\).

-  \\(\beta_1\\) is the slope - when \\(x\\) increase by one unit, \\(y\\) increases by \\(\beta_1\\) units.

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bar Stress
]
.right-column[

## Example: Stress on Bars

An experiment examining the effects of **stress** on **time until fracture** is performe by taking a sample of 10 stainless steel rods immersed in 40% CaCl solution at 100 degrees Celsius and applying different amounts of uniaxial stress.

The results are recorded below:

|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |

A good first place to investigate the relationship between our experimental variables (in this case, stress) and the response (in this case, lifetime) is to use a scatterplot and look to see if there might be any basic mathematical function that could describe the relationship between the variables.

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bar Stress
]
.right-column[

** Example: Strain on Bars (continued) **

Our data:

|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |

-  Plotting stress along the \\(x\\)-axis and plotting lifetime along the \\(y\\)-axis we get

<center>
   <img src="figure/stress_lifetime_plot.png" alt="dmc logo" height="325"> 
</center>

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bar Stress
]
.right-column[

** Example: Strain on Bars (continued) **

Our data:

|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |

-  Examining the plot, we might determine that there could be a linear relationship between the two.  The red line looks like it fits the data pretty well.

<center>
   <img src="figure/stress_lifetime_plot_line1.png" alt="dmc logo" height="325"> 
</center>

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bar Stress
]
.right-column[

** Example: Strain on Bars (continued) **

Our data:

|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |

-  But there are several other lines that fit the data pretty well, too.

<center>
   <img src="figure/stress_lifetime_plot_line2.png" alt="dmc logo" height="250"> 
</center>

-  How do we decide which is best?

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bars
### Fitting Lines
]
.right-column[

### Where the line comes from

When we are trying to find a line that fits our data what we are _really_ doing is saying that there is a true physical relationship between our experimental variable \\(x\\) is related to our response \\(y\\) that has the following form:

**Theoretical Relationship**
\\[
 y = \beta_0 + \beta_1 \cdot x
\\]

However, the response we observe is also effected by random noise:

**Observed Relationship**
\begin{align}
y &= \beta_0 + \beta_1 \cdot x + \text{errors} \\\\
  &= \text{signal} + \text{noise} 
\end{align}

If we did a good job, hopefully we will have small enough errors so that we can say
\\[
y \approx \beta_0 + \beta_1 \cdot x 
\\]

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bars
### Fitting Lines
]
.right-column[

### Where the line comes from

So, if things have gone well, we are attempting to estimate the value of \\(\beta_0\\) and \\(\beta_1\\) from our observed relationship

\\[
y \approx \beta_0 + \beta_1 \cdot x 
\\]

Using the following notation:
-  \\(b\_0\\) is the estimated value of \\(\beta\_0\\) and
-  \\(b\_1\\) is the estimated value of \\(\beta\_1\\)
-  \\(\hat{y}\\) is the estimated response

We can write a **fitted relationship**:
\\[
\hat{y} = b\_0 + b\_1 \cdot x 
\\]

The key here is that we are going from the underlying _true, theoretical_ relationship to an _estimated_ relationship.

In other words, we will never get the true values \\(\beta_0\\) and \\(\beta_1\\) but we can estimate them.

However, this doesn't tell us _how_ to estimate them.

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bars
### Fitting Lines
### Best Estimate
]
.right-column[

### The principle of Least Squares

A good estimte should be based on the data. 

Suppose that we have observed responses \\(y\_1, y\_2, \ldots, y\_n\\) for experimental variables set at \\(x\_1, x\_2, \ldots, x\_n\\).

Then the **Principle of Least Squares** says that the best estimate of \\(\beta\_0\\) and \\(\beta\_1\\) are values that **minimize**

\\[
\sum_{i = 1}^n (y\_i - \hat{y}\_i)^2
\\]

In our case, since \\( \hat{y}\_i = b\_0 + b\_1 \cdot x\_i \\) we need to choose values for \\(b\_0\\) and \\(b\_1\\) that minimize

\\[
\sum\_{i = 1}^n (y\_i - \hat{y}\_i)^2 = \sum\_{i = 1}^n \left(y\_i - (b\_0 + b\_1 \cdot x\_i ) \right)^2
\\]
In other words, we need to minimize something with respect to two values we get to choose - we can do this by taking derivatives.

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bars
### Fitting Lines
### Best Estimate
]
.right-column[

### Deriving the Least Squares Estimates

We can rewrite the target we want to minimize so that the variables are less tangled together:

<span style = "font-size: 70%">
\begin{align}
\sum\_{i = 1}^n (y\_i - \hat{y}\_i)^2 &= \sum\_{i = 1}^n \left(y\_i - (b\_0 + b\_1 x\_i ) \right)^2 \\\\
                                      &= \sum\_{i = 1}^n \left(y\_i^2 - 2 y\_i (b\_0 + b\_1 x\_i ) + (b\_0 + b\_1 x\_i )^2\right) \\\\
                                      &= \sum\_{i = 1}^n y\_i^2 - \sum\_{i = 1}^n 2 y\_i (b\_0 + b\_1 x\_i ) + \sum\_{i = 1}^n (b\_0 + b\_1 x\_i )^2 \\\\
                                      &= \sum\_{i = 1}^n y\_i^2 - \sum\_{i = 1}^n (2 y\_i b\_0 + 2 y\_i b\_1 x\_i ) + \sum\_{i = 1}^n \left(b\_0^2 + 2 b\_0 b\_1 x\_i + (b\_1 x\_i )^2 \right) \\\\
                                      &= \sum\_{i = 1}^n y\_i^2 - \sum\_{i = 1}^n 2 y\_i b\_0 - \sum\_{i = 1}^n 2 y\_i b\_1 x\_i + \sum\_{i = 1}^n b\_0^2 + \sum\_{i = 1}^n 2 b\_0 b\_1 x\_i + \sum\_{i = 1}^n b\_1^2 x\_i^2  \\\\
                                      &= \sum\_{i = 1}^n y\_i^2 - 2 b\_0 \sum\_{i = 1}^n y\_i - 2 b\_1 \sum\_{i = 1}^n y\_i x\_i + n b\_0^2 + 2 b\_0 b\_1 \sum\_{i = 1}^n x\_i + b\_1^2 \sum\_{i = 1}^n x\_i^2  \\\\
\end{align}
</span>
]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bars
### Fitting Lines
### Best Estimate
]
.right-column[

### Deriving the Least Squares Estimates (continued)

How do we minimize it?

-  Since we have two "variables" we need to take derivates with respect to both. 

-  Remember we have our data so we know every value of \\(x_i\\) and \\(y_i\\) and can treat those parts as constants.

**The derivative with respect to \\(\mathbf{b\_0}\\)**:
\\[
-2 \sum\_{i = 1}^n y\_i + 2 n b\_0 + 2 b\_1 \sum\_{i = 1}^n x\_i 
\\]

**The derivative with respect to \\(\mathbf{b\_0}\\)**:
\\[
-2 b\_0 \sum\_{i = 1}^n y\_i x\_i + 2 b\_0 \sum\_{i = 1}^n x\_i + 2 b\_1 \sum\_{i = 1}^n x\_i^2
\\]
<span style = "font-size: 70%">
</span>

]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bars
### Fitting Lines
### Best Estimate
]
.right-column[

### Deriving the Least Squares Estimates (continued)

We set both equal to 0 and solve them at the same time:

\begin{align}
-2 \sum\_{i = 1}^n y\_i + 2 n b\_0 + 2 b\_1 \sum\_{i = 1}^n x\_i &= 0 \\\\
-2 b\_0 \sum\_{i = 1}^n y\_i x\_i + 2 b\_0 \sum\_{i = 1}^n x\_i + 2 b\_1 \sum\_{i = 1}^n x\_i^2 &=0 \\\\
\end{align}

We can rewrite the first equation as:
\begin{align}
b\_0 &= \frac{1}{n} \sum\_{i = 1}^n y\_i - b\_1 \frac{1}{n} \sum\_{i = 1}^n x\_i  \\\\
     &= \bar{y} - b\_1 \bar{x}
\end{align}

and then replace all \\(b\_0\\) in the second equation (there is some algebra type stuff along the way, of course)
]
---
.left-column[
## Describing Relationships
### Idea
### Ex: Bars
### Fitting Lines
### Best Estimate
]
.right-column[

### Deriving the Least Squares Estimates (continued)

After a little simplification we arrive at our estimates:

**Least Squares Estimates for Linear Fit**

\begin{align}
b\_0 &= \bar{y}- b\_1 \bar{x} \\\\
b\_1 &= \frac{\sum\_{i = 1}^n y\_i x\_i - n \bar{x} \bar{y}}{\sum\_{i = 1}^n x\_i^2 - n \bar{x}^2} \\\\
     &= \frac{\sum\_{i = 1}^n (x\_i - \bar{x})(y\_i - \bar{y})}{\sum\_{i = 1}^n (x\_i - \bar{x})^2}
\end{align}

**Wrap Up**
-  Don't try to memorize the derivation. I will never ask you to do that on an exam.
-  Try to understand the simplification steps - the ones that moved constants out of summations for example.
-  This is one rule - there are others, but **Least Squares Estimates** have some useful properties that will make them the obvious best choice as we continue the course.

]
