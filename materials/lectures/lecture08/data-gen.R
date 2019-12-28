#--------------------------------------**--------------------------------------#
#  File Name: data-gen.R
#  Purpose:
#--------------------------------------**--------------------------------------#
library('ggplot2')
library('dplyr')
library('tidyr')

# Univariate linear relationship #1: small data set, Everything OK
weight <- seq(0.025, 0.500, by=0.025)
speed <- 50
d <- expand.grid(replication=1:3, weight=weight, speed=speed)
d$surface_roughness <- 120*d$weight + .1*d$speed + .05*d$speed*d$speed + rnorm(nrow(d), 0, 8)

write.csv(d, file='balls.csv', row.names=FALSE)
qplot(d$weight, d$surface_roughness)

# Univariate linear relationship #2: Everything OK
weight <- seq(0.025, 0.500, by=0.025)
speed <- seq(25,100,by=5)
d <- expand.grid(replication=1:3, weight=weight, speed=speed)
d$surface_roughness <- 120*d$weight + .1*d$speed + .05*d$speed*d$speed + rnorm(nrow(d), 0, 8)


# Univariate linear relationship #3: Wrong mathematical model

# Univariate linear relationship #4: Wrong mathematical model
