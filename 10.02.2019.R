# ks.test(runif(1000), punif)

# x<-runif(1000)
# ks.test(x, punif, exact=TRUE)

# ks.test(replicate(1000, sum(runif(12))-6), pnorm)

# chisq.test(c(2048, 4040-2048), p = c(0.5, 0.5))

# chisq.test(c(315,101,108,32), p = c(9/16, 3/16, 3/16, 1/16))

x<-replicate(1000, sum(runif(12))-6)
br<-c(-Inf, -2, -0.5, 0, 1, 3, Inf)
chisq.test(table(cut(x, br = br)), p=diff(pnorm(br)))