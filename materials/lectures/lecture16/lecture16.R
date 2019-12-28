#--------------------------------------**--------------------------------------#
#  File Name: lecture16.R
#  Purpose:
#--------------------------------------**--------------------------------------#

library(ggplot2)

# Get parameters
mus <- c(-2, -1, 0, 3, 5)
sigma_sq <- c(.5, 1, 5, 25)
params <- expand.grid(mus=mus, sigma_sq=sigma_sq)
params <- params[params$mu != 0 || params$sigma_sq != 1, ]

x <- seq(-5, 5, by=.1) 

d <- do.call('rbind', lapply(1:nrow(params), function(i){

   sigma_sq <- params$sigma_sq[i]
   mu <- params$mus[i]

   res1 <- data.frame(
      x=x, 
      y=dnorm(x, mean=0, sd=1), 
      distribution='standard',
      comparison=sprintf('Standard Normal vs N(%d, %s)', mu, as.character(round(sigma_sq,1)))
   )

   res2 <- data.frame(
      x=x, 
      y=dnorm(x, mean=mu, sd=sqrt(sigma_sq)),
      distribution='comparison',
      comparison=sprintf('Standard Normal vs N(%d, %s)', mu, as.character(round(sigma_sq,1)))
   )

   return(rbind(res1, res2))

}))

p <- ggplot() + 
   geom_path(data=d, aes(x=x, y=y, color=distribution), size=1) + 
   facet_wrap(~comparison) + 
   theme_bw() + 
   theme(legend.position='bottom')

ggsave('normal_comparisons.png', device='png', height=8, width=12)


sqrt(2)*0.4 + 4
