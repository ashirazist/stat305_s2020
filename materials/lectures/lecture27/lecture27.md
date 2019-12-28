
name: inverse
layout: true
class: center, middle, inverse
---
# Inference Using JMP
---
layout:false
.left-column[
## Inference W/ JMP
]
.right-column[
## Inference Using JMP

Of course, people rarely do statistical analyses by hand. In fact, in the case where a bonafide statistical researcher conceives of an entirely new analytical method the creation and distribution of an accompanying computational tool is essentially required.

While there are common elements between the way results are presented, it is worth orienting yourself with a new software by checking that the way the software defines things matches your working definitions:
- Ex: JMP and R use two different definitions of "quantile"
- Ex: If $\sigma$ is unknown we use a $Z$-test if $n$ is large and a $T$-test if $n$ is small. Does the software follow the same rule of thumb on when to switch?

In other words, read the docs.
]
---
layout:false
.left-column[
## Inference W/ JMP
## Single Sample
]
.right-column[
### Inference With A Single Sample

Overtime, a battery will lose its capacity to store energy. A certain phone maker collects information from user's phones on the built-in battery's capacity at certain milestones in the battery's lifetime. The dataset `max_load.csv` contains the capacity of 50 such batteries after the 5000th charge (recorded as a percentage of the battery's original capacity)
>1.3, 46.89, 10.89, 48.76, 2.42, 11.85, 2.37, 32.39, 20.8, 2.28, 9.96, 27.67, 64.41, 31.15, 70.88, 37.69, 0.44, 46.59, 2.49, 27.99, 17.39, 12.54, 16.1, 3.21, 2.16, 6.27, 55.94, 19.5, 11.4, 3.04, 7.77, 0.26, 13.85, 2.54, 4.91, 1.78, 90.19, 0.56, 5.81, 11.72, 8.02, 25.14, 30.9, 4.89, 13.79, 24.68, 28.58, 5.24, 11.3, 10.24

The mean of the 50 batteries is 18.98 and the sample standard deviation is 20.34.

The phone maker is curious if there is evidence that batteries maintain at least 20% of their original capacity.

]
---
layout:false
.left-column[
## Inference W/ JMP
## Single Sample
### Conf Int for Mean
]
.right-column[
### Inference With A Single Sample

Confidence Intervals for mean percentage of original capacity in JMP:

1. Load data into a table

2. Select `Analyze > Distribution`

3. Select the column(s) for which we would like the confidence interval(s) and click "OK"

4. (*Optional*) Histogram to horizontal not vertical

5. From the dropdown in the `Summary Statistics` table, select "Customize Summary Statistics" and choose your desired level of confidence. 

]
---
layout:false
.left-column[
## Inference W/ JMP
## Single Sample
### Conf Int for Mean
### Hyp Test for Mean
]
.right-column[
### Inference With A Single Sample

Hypothesis Tests for mean percentage of original capacity in JMP:

1. Load data into a table

2. Select `Analyze > Distribution`

3. Select the column(s) for which we would like a hypothesis test and click "OK"

4. (*Optional*) Histogram to horizontal not vertical

5. From the dropdown with the histogram, select `Test Mean`

6. From the table choose the p-value that represents your test (two-sided, reject below, reject above)

]
---
layout:false
.left-column[
## Inference W/ JMP
## Single Sample
### Conf Int for Mean
### Hyp Test for Mean
### Conf Int for Std Dev
]
.right-column[
### Inference With A Single Sample

Confidence intervals for the true standard deviation of the percentage of original capacity in JMP:

1. Load data into a table

2. Select `Analyze > Distribution`

3. Select the column(s) for which we would like the confidence interval(s) and click "OK"

4. (*Optional*) Histogram to horizontal not vertical

5. From the dropdown with the histogram, select `Confidence Interval` and select your level of confidence.

6. The table with the confidence interval is returned to the report.

]
---
layout:false
.left-column[
## Inference W/ JMP
## Single Sample
### Conf Int for Mean
### Hyp Test for Mean
### Conf Int for Std Dev
### Hyp Test for Std Dev
]
.right-column[
### Inference With A Single Sample

Hypothesis Tests for the true standard deviation of the percentage of original capacity in JMP:

1. Load data into a table

2. Select `Analyze > Distribution`

3. Select the column(s) for which we would like a hypothesis test and click "OK"

4. (*Optional*) Histogram to horizontal not vertical

5. From the dropdown with the histogram, select `Test Std Dev`

6. From the table choose the p-value that represents your test (two-sided, reject below, reject above)

]
---
layout:false
.left-column[
## Inference W/ JMP
## Single Sample
### Conf Int for Mean
### Hyp Test for Mean
### Conf Int for Std Dev
### Hyp Test for Std Dev
### Checking Assumptions
]
.right-column[
### Inference With A Single Sample

We occasionally perform tests where we must assume that the data is normally distributed. We can check that assumption in JMP as follows:

1. Load data into a table

2. Select `Analyze > Distribution`

3. Select the column(s) for which we would like a hypothesis test and click "OK"

4. (*Optional*) Histogram to horizontal not vertical

5. From the dropdown with the histogram, select `Normal Quantile Plot`. 
   - Points along the line indicates that it is safe to assume normality
   - Points outside the dotted curves indicate that it is not safe to assume normality
   - Anything else is up for debate

]
---
layout:false
.left-column[
## Inference W/ JMP
## Single Sample
## Two Samples
]
.right-column[
## Inference With Two Samples

The researchers are testing two designs (A and B) to use in their next generation's phone. They have charged and discharged prototypes of each design 5000 times and have collected the following capacities (as percentages of the original capacity):

>**Design A** ($\bar{x} = 29.81$, $s = 26.98$)</br></br>
>27.17, 27.11, 55.4, 0.99, 21.19, 39.73, 0.53, 22.92, 94.83, 48.13, 3.87, 15.9

</br>

>**Design B** ($\bar{x} = 23.46$, $s = 14.12$)</br></br>
>33.14, 0.33, 47.57, 23.54, 25.24, 1.92, 24.27, 18.28, 29.34, 30.93

The goal is to select the design that maintains the most of its capacity.
]
---
layout:false
.left-column[
## Inference W/ JMP
## Single Sample
## Two Samples
### Comparing Means and Variances
]
.right-column[
### Comparing Means and Variances From Two Samples

1. Load data into a table

2. Select `Analyze > Fit Y by X`

3. The values to compare are the responses (Y), the group identifier is the explanatory variable (X).

4. From the dropdown select `Means and Std Deviation` to get the confidence intervals for the means.

5. From the dropdown select `Unequal Variances` to get the results of a hypothesis test assuming equal variances.

6. From the dropdown select `Means/Anova/Pooled t` to get the results of a hypothesis tests comparing the means which assume equal variances.

7. From the dropdown select `t Test` to get the results of a hypothesis tests comparing the means which do not assume equal variances.

]
