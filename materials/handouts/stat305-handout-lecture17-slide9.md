---
title: Lecture 17, Slide 9 Completed
course: Stat 305
semester: Spring 2019
...

\Large \textbf{Example: Example 19 in text book} \vspace{0.5cm}

>Suppose that $S$ and $R$ have joint probability density function:
>$$
>f_{SR}(s, r) = \frac{1}{16.5} e^{\left(-\frac{s}{16.5}\right)} \frac{1}{\sqrt{2 \pi (.25)}} e^{\left(-(r-s)^2/2(.25)\right)}
>$$
>if $s > 0$ and is 0 otherwise.
>
>1. Find $f_{S|R}(s|r)$. What is the distribution of $S$ if $R = r$?

In order to do this, we can start with the formula for conditional probability density functions:
$$
f_{S|R}(s|r) = \dfrac{f_{SR}(s, r)}{f_R(r)}
$$
Since we are being given $r$ then we can treat it like a constant - however, we still need $f_R(r)$ in this problem. Again, we have
$$
\begin{aligned}
f_{R}(r) &= \int_{-\infty}^{\infty} f_{SR}(s, r) ds \\\\
      &= \int_{-\infty}^{\infty} \frac{1}{16.5} e^{\left(-\frac{s}{16.5}\right)} \frac{1}{\sqrt{2 \pi (.25)}} e^{\left(-(r-s)^2/2(.25)\right)} ds \\\\
      &= \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \int_{-\infty}^{\infty} e^{\left(-\frac{s}{16.5}\right)} e^{\left(-(r^2 - 2rs + s^2)/(.5)\right)} ds \\\\
      &= \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \int_{-\infty}^{\infty} e^{\left(-\frac{1}{16.5} s \right)} e^{\left(-2 r^2 + 4 rs - 2 s^2)\right)} ds \\\\
      &= \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \int_{-\infty}^{\infty} e^{\left(-\frac{1}{16.5} s - 2 r^2 + 4 rs - 2 s^2)\right)} ds \\\\
      &= e^{\left( - 2 r^2 \right)} \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \int_{-\infty}^{\infty} e^{\left( (4r -\frac{1}{16.5}) s - 2 s^2)\right)} ds \\\\
\end{aligned}
$$
From the handout about pdf integration, we can see that if we set $\sigma^2 = 0.25$ and 
$\mu = 0.25 \left(4r - \frac{1}{16.5}\right) = \left(r - \frac{1}{64}\right) = \left(\frac{64r - 1}{64}\right)$ 
then the integral on the left becomes
$$
\begin{aligned}
\int_{-\infty}^{\infty} e^{\left( (4r -\frac{1}{16.5}) s - 2 s^2)\right)} ds 
&= \int_{-\infty}^{\infty} e^{\left( \frac{\mu}{\sigma^2} s - \frac{1}{2 \sigma^2} s^2)\right)} ds \\\\
&= \sqrt{2 \pi \sigma^2} \exp\left( \frac{\mu^2}{2 \sigma^2} \right) \\\\
&= \sqrt{\pi (0.5) } \exp \left( \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \\\\
\end{aligned}
$$
which allows us to return to finding $f_R(r)$:
$$
\begin{aligned}
f_{R}(r) 
&= e^{\left( - 2 r^2 \right)} \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \left[ \int_{-\infty}^{\infty} e^{\left( (4r -\frac{1}{16.5}) s - 2 s^2)\right)} ds \right] \\\\
&= e^{\left( - 2 r^2 \right)} \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \left[ \sqrt{\pi (0.5) } \exp \left( \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \right] \\\\
\end{aligned}
$$
Since we aren't interested in this function in particular, we may not want to spend valuable time simplifying it. Instead, we can go back to our real problem: 
$$
\begin{aligned}
f_{S|R}(s|r) = \dfrac{f_{SR}(s, r)}{f_R(r)}
&= \dfrac{
\frac{1}{16.5} e^{\left(-\frac{s}{16.5}\right)} \frac{1}{\sqrt{2 \pi (.25)}} e^{\left(-(r-s)^2/2(.25)\right)}
}{
e^{\left( - 2 r^2 \right)} \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \left[ \int_{-\infty}^{\infty} e^{\left( (4r -\frac{1}{16.5}) s - 2 s^2)\right)} ds \right]
} \\\\
&= \dfrac{
\frac{1}{16.5} e^{\left(-\frac{s}{16.5}\right)} \frac{1}{\sqrt{2 \pi (.25)}} e^{\left(-(r-s)^2/2(.25)\right)}
}{
e^{\left( - 2 r^2 \right)} \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \left[ \sqrt{\pi (0.5) } \exp \left( \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \right]
} \\\\
\end{aligned}
$$
and by canceling out as much as possible:
$$
\begin{aligned}
f_{S|R}(s|r) 
&= \dfrac{
\frac{1}{16.5} e^{\left(-\frac{s}{16.5}\right)} \frac{1}{\sqrt{2 \pi (.25)}} e^{\left(-(r-s)^2/2(.25)\right)}
}{
e^{\left( - 2 r^2 \right)} \frac{1}{16.5} \frac{1}{\sqrt{2 \pi (.25)}} \left[ \sqrt{\pi (0.5) } \exp \left( \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \right]
} \\\\
&= \dfrac{
e^{\left(-\frac{s}{16.5}\right)} e^{\left(-(r-s)^2/2(.25)\right)}
}{
e^{\left( - 2 r^2 \right)} \left[ \sqrt{\pi (0.5) } \exp \left( \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \right]
} \\\\
&= \dfrac{1} { \sqrt{\pi (0.5) } } e^{\left(-\frac{s}{16.5}\right)} e^{\left(-(r-s)^2/2(.25)\right)} e^{\left( 2 r^2 \right)} \exp \left( - \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \\\\
&= \dfrac{1} { \sqrt{\pi (0.5) } } \exp\left( -\frac{4}{64} s -2(r-s)^2 + 2 r^2 - \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \\\\
&= \dfrac{1} { \sqrt{\pi (0.5) } } \exp\left( -\frac{4}{64} s + 4rs - 2s^2 - \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \\\\
&= \dfrac{1} { \sqrt{\pi (0.5) } } \exp\left( -2s^2 + \left( 4r - \frac{4}{64} \right) s - \dfrac{ (64r - 1)^2 }{(64^2)(0.5)} \right) \\\\
&= \dfrac{1} { \sqrt{2 \pi (0.25) } } \exp\left( - \dfrac{ \left( s - \frac{64r - 1}{64} \right)^2 }{2(0.25)}  \right) 
\end{aligned}
$$
If you are clever, you may recognize this as a normal distribution with variance 0.25 and mean $\frac{64r -1}{64}$ (i.e., $S|R \sim N( (64r - 1)/64, 0.25))$.

\newpage

>2. Find the expected value of $S$ given that $R = 2$.

Since $S|R=r$ follows a normal distribution with mean 
$\frac{64r -1}{64}$ 
and then for $R = 2$ we get 
$\frac{64(2) -1}{64} = 127/64$ 

>3. Find the expected value of $S$ given that $R = 3$.

Since $S|R=r$ follows a normal distribution with mean 
$\frac{64r -1}{64}$ 
and then for $R = 3$ we get 
$\frac{64(3) -1}{64} = 191/64$ 
