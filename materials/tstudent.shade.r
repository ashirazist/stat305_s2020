x<-seq(-3.5, 3.5, length.out = 100)*sd + mean
y<- dt(x = x, df = 9)
df<-data.frame(x, y)
df
pt<-df %>% ggplot2::ggplot(aes(x=x, y=y)) +geom_line()
pt+ geom_segment(aes(x= 1.9 ,y=0, xend=1.9,yend=0.067))+ geom_segment(aes(x=-1.9 ,y=0, xend=-1.9,yend=0.067))
shade <- rbind(c(1.9,0), subset(df, x > 1.9), c(df[nrow(df), "X"], 0))

pt+ geom_polygon(data = shade, aes(x, y))

pt+   geom_ribbon(data=subset(df, x>-3.5 & x< -1.9),aes(ymax=y),ymin=0,
                  fill="red",colour=NA,alpha=0.5)+
  scale_y_continuous(limits=c(0, .4))
