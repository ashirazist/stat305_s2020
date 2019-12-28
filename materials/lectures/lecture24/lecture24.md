layout: true
class: center, middle, inverse
---
# Continuing Statistical Inference II
## One-Sided vs Two-Sided Tests
### and
## Comparing Means
---
layout:false
.left-column[
## Hypothesis Tests
### Common Hypothesis Statements
]
.right-column[
## Common Hypothesis Statements

**Hypothesis Tests** are driven by what we actually assume - which means that they are driven by our hypothesis statement. When dealing with means, we generally have the following three versions of the hypothesis statement:

1. $H_0$: $\mu =$ #</br>$H_a$: $\mu \ne$ #

2. $H_0$: $\mu \ge$ #</br>$H_a$: $\mu <$ #

3. $H_0$: $\mu \le$ #</br>$H_a$: $\mu >$ #
]
---
layout:false
.left-column[
## Hypothesis Tests
### Common Hypothesis Statements
]
.right-column[
### Assumption: The mean is a specific value

Suppose we believe that the mean weight of a certain population of squirrels is 1.31 pounds - *exactly*. Not "around 1.31 pounds". Not 1.3105 and not 1.3095. 

In this case, we would be performing a test with a hypothesis statement like this:
 
<center>
$H_0$: $\mu = 1.31$</br>$H_a$: $\mu \ne 1.31$
</center>

Once we gather a sample, we would base our test-statistic on the assumption that the true value of $\mu$ is 1.31. We would reject our assumption if we found sufficient evidence that the mean was not *exactly* 1.31.

- If our test statistic was unusually low, we would reject our assumption (i.e., we would reject the null hypothesis).
- If our test statistic was unusually high, we would reject our assumption (i.e., we would reject the null hypothesis).

]
---
layout:false
.left-column[
## Hypothesis Tests
### Common Hypothesis Statements
]
.right-column[
### Assumption: The mean is a specific value

This means that what we would call "unusual" is spread out on both sides of our test statistics distribution. For instance, if we want to use a level of significance of 95% (meaning that our test will only reject a true null hypothesis 5% of the time) then we would reject our null hypothesis if our test statistics was in the 5% of observations we would be least likely to see. 

If we are calling both **very large** and **very small** test-statistic values unusual, than that means that we would only be rejecting if the test-statistic was in the smallest 2.5% of possible values or if the test-statistic was in the largest 2.5% of possible values.

We call this a "two-sided test" since there are two rejection regions.

**Example**</br>
I sampled 30 squirrels, found the average weight was 1.38 points with a sample variance of 0.25. Is there enough evidence to reject the assumption that the mean weight of the squirrel population is 1.38 at the 0.05 significance level?

]
---
layout:false
.left-column[
## Hypothesis Tests
### Common Hypothesis Statements
]
.right-column[
### Assumption: The mean is above a specific value

All situations are not based on assumptions that our parameter of interest is "exactly" a specific value. 

For instance, in the case of lightbulbs we might be incredibly petty to say that the mean lifetime of a specific design of bulb is not 3000 hours because we found evidence that it was actually 3010. 
In this case, we might actually be interested in a test where the only question of interest is if the lifetime is below 3000. 

This leads to a hypothesis statement in the following form:
 
<center>
$H_0$: $\mu \ge 3000$</br>$H_a$: $\mu < 3000$
</center>

Here, we will base our test statistic on the assumption that the true lifetime is 3000. If our resulting t-statistic is unusually small, then we would reject our null hypothesis.

- If our test statistic was unusually low, we would reject our assumption (i.e., we would reject the null hypothesis).

]
---
layout:false
.left-column[
## Hypothesis Tests
### Common Hypothesis Statements
]
.right-column[
### Assumption: The mean is above a specific value

In this situation, we would only reject unusually *small* values. 

In other words, if we want to use a level of significance of 20% (meaning that our test will only reject a true null hypothesis 20% of the time) then we would reject our null hypothesis if our test statistics was in the smallest 20% of observations we could observe.

**Example**</br>
Using a sample 15 ligthbulbs, I found the average lifetime of the bulbs in my sample was 2968 hours. The variance of the lifetimes in my sample was 16 hours. Is there evidence, at the 0.10 significance level, that the lifetime of the bulbs is less than 3000 hours.

]
---
layout:false
.left-column[
## Hypothesis Tests
### Common Hypothesis Statements
]
.right-column[
### Assumption: The mean is below a specific value

This is just the mirror image of the previous test's rejection rule. For instance, suppose that you worked with a system in which the average temperature needed to be below 1500 K and if the temperature rose above that point, the system would need rest.

If we are only interested in determining if the system is higher than we want, then we might consider the following hypothesis statements:
 
<center>
$H_0$: $\mu \le 1500$</br>$H_a$: $\mu > 1500$
</center>

Again, in this case we are going to gather information about the system's temperature from the data and put the system to sleep if the sample indicates that the temperature is *unusually high*.

- If our test statistic was unusually high, we would reject our assumption (i.e., we would reject the null hypothesis).

]
---
layout:false
.left-column[
## Hypothesis Tests
### Common Hypothesis Statements
]
.right-column[
### Assumption: The mean is below a specific value

In this situation, we would only reject unusually *large* values.

In other words, if we want to use a level of significance of 0.01 then we would reject our null hypothesis if our test statistic was in the largest 1% of the possible values we could observe.

**Example**</br>
10 sensors in the system report temperatures at the same time. The average of the temperatures reported by the 10 sensors is currently 1500.55 K with a sample variance of 0.025. Is there evidence at the 0.20 significance level that the system's temperature is over 1500 K?

]
