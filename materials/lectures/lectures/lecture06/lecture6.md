```{r cache=FALSE, echo=FALSE, include = FALSE}
library(usefulR)
library(ggplot2)
library(knitr)

knitrSetup(flavor = "html", fig.folder = "www/lecture6", cache.folder = "www/lecture6")

if(FALSE) 
   rmd2html("lecture6.Rmd")
```

```{r echo=FALSE, cache=FALSE, include = FALSE}
   mode_values <- function(x){
      tbl <- table(x)
      names(which(tbl == max(tbl)))
   }

   print_multiple <- function(x){
      if(length(x) == 1){
         x
      }else{
         xfirst <- x[1:(length(x)-1)]
         paste(paste0(xfirst,collapse = ", "),"and",x[length(x)])
      }
   }

   my_quantile <- function(p,x){
      x <- x[order(x)]
      
      n <- length(x)

      raw.i <- n*p + .5
      floor.i <- floor(raw.i)
      if(floor.i == raw.i){
         x[floor.i]
      }else{
         x[floor.i] + (n*p - floor.i + .5)*(x[floor.i+1] - x[floor.i])
      }
   }

```
name: inverse
layout: true
class: center, middle, inverse
---
# STAT 305: Lecture 6
## Chapter 3: Elementary Descriptive Statistics
.footnote[Course page: [imouzon.github.io/stat305](https://imouzon.github.io/stat305)]
---
# Recap
## Summarizing Data
### 
## Using Graphical and Numerical Methods
---
layout:false
.left-column[
## Recap
### Location
]
.right-column[
## Summarizing Data Numerically

Motivated by asking what is *normal/common/expected* for this data

**Mean**: A "fair" center value - `\( \frac{1}{n} \sum_{i=1}^{n} x_i \)`

**Mode**: The most commonly occurring value in set

**Median**: The value dividing the set in half (the middle of the values).
```
              Group 1             Group 2
            74 79 77 81         65 77 78 74
            68 79 81 76         76 73 71 71
            81 80 80 78         86 81 76 89
            88 83 79 91         79 78 77 76
            79 75 74 73         72 76 75 79    
```

```{r eval = TRUE, echo = FALSE, tidy = TRUE, fig.height = 1.5, fig.width = 3, dpi = 150}
   grp1 <- c(74, 79, 77, 81, 68, 79, 81, 76, 81, 80, 80, 78, 88, 83, 79, 91, 79, 75, 74, 73)
   grp2 <- c(65, 77, 78, 74, 76, 73, 71, 71, 86, 81, 76, 89, 79, 78, 77, 76, 72, 76, 75, 79)
   dotplots <- data.frame(values = c(grp1,grp2), groups = rep(c("Group 1","Group 2"), each = length(grp1)))

   #ggplot(data=dotplots, aes(x = values, fill = factor(groups))) + geom_dotplot(binwidth = 1) + facet_grid(groups~.)
```

For group 1, the mean is `r mean(grp1)`, the median is `r median(grp1)`, and the mode is `r print_multiple(mode_values(grp1))`.

For group 2, the mean is `r mean(grp2)`, the median is `r median(grp2)`, and the mode is `r print_multiple(mode_values(grp2))`.
]
---
layout:false
.left-column[
## Recap
### Location
### Spread
]
.right-column[
## Summarizing Data Numerically

Motivated by asking what kind of *variability is seen in the data* or *how spread out* the data is.

**Range**: The difference between the highest and lowest values (Range = max - min)

**IQR**: The Interquartile Range, how spread out is the middle 50% (IQR =  Q3 - Q1)

**Variance/Standard Deviation**: Uses squared distance from the mean.

|                 | &nbsp;&nbsp;&nbsp;   | Variance                                                      | &nbsp;&nbsp;&nbsp;   | Standard Deviation                                                  |
|:----------------|----------------------|---------------------------------------------------------------|----------------------|---------------------------------------------------------------------|
| &nbsp           |                      |                                                               |                      |                                                                     |
| **Population**  |                      | `\(\sigma^2 =  \frac{1}{n}\sum_{i=1}^{n}(x_i - \bar{x})^2 \)` |                      | `\(\sigma = \sqrt{\frac{1}{n}\sum_{i=1}^{n}(x_i - \bar{x})^2} \)`   |
| &nbsp           |                      |                                                               |                      |                                                                     |
| &nbsp           |                      |                                                               |                      |                                                                     |
| **Sample**      |                      | `\( s^2 = \frac{1}{n-1}\sum_{i=1}^{n}(x_i - \bar{x})^2 \)`    |                      | `\(s =  \sqrt{\frac{1}{n-1}\sum_{i=1}^{n}(x_i - \bar{x})^2} \)`     |
]
---
layout:false
.left-column[
## Recap
### Location
### Spread
]
.right-column[
## Summarizing Data Numerically
**Example**: Taking a sample of size 5 from a population we record the following values:

```{r echo = FALSE}
   samp <- sample(50:70,5)
   samp_bar <- round(mean(samp),2)
```

<center>
`r samp`
</center>

Find the variance and standard deviation of this sample.
]

---
layout:false
## Example: Finding the Variance

Since we are told it is a sample, we need to use **sample variance**.
The mean of `r samp` is `r mean(samp)`
`\[
\begin{align}
s^2 &= \frac{1}{n-1}\sum_{i=1}^5 (x_i - \bar{x})^2 \\\\
    &= \frac{1}{n-1}\left( (x_1 - \bar{x})^2 + (x_2 - \bar{x})^2 + (x_3 - \bar{x})^2 + (x_4 - \bar{x})^2 + (x_5 - \bar{x})^2 \right) \\\\
    &= \frac{1}{`r length(samp)`-1} \left((`r samp[1]` - `r samp_bar`)^2 + (`r samp[2]` - `r samp_bar`)^2 + (`r samp[3]` - `r samp_bar`)^2 + (`r samp[4]` - `r samp_bar`)^2 + (`r samp[5]` - `r samp_bar`)^2 \right) \\\\
    &= \frac{1}{`r length(samp) - 1`} \left( (`r samp[1] -  samp_bar`)^2 + (`r samp[2] -  samp_bar`)^2 + (`r samp[3] -  samp_bar`)^2 + (`r samp[4] -  samp_bar`)^2 + (`r samp[5] -  samp_bar`)^2 \right) \\\\
    &= \frac{1}{`r length(samp) - 1`} \left( `r (samp[1] -  samp_bar)^2` + `r (samp[2] -  samp_bar)^2` + `r (samp[3] -  samp_bar)^2` + `r (samp[4] -  samp_bar)^2` + `r (samp[5] -  samp_bar)^2` \right) \\\\
    &=  `r ((samp[1] -  samp_bar)^2 +  (samp[2] -  samp_bar)^2 +  (samp[3] -  samp_bar)^2 +  (samp[4] -  samp_bar)^2 +  (samp[5] -  samp_bar)^2)/(length(samp) -1) ` \\\\
\end{align}
\]`

---
## Example: Finding the Standard Deviation

With `\(s^2\)` known, finding `\(s\)` is simple:

`\[
\begin{align}
   s &= \sqrt{s^2} \\\\
     &= \sqrt{`r ((samp[1] -  samp_bar)^2 +  (samp[2] -  samp_bar)^2 +  (samp[3] -  samp_bar)^2 +  (samp[4] -  samp_bar)^2 +  (samp[5] -  samp_bar)^2)/(length(samp) -1)`} \\\\
     &= `r sqrt(((samp[1] -  samp_bar)^2 +  (samp[2] -  samp_bar)^2 +  (samp[3] -  samp_bar)^2 +  (samp[4] -  samp_bar)^2 +  (samp[5] -  samp_bar)^2)/(length(samp) -1))` \\\\
\end{align}
\]`

---
layout:false
.left-column[
## Recap
### Location
### Spread
### Quantiles 
]
.right-column[
## Summarizing Data Numerically

Two useful pieces of notation:

**floor**: `\(\lfloor x \rfloor \)` is the largest integer smaller than or equal to `\( x \)`

**ceiling**: `\(\lceil x \rceil \)` is the smallest integer larger than or equal to `\( x \)`


**Examples**

-  `\(\lfloor 55.2 \rfloor  = 55\)`

-  `\(\lceil 55.2 \rceil  = 56\)`

-  `\(\lfloor 19 \rfloor  = 19\)`

-  `\(\lceil 19 \rceil  = 19\)`

-  `\(\lceil -3.2 \rceil = -3\)`

-  `\(\lceil -3.2 \rceil = -3\)`
]
---
layout:false
.left-column[
## Recap
### Location
### Spread
### Quantiles 
]
.right-column[
## Summarizing Data Numerically
### The Quantile Function

For a data set consisting of `\(n\)` values that when ordered are `\(x_1 \le x_2 \le \ldots \le x_n\)` and `\( 0 \le p \le 1\)`.
We define the **quantile** `\(Q(p)\)` as:
`\[
   Q(p) = 
   \begin{cases}
   x_i & \lfloor n \cdot p + .5 \rfloor = n \cdot p + .5 \\
   x_i  + \left( n p - i + .5 \right) \left( x_{i+1} - x_i \right) &  \lfloor n \cdot p + .5 \rfloor \ne n \cdot p + .5 \\
   \end{cases}
\]`

(note: this is the definition used in the book - it's just written using *floor* and *ceiling* instead of in words)
]
---
layout:false
```{r include = FALSE}
newsamp <- c(58, 76, 66, 61, 50, 77, 67, 64, 41, 61)
newsamp_ord <- newsamp[order(newsamp)]
```
.left-column[
## Recap
### Location
### Spread
### Quantiles 
]
.right-column[
**Example**
Using the quantile function , find the .25, .50, .75, .92, and .17 quantiles using:
<center>
`r newsamp`
</center>

**Solution**

First notice that `\(n = 10\)`. It is possible helpful to set up the following table:

|          |    |    |    |    |    |    |    |    |    |    |
|----------|----|----|----|----|----|----|----|----|----|----|
| data     | 41 | 50 | 58 | 61 | 61 | 64 | 66 | 67 | 76 | 77 |
| `\(i\)`  | 1  |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 | 10 |
| `\(\frac{i - .5}{n}\)`  | `r (1 - .5)/10`  |  `r (2 - .5)/10` |  `r (3 - .5)/10` |  `r (4 - .5)/10` |  `r (5 - .5)/10` |  `r (6 - .5)/10` |  `r (7 - .5)/10` |  `r (8 - .5)/10` |  `r (9 - .5)/10` | `r (10 - .5)/10` |

Finding `\(Q(.25)\)`:

-  `\( n p + .5 = 10 \cdot .25 + .5 = 3 \)`. 

-  since `\(\lfloor 3 \rfloor = 3 \)` then `\(Q(.25) = x_3 = 58 \)`
]
---
layout:false
.left-column[
## Recap
### Location
### Spread
### Quantiles 
]
.right-column[
**Example**
Using the quantile function , find the .25, .50, .75, .92, and .17 quantiles using:
<center>
`r newsamp`
</center>

**Solution**

Finding `\(Q(.5)\)`

-  `\( n p + .5 = 10 \cdot 0.5 + 0.5 = 5.5 \)`. 

-  since `\(\lfloor 5.5 \rfloor = 5 \)` then `\(i = 5\)` and

`\[
  \begin{align}
  Q(.5) &= x_i + (n \cdot p - i + .5) \cdot \left( x_{i+1} - x_i \right)  \\\\
         &= x_5 + (10 \cdot 0.5 - 5 + .5) \cdot \left( x_{5+1} - x_5 \right)  \\\\
         &= x_5 + (.5) \cdot \left( x_{6} - x_5 \right)  \\\\
         &= 61 + (.5) \cdot \left( 64 - 61 \right)  \\\\
         &= 62.5 
  \end{align}
\]`
]
---
layout:false
.left-column[
## Recap
### Location
### Spread
### Quantiles 
]
.right-column[
**Example**
Using the quantile function , find the .25, .50, .75, .92, and .17 quantiles using:
<center>
`r newsamp`
</center>

**Solution**

Finding `\(Q(.75)\)`

-  `\( n p + .5 = 10 \cdot 0.75 + 0.5 = 8 \)`. 

-  since `\(\lfloor 8 \rfloor = 8 \)` then `\(Q(.75) = x_8 = 67 \)`
]
---
layout:false
.left-column[
## Recap
### Location
### Spread
### Quantiles 
]
.right-column[
**Example**
Using the quantile function , find the .25, .50, .75, .92, and .17 quantiles using:
<center>
`r newsamp`
</center>

**Solution**

Finding `\(Q(.92)\)`

-  `\( n p + .5 = 10 \cdot 0.92 + 0.5 = 9.7 \)`. 

-  since `\(\lfloor 9.7 \rfloor = 9 \)` and `\( \lceil 9.7 \rceil = 10 \)` then `\(i = 9\)` and

`\[
  \begin{align}
  Q(.92) &= x_i + (n \cdot p - i + .5) \cdot \left( x_{i+1} - x_i \right)  \\\\
         &= x_9 + (10 \cdot 0.92 - 9 + .5) \cdot \left( x_{9+1} - x_9 \right)  \\\\
         &= x_9 + (.7) \cdot \left( x_{10} - x_9 \right)  \\\\
         &= 76 + (.7) \cdot \left( 77 - 76 \right)  \\\\
         &= `r 76 + .7 * (77 - 76)`
  \end{align}
\]`
]
---
name: inverse
layout: true
class: center, middle, inverse
---
# Chapter 3.2: Plots Using Quantiles
---
layout: false
.left-column[
## Recap
## Plots and Quantiles
### Boxplots
]
.right-column[

## Boxplots

A simple plot making use of the first, second and third quartiles (i.e., `\(Q(.25)\)`, `\(Q(.5)\)` and `\(Q(.75\)`.

1.  A box is drawn so that it covers the range from `\(Q(.25)\)` up to `\(Q(.75)\)` with a vertical line at the median.
2.  Whiskers extend from the sides of the box to the furthest points within 1.5 IQR of the box edges
3.  Any points beyond the whiskers are plotted on their own.

```{r eval = TRUE, echo = FALSE, tidy = TRUE, fig.height = 1.5, fig.width = 4, dpi = 150}
   grp1 <- c(74, 79, 77, 81, 68, 79, 81, 76, 81, 80, 80, 78, 88, 83, 79, 91, 79, 75, 74, 73)
   grp2 <- c(65, 77, 78, 74, 76, 73, 71, 71, 86, 81, 76, 89, 79, 78, 77, 76, 72, 76, 75, 79)
   dotplots <- data.frame(values = c(grp1,grp2), group = rep(c("Group 1","Group 2"), each = length(grp1)))

   ggplot(data = dotplots, aes(x = group, y = values)) + geom_boxplot() + coord_flip()
```
]
---
.left-column[
## Recap
## Plots and Quantiles
### Boxplots
]
.right-column[
**Example**: 
Draw boxplots for the groups using quantile function
```
              Group 1             Group 2
            74 79 77 81         65 77 78 74
            68 79 81 76         76 73 71 71
            81 80 80 78         86 81 76 89
            88 83 79 91         79 78 77 76
            79 75 74 73         72 76 75 79    
```

**solution**:
First we need the quartile values:

|          | `\(Q(.25)\)` | `\(Q(.5)\)` | `\(Q(.75)\)` |
|----------|--------------|-------------|--------------|
| Group 1  | `r my_quantile(.25,grp1)` | `r my_quantile(.5,grp1)` | `r my_quantile(.75,grp1)` |
| &nbsp    | | | | 
| Group 2  | `r my_quantile(.25,grp2)` | `r my_quantile(.5,grp2)` | `r my_quantile(.75,grp2)` |

This means that Group 1 has IQR = `r my_quantile(.75,grp1) - my_quantile(.25,grp1)` and 1.5\*IQR = `r 1.5*(my_quantile(.75,grp1) - my_quantile(.25,grp1))`
while Group 2 has IQR = `r my_quantile(.75,grp2) - my_quantile(.25,grp2)` and 1.5\*IQR = `r 1.5*(my_quantile(.75,grp2) - my_quantile(.25,grp2))`
]
---
.left-column[
## Recap
## Plots and Quantiles
### Boxplots
### Quantile Plots
]
.right-column[
### Quantile Plots: 

**Scatterplots using quatiles and their corresponding values**

For each `\(x_i\)` in the data set, we plot `\(\left(\frac{i - .5}{n}, x_i\right)\)` - meaning we are plotting `\( (p, Q(p)) \)`.
We connect the points with a straight line, which follows the values of `\(Q(p)\)` exactly.

Consider the sample: 13, 15, 18, 19, 21, 34, 35, 35, 36, 39.
The following table which helps create the plot:

```{r include = FALSE}
exp4 <- c(13, 15, 18, 19, 21, 34, 35, 35, 36, 39)
res4 <- (1:10 - .5)/10
```

|            |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |  10  |
|------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|------|
| `\(p\)`    |  `r res4[1]`  |  `r res4[2]`  |  `r res4[3]`  |  `r res4[4]`  |  `r res4[5]`  |  `r res4[6]`  |  `r res4[7]`  |  `r res4[8]`  |  `r res4[9]`  |  `r res4[10]`  |
| `\(Q(p)\)` |  `r exp4[1]`  |  `r exp4[2]`  |  `r exp4[3]`  |  `r exp4[4]`  |  `r exp4[5]`  |  `r exp4[6]`  |  `r exp4[7]`  |  `r exp4[8]`  |  `r exp4[9]`  |  `r exp4[10]`  |


```{r eval = TRUE, echo = FALSE, tidy = TRUE, fig.height = 2, fig.width = 2, dpi = 100}
   fig4 <- data.frame("p" = res4, "Qp" = exp4)
   ggplot(data=fig4, aes(x = p, y = Qp)) + geom_point() + geom_line()
```
]
---
.left-column[
## Recap
## Plots and Quantiles
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

```{r include = FALSE}
exp4 <- c(13, 15, 18, 19, 21, 34, 35, 35, 36, 39)
exp5 <- 2*exp4 + 1
res4 <- (1:10 - .5)/10
ds5 <- data.frame("Qp1" = exp4, "Qp2" = exp5)
```
-  Set 1: `r exp4` 
-  Set 2: `r exp5` 

|            |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |  10  |
|------------|-----|-----|-----|-----|-----|-----|-----|-----|-----|------|
| `\(p\)`    |  `r res4[1]`  |  `r res4[2]`  |  `r res4[3]`  |  `r res4[4]`  |  `r res4[5]`  |  `r res4[6]`  |  `r res4[7]`  |  `r res4[8]`  |  `r res4[9]`  |  `r res4[10]`  |
| &nbsp            |  |    |    |    |    |    |    |    |    |    |
| Set 1 `\(Q(p)\)` |  `r exp4[1]`  |  `r exp4[2]`  |  `r exp4[3]`  |  `r exp4[4]`  |  `r exp4[5]`  |  `r exp4[6]`  |  `r exp4[7]`  |  `r exp4[8]`  |  `r exp4[9]`  |  `r exp4[10]`  |
| &nbsp            |  |    |    |    |    |    |    |    |    |    |
| Set 2 `\(Q(p)\)` |  `r exp5[1]`  |  `r exp5[2]`  |  `r exp5[3]`  |  `r exp5[4]`  |  `r exp5[5]`  |  `r exp5[6]`  |  `r exp5[7]`  |  `r exp5[8]`  |  `r exp5[9]`  |  `r exp5[10]`  |
]
---
layout: false
.left-column[
## Recap
## Plots and Quantiles
### Boxplots
### Quantile Plots
### QQ Plots
]
.right-column[
### Quantile-Quantile Plots: 

The resulting plot shows some kind of linear pattern - this means that the quantiles increase at the same rate, even if the sizes of the values themselves are very different.

```{r eval = TRUE, echo = FALSE, tidy = TRUE, fig.height = 4, fig.width = 4, dpi = 100}
   ggplot(data=ds5, aes(x = Qp1, y = Qp2)) + geom_point()
```
]
