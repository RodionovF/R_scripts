x<-c(46.2, 43.4, 37.8, 42.0, 44.8)
y<-c(33, 31, 27, 30, 32)
plot(x,y, col = 'green', lwd = 5)
lm(y~x)
summary(lm(y~x))
y.lm2<-lm(y~x)
update(y.lm2, .~-1+.)->y.lm3
summary(y.lm3)
abline(y.lm3)
y.lm3