library(MASS)
vals=0:4
ni=c(96978, 9240, 708, 43, 9)
fitdistr(rep(vals, ni), "poisson")->ins.pois
ins.pois$estimate-mean(rep(vals, ni))
ins.pois

fitdistr(rep(vals, ni), "negative binomial")->ins.neg
ins.neg$estimate

x = rep(vals,ni)
# Use Numerical and Optimization Methods
fitdistr(x, dpois, list(lambda = 0.1))
# Warning isn't error (NaN = Not a Number)!