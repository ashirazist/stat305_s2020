---
title: Integration and Density Functions
course: Stat 305
semester: Spring 2019
...

**\Large Integration and Density Functions** \vspace{0.5cm}

One of the problem-solving applications we can take from this course is the use of functions we know are probability density functions (pdfs) to solve complex integrals. 
As a reminder, for any function $f(x)$ to be a valid pdf it only needs to do two things:
\begin{enumerate}
   \item For any real number $x$, $f(x) \ge 0$
   \item $\int_{-\infty}^{\infty} f(x) dx = 1$
\end{enumerate}
This is an "if and only if" situation - meaning that 
\begin{itemize}
   \item if $f(x)$ follows those two rules then it's some kind of pdf, and 
   \item if $f(x)$ is a pdf then it follows those two rules.
\end{itemize}
That last statement is is exploitable! In many cases, a "hidden" pdf may be contained in a function and by rearranging the function or adding/removing constants you can uncover the pdf.
\vspace{0.5cm}

**Simple Example**

You can do this one anyway, but it works to illustrate how we use pdfs in solving integrals. We know that for any $\alpha > 0$ an exponential random variable has a pdf of
$$
f(x) = \begin{cases}
\dfrac{1}{\alpha} e^{-x/\alpha} & x \ge 0 \\\\
0 & o.w.
\end{cases}
$$
Suppose though that we are asked to solve the following:
$$
\int_{0}^{\infty} e^{-2x} dx = ???
$$
this isn't quite the same as the pdf but we can _use_ the pdf as follows:
\begin{align*}
   \int_{0}^{\infty} e^{-2x} dx &= \int_{0}^{\infty} e^{-x/0.5} dx  \\\\
                                &= \int_{0}^{\infty} e^{-x/0.5} dx  \\\\
                                &= \int_{0}^{\infty} \dfrac{0.5}{0.5} e^{-x/0.5} dx  \\\\
                                &= 0.5 \int_{0}^{\infty} \dfrac{1}{0.5} e^{-x/0.5} dx  \\\\
                                &= 0.5 (1) \\\\
                                &= 0.5
\end{align*}
where we replace the integral with 1 because we have changed the function we are integrating over to the pdf of an exponential random variable with $\alpha = 0.5$.

\vspace{0.5cm}
**\Large Integration Using the Normal PDF** \vspace{0.5cm}

The normal pdf is a little tricky to work with but the same idea applies. We know that 
$$
f(x) = \dfrac{1}{\sqrt{2 \pi \sigma}} e^{-\frac{1}{2 \sigma^2} (x - \mu)^2}
$$
is the pdf of a normal random variable with mean $\mu$ and variance $\sigma^2$. In other words, we can say that 
\begin{align*}
   \int_{-\infty}^{\infty} \dfrac{1}{\sqrt{2 \pi \sigma^2}} \exp\left({-\frac{1}{2 \sigma^2} (x - \mu)^2}\right) dx &= 1  \\\\
   \dfrac{1}{\sqrt{2 \pi \sigma^2}} \int_{-\infty}^{\infty} \exp\left({-\frac{1}{2 \sigma^2} (x - \mu)^2}\right) dx &= 1  \\\\
   \int_{-\infty}^{\infty} \exp\left({-\frac{1}{2 \sigma^2} (x - \mu)^2}\right) dx &= \sqrt{2 \pi \sigma^2}  \\\\
   \int_{-\infty}^{\infty} \exp\left({ -\frac{1}{2 \sigma^2} x^2 +\frac{1}{2 \sigma^2} 2 \mu x  -\frac{1}{2 \sigma^2} \mu^2}\right) dx &= \sqrt{2 \pi \sigma^2}  \\\\
   \int_{-\infty}^{\infty} \exp\left({ -\frac{1}{2 \sigma^2} x^2 +\frac{1}{2 \sigma^2} 2 \mu x}\right) \cdot \exp\left({ -\frac{1}{2 \sigma^2} \mu^2}\right) dx &= \sqrt{2 \pi \sigma^2}  \\\\
   \exp\left({ -\frac{1}{2 \sigma^2} \mu^2 }\right) \int_{-\infty}^{\infty} \exp\left({ -\frac{1}{2 \sigma^2} x^2 +\frac{1}{2 \sigma^2} 2 \mu x}\right) dx &= \sqrt{2 \pi \sigma^2}  \\\\
   \int_{-\infty}^{\infty} \exp\left({ -\frac{1}{2 \sigma^2} x^2 +\frac{1}{2 \sigma^2} 2 \mu x}\right) dx &= \sqrt{2 \pi \sigma^2} \exp\left({\frac{1}{2 \sigma^2} \mu^2}\right)  \\\\
   \int_{-\infty}^{\infty} \exp\left({ -\frac{1}{2 \sigma^2} x^2 +\frac{\mu}{\sigma^2} x}\right) dx &= \sqrt{2 \pi \sigma^2} \exp\left({\frac{1}{2 \sigma^2} \mu^2}\right)  \\\\
\end{align*}


\newpage
\vspace{0.5cm}
**Normal PDF Problem**

Okay - I know! It doesn't look like this is useful, but here's an simple example:

Find the value of 
$$
\int_{-\infty}^{\infty} e^{ - 2 x^2 - 3 x} dx
$$
Since we know that
$$
\int_{-\infty}^{\infty} \exp\left({ -\frac{1}{2 \sigma^2} x^2 +\frac{\mu}{\sigma^2} x}\right) dx = \sqrt{2 \pi \sigma^2} \exp\left({\frac{1}{2 \sigma^2} \mu^2}\right)
$$
we take $2 = \dfrac{1}{2 \sigma^2}$ and $\dfrac{\mu}{\sigma^2} = -3$ which gives us $\sigma^2 = 0.25$ and $\mu = -0.75$. Then, we can write:
\begin{align*}
   \int_{-\infty}^{\infty} \exp\left({ -\frac{1}{2 (0.25)} x^2 + \frac{(-0.75)}{(0.25)} x}\right) dx &= \sqrt{2 \pi (0.25) } \exp\left({\frac{1}{2 (0.25) } (-0.75)^2}\right) \\\\
   \int_{-\infty}^{\infty} \exp\left({ -2 x^2 - 3 x}\right) dx &= \sqrt{\pi/2} \exp\left(9/8\right) \\\\
\end{align*}
and our problem is solved.


\vspace{0.5cm}
**\Large Final Note: When Does This Ever Happen?** 
\vspace{0.5cm}

In the wild, if you encounter a difficult integral the first thing you think should not be "I bet this can be solved with pdfs". However, it is routine for these "hidden pdfs" like in the last two problems to be found when doing probability problems since the basic parts of the function are already bouncing around. I'll demonstrate this in finishing the last problem.
