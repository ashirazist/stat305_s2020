name: inverse
layout: true
class: center, middle, inverse
---
# STAT 305: Lecture 8
## Describing Relationships
### and
## Fitting Mathematical Relationships
.footnote[Course page: [imouzon.github.io/stat305](https://imouzon.github.io/stat305)]
---
# Continuing from Lecture 7
---
layout:false

.left-column[
## Describing Relationships
### Recap

]
.right-column[

** Last lecture example: Strain on Bars **

We introduced data from an experiment:

|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |

Judging from the plot, it seems reasonable to assume that there could be an underlying linear relationship between lifetime \\(y\\) and strain (\\(x\\))

<center>
   <img src="figure/stress_lifetime_plot.png" alt="dmc logo" height="325"> 
</center>

]
---
.left-column[
## Describing Relationships
### Recap

]
.right-column[

** Last lecture example: Strain on Bars **


|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |

**Theoretical Relationship**
\\[
 y = \beta_0 + \beta_1 \cdot x
\\]

**Observed Relationship**
\begin{align}
y &= \beta_0 + \beta_1 \cdot x + \text{errors} \\\\
  &= \text{signal} + \text{noise} 
\end{align}

**Fitted Relationship**:
\\[
\hat{y} = b\_0 + b\_1 \cdot x 
\\]

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

We set both partial derivatives equal to 0 and solve them at the same time:

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
-  This is one rule - there are others, but **Least Squares Estimates** have some useful properties that will make it the obvious best choice as we continue the course.

]
---
.left-column[
## Describing Relationships
### Recap

]
.right-column[

** Last lecture example: Strain on Bars **

|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |

Estimating the best slope and intercept using least squares:

<span style = "font-size: 70%">
\begin{align}
b\_0 &= \bar{y}- b\_1 \bar{x} \\\\
b\_1 &= \frac{\sum\_{i = 1}^n y\_i x\_i - n \bar{x} \bar{y}}{\sum\_{i = 1}^n x\_i^2 - n \bar{x}^2} \\\\
     &= \frac{\sum\_{i = 1}^n (x\_i - \bar{x})(y\_i - \bar{y})}{\sum\_{i = 1}^n (x\_i - \bar{x})^2}
\end{align}
</span>

In our case we have the following:


<span style = "font-size: 70%">
\\[
\sum\_{i = 1}^{10} y\_i = 484, 
\sum\_{i = 1}^{10} x\_i = 200, 
\sum\_{i = 1}^{10} x\_i y\_i = 8407.5, 
\sum\_{i = 1}^{10} x\_i^2 = 5412.5, 
\\]
</span>


]
---
.left-column[
## Describing Relationships
### Recap

]
.right-column[

** Last lecture example: Strain on Bars **


|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |



<span style = "font-size: 70%">
\\[
\sum\_{i = 1}^{10} y\_i = 484, 
\sum\_{i = 1}^{10} x\_i = 200, 
\sum\_{i = 1}^{10} x\_i y\_i = 8407.5, 
\sum\_{i = 1}^{10} x\_i^2 = 5412.5, 
\\]
</span>

Using this we can estimate \\(b\_1\\):

<span style = "font-size: 80%">
\begin{align}
b\_1 &= \frac{\sum\_{i = 1}^n y\_i x\_i - n \bar{x} \bar{y}}{\sum\_{i = 1}^n x\_i^2 - n \bar{x}^2} \\\\
     &= \frac{8407.5 - 10 \left(\frac{200}{10}\right) \left(\frac{484}{10}\right)}{5412.5 - 10 \left(\frac{200}{10}\right)^2} \\\\
     &= \frac{-1272.5}{1412.5} \\\\
     &\approx -0.9009
\end{align}
</span>

]
---
.left-column[
## Describing Relationships
### Recap
]
.right-column[

** Last lecture example: Strain on Bars **


|                                      |      |      |      |      |      |      |      |      |      |      |
|--------------------------------------|------|------|------|------|------|------|------|------|------|------|
| **stress** \\((\text{kg/mm}^2)\\)    |  2.5 |  5.0 | 10.0 | 15.0 | 17.5 | 20.0 | 25.0 | 30.0 | 35.0 | 40.0 |
| **lifetime** (hours)                 |  63  |  58  |  55  |  61  |  62  |  37  |  38  |  45  |  46  |  19  |



<span style = "font-size: 70%">
\\[
\sum\_{i = 1}^{10} y\_i = 484, 
\sum\_{i = 1}^{10} x\_i = 200, 
\sum\_{i = 1}^{10} x\_i y\_i = 8407.5, 
\sum\_{i = 1}^{10} x\_i^2 = 5412.5, 
\\]
</span>

And using \\(b\_1\\) we can estimate \\(b\_0\\):

<span style = "font-size: 80%">
\begin{align}
b\_0 &= \bar{y} - b\_1 \bar{x} \\\\
     &= \left(\frac{484}{10}\right) - b\_1 \left(\frac{200}{10}\right) \\\\
     &= 48.4 - \left(\frac{-1272.5}{1412.5}\right) 20.0\\\\
     &= 66.4177
\end{align}
</span>

Which gives us the **Fitted Relationship**:

\\[
\hat{y} = 66.4177 - 0.9009 x
\\]
]
---
.left-column[
## Describing Relationships
### Recap
### Using JMP
]
.right-column[

**Topics to be covered in JMP**

-  Fitting linear relationships
-  Describing quality of fit (correlation, \\(R^2\\))
-  Fitting relationships using multiple variables
-  Fitting non-linear relationships

]
---
## Example: Manufacturing Ball Bearings

Controlling surface roughness is an important part of the manufacture of bearing balls. 
The key step in this smoothing the balls involves the use of a spinning weighted disc.
Two important aspects of this are the rotation speed of the disc and the weight applied to the disc.
Since higher weights and higher rotation speed are all known to cause shorter lifetimes for the discs (which requires halts in production, costs of new discs, and so on), a team of engineers are attempting to better understand the relationship between the rotation speed, the weight, and the resulting surface roughness of the balls produced.
---
## Experiment 1: Constant speed, changing applied weight
With the disc rotation speed locked at 50 rotations/second, the team of engineers created 60 batches of balls using differently weighted discs (0.025 g, 0.050 g, 0.075 g, 0.100 g, ..., 0.500 g) and randomly selected one ball from each batch. 
The results are recorded in the dataset "balls-001.csv" on the course page.
---
## Experiment 2: Changing speed, constant applied weight
With an better understanding of the relationship between weight and surface roughness, the team turned their attention to rotation speed.
This time the produced 3 batches for each of 15 rotation speeds (25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, and 95 rotations per second). 
The results are recorded in the dataset "balls-002.csv" on the course page.
---
## Experiment 3: Changing speed changing applied weight

With a better understanding of the relationship between weight and surface roughness, the team turned their attention to rotation speed.
This time the produced 3 batches for each combination of 20 weights 
(0.025 g, 0.050 g, 0.075 g, 0.100 g, ..., 0.500 g)
and 15 rotation speeds (25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, and 95 rotations per second).
The results are recorded in the dataset "balls-003.csv"
