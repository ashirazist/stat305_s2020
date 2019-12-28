#--------------------------------------**--------------------------------------#
#  File Name: clt.R
#  Purpose:
#--------------------------------------**--------------------------------------#

library(ggplot2)
library(tidyr)

get_exponential_samples <- function(nsamples, sample_size, true_population_mean){

   res <- matrix(
      rexp(sample_size*nsamples, rate=1/true_population_mean),
      nrow=nsamples, 
      ncol=sample_size
   )

   dres <- data.frame(res)

   names(dres) <- paste0('obs', 1:sample_size)

   dres$sample_number <- 1:nsamples
   dres$sample_means <- rowMeans(res)

   return(dres)

}

plot_samples <- function(s){

   # Convert the samples into a data frame for plotting
   pd <- s %>% gather(observation, value, -sample_number)

   # Plot the data
   pd$sample_number <- as.factor(pd$sample_number)
   print(qplot(as.factor(sample_number), value, data=pd, geom='boxplot'))

}

plot_means <- function(s){

   # Plot the means
   print(qplot(sample_means, data=s, geom='histogram'))

}


# Get 10 samples
s <- get_exponential_samples(10, 50, 5) 
plot_samples(s)
plot_means(s)

# Get 1000 samples
s <- get_exponential_samples(1000, 50, 5) 
plot_means(s)

# Get 1000 samples
s <- get_exponential_samples(1000, 50, 5) 
plot_means(s)

# Get 10000 samples
s <- get_exponential_samples(10000, 50, 5) 
plot_means(s)
