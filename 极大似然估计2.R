###极大似然估计
names(Loblolly)
fml<-nlme(height~SSasymp(age,Asym,R0,lrc),data=Loblolly,fixed=Asym+R0+lrc~1,
random=Asym~1,start=c(Asym=103,R0=-8.5,lrc=-3.3))
summary(fml)