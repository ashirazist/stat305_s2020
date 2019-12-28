#--------------------------------------**--------------------------------------#
#  File Name: test-functions.R
#  Purpose:
#--------------------------------------**--------------------------------------#
quantile_function <- function(x, p){

   # Make sure the observations are ordered
   x <- x[order(x)]

   # Get the number of observations
   n <- length(x)

   # Get the index of the observation at or below the p quantile
   i <- floor(n*p + 0.5)

   # Get the quantile
   Qp <- x[i] + (n*p + 0.5 - i)*(x[i+1] - x[i])

   # Return the quantile value
   return(Qp)

}

IQRange <- function(x) quantile_function(x, 0.75) - quantile_function(x, 0.25)


boxplot_data <- function(n, mu=20, s=4, high_outliers=3, low_outliers=2, digits=1){

   if(n < high_outliers + low_outliers)
      stop("more outliers than observations")

   # Use a random normal distribution as the core of the data
   d <- rnorm(n, mu, s)

   # Make the top observations outliers
   d <- d[order(d,decreasing=TRUE)]
   high_whisker <- quantile_function(d, .75) + 1.5 * IQRange(d)
   d[1:high_outliers] <- high_whisker + runif(high_outliers, 0.10*IQRange(d), 0.30*IQRange(d))

   # Make the lowest observations outliers
   d <- d[order(d)]
   low_whisker <- quantile_function(d, .25) - 1.5 * IQRange(d)
   d[1:low_outliers] <- low_whisker - runif(low_outliers, 0.10*IQRange(d), 0.30*IQRange(d))

   # Round the observations
   d <- round(d, digits)

   # Randomize the order
   d <- sample(d)

   return(d)

}
