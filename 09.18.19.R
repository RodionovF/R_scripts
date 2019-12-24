par(mfrow=c(3,1))
hist(replicate(1000, mean(runif(1000)^5)), pr=T, xlim=c(0.05,0.3))
hist(replicate(1000, mean(runif(1000)^2/2)), pr=T)
hist(replicate(1000, mean(replicate(100, max(runif(5))/5))), pr=T)