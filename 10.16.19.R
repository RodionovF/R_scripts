#x<-rnorm(100, 5, 5)
#fitdistr(x, 'normal')
#fitdistr(x, dnorm, list(mean=3), sd=5)
attach(faithful)
hist(waiting, pr = T, col = 'cyan')
lines(density(waiting), col = 'gold', lw = 5)

my.f<-function(x, m1, s1, m2, s2, a){
  a*dnorm(x, m1, s1) + (1-a)*dnorm(x, m2, s2)
}

fitdistr(waiting, my.f, list(m1 = 55, m2 = 80, s1 = 5, s2 = 6.5, a = 0.3333))$estimate->wp
curve(my.f(x, wp[1], wp[3], wp[2], wp[4], wp[5]), add=T, col='magenta', lw = 2)
detach(faithful)