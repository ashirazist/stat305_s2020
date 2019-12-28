#--------------------------------------**--------------------------------------#
#  File Name: lecture10.R
#  Purpose:
#--------------------------------------**--------------------------------------#

# multicollinear data

# True relationship: y = 3 + 2x1 + 4x2
# Problem: x2 ~ 1 + 2x1
# Problem: x3 ~ 2 + x1
x1 <- round(1:40 + rnorm(40),2)
x2 <- round(1 - 2*x1 +rnorm(40),2)
x3 <- round(2 - 3*x1 +rnorm(40),2)
x4 <- round(2 + x1 +rnorm(40),2)

y <- round(3 + 2*x1 + 4*x2 + x3 - x4 + rnorm(40,0,5),2)

d <- data.frame(x1, x2, x3, x4, y)

write.csv(d, file='multicollinearity.csv', row.names=FALSE)


x <- round(runif(50, 0, 10), 3)
x <- x[order(x)]

y <- round(3 + 2*log(x) + rnorm(50, 0, 1), 3)

write.csv(data.frame(x, y), file='transform.csv', row.names=FALSE)
