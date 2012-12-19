set.seed(1410)
dsmall=diamonds[sample(nrow(diamonds),100),]
qplot(carat,price,data=diamonds)
qplot(log(carat),log(price),data=diamonds)
qplot(carat,x*y*z,data=diamonds)
qplot(carat,price,data=dsmall,colour=color)
qplot(carat,price,data=dsmall,geom=c("point","smooth"),se=FALSE,ylab=expression(frac(y,x)),xlab=expression(beta[1]==1))
qplot(carat,price,data=dsmall,shape=cut)
qplot(carat,price,data=diamonds,alpha=I(1/10),geom="smooth")
qplot(carat,price,data=dsmall,geom="boxplot")
qplot(carat,price,data=dsmall,geom="line")
qplot(carat,price,data=dsmall,geom="path")
library(mgcv)
qplot(carat,price,data=dsmall,geom=c("point","smooth"),method="gam",formula=y~s(x))

qplot(displ,hwy,data=mpg,colour=cyl)
library(ggplot2)
q=qplot(displ,hwy,data=mpg,colour=factor(cyl))
summary(q)
save(q,file="d:/lpot.rdata")
load("d:/lpot.rdata")
ggsave("lpot.png",width=5,height=5)
ggplot(diamonds,aes(carar,price,colour=cut)) #??????: No layers in plot
p=ggplot(diamonds,aes(carat,price,colour=cut))
p+layer(geom="point")
p=ggplot(mtcars)
summary(p)
p=p+aes(wt,hp)
p+geom_point()
p+geom_point(aes(colour=factor(cyl)))







