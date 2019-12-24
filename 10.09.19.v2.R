#x.e<-rexp(100)
#x=seq(0.1, 2, by=0.01)
#y<-rep(0, length(x))
#for(i in 1:length(x))
#  y[[i]] = ks.test(x.e, pexp, rate=x[[i]])$statistic
#plot(x, y, type="l", col="cyan")

#answer = optimize(function(r){ks.test(x.e, pexp, rate=r)$statistic}, c(0.5,2.0))$minimum
#____________________________________
# Задача 2 для хи^2
x.e<-rexp(100)
minsq = function(x, br) {
  tab = table(cut(x, br=br))
  objfun = function(r) {
    chisq.test(tab, p=diff(pexp(br, r)))$statistic
  }
  optimize(objfun, c(0.5, 2))
}
answer = minsq(x.e, c(0, 0.1, 1, 1.2, Inf))