#--------------------------------------**--------------------------------------#
#  File Name: stat305-hw3-soln.R
#  Purpose:
#--------------------------------------**--------------------------------------#

# Ch. 3 Ex. 12
x1 <- c( 2,  1,  1,  1,  0,  0, -2, 10, -5,  1)
x2 <- c(-2, -6, -1, -2, -1, -2, -1, -1, -1, -5)
x3 <- c(10, 10, 8, 8, 7, 7, 9, 11)
x4 <- c(-4, -3, -4, -2, -3, -3, -3, -3, -4, -4)

sample_variance <- function(x) (1/(length(x)-1))*sum((x - mean(x))^2)
sample_sd <- function(x) sqrt(sample_variance(x))

sample_sd(x4)

# Ch. 3 Ex 18
h1 <- c(313, 100, 235, 250, 457,  11, 315, 584, 249, 204)
h2 <- c(349, 206, 163, 350, 189, 216, 170, 359, 267, 196)
h3 <- c(289, 279, 142, 334, 192, 339,  87, 185, 262, 194)

x <- h1
p <- 0.5
quantile_function <- function(p, x){

   x <- x[order(x)]

   i <- floor(length(x)*p + 0.5)

   qp <- x[i] + (length(x)*p + 0.5 - i)*(x[i+1] - x[i])

   return(qp)

}

quantile_function(0.62, h1)
quantile_function(0.50, h3)
quantile_function(0.75, h3)


sample1 = c(-1.05, -1.0, -0.5, 0.15, 0.6, 0.65, 0.7, 1.25)
sample2 = c(-2.1, -2.0, -1.0, 0.3, 1.2, 1.3, 1.4, 2.5)
sample3 = c(-4.2, -4.0, -2.0, 0.6, 2.4, 2.6, 2.8, 5.0)
sample4 = c(-8.4, -8.0, -4.0, 1.2, 4.8, 5.2, 5.6, 10.0)
sample5 = c(-16.8, -16.0, -8.0, 2.4, 9.6, 10.4, 11.2, 20.0)

sample_variance(sample1) 
sample_variance(sample2) 
sample_variance(sample3) 
sample_variance(sample4) 
sample_variance(sample5) 

hist(h2)
hist(h3)
