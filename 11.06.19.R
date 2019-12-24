#shapiro.test(xversicolor)
attach(iris)
#hist(Sepal.Length[Species == "setosa"], pr=T, col = 'gold')
#shapiro.test(Sepal.Length[Species == "versicolor"])
#pairs(iris[1:4], col=c('blue', 'red', 'gold')[Species])
excl.exp.test<-function(x) {
  y<-cumsum(x)/sum(x)
  val<-ks.test(y, punif)
  val$method='Тест на показательное распределение'
  val
}

excl.exp.test(rexp(100))
excl.exp.test(abs(rcauchy(100)))