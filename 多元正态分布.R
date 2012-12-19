library(mvtnorm)
n=7000
t=2
x1=rmvnorm(n,mean=c(7.25,0.016),sigma=matrix(c(0.75^2,0.0071,0.0071,0.03^2),ncol=2))
x2=rmvnorm(n,mean=c(0,0),sigma=matrix(c(0.43^2,0.43^2*0.41*t,0.43^2*0.41*t,0.43^2),ncol=2)) 
y=x1[,1]+2*x1[,2]+x2[,1]
mean(y)
var(y)
sum(y>7)/n  #¼ÆËãy>7µÄ±ÈÀı
sum(y<7)/n

sum(y>7)/sum(y<7)