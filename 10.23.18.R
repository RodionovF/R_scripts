p=seq(0.05, 0.95, by=0.1)
prior=c(1, 5.2, 8, 7.2, 4.6, 2.1, 0.7, 0.1, 0, 0)
dbinom(11, 27, p) * prior->post
post/sum(post)->post
sum(p*post)->s
s