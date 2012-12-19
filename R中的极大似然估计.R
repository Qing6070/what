#R中的极大似然估计,参考统计之都或道客88中的收藏夹：lukyqian 0^7doc88

data(geyser,package="MASS") 
attach(geyser)
hist(waiting,freq=F)
density(waiting)
lines(density(waiting))


LL=function(params,data)
{t1=dnorm(data,params[2],params[3])
t2=dnorm(data,params[4],params[5])
f=params[1]*t1+(1-params[1])*t2
ll=sum(log(f))
return(-ll)
}

geyser.res=nlminb(c(0.4,50,10,80,10),LL,data=waiting,
lower=c(0.0001,-Inf,0.0001,-Inf,-Inf,0.0001),
upper=c(0.9999,Inf,Inf,Inf,Inf))
x=seq(40,120,length=100)
p=geyser.res$par[1]
mu1=geyser.res$par[2]
sig1=geyser.res$par[3]
mu2=geyser.res$par[4]
sig2=geyser.res$par[5]
f=p*dnorm(x,mu1,sig1)+(1-p)*dnorm(x,mu2,sig2)
hist(waiting,probability=T,col=0)
lines(x,f)
geyser.res$par


