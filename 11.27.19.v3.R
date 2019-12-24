sa<-t(replicate(10000, 
    {x<-sample(3,10,c(0.2, 0.3, 0.5), repl=T); c(sum(x==1), sum(x==2))}))
hist(sa)
table(sa[,1], sa[,2])/10000


sa<-t(replicate(10000, 
    {x<-sample(4, 10, c(0.2, 0.3, 0.4, 0.1), repl=T); 
    c(sum(x==1), sum(x==2), sum(x==3))}))

ftable(table(sa[,1], sa[,2], sa[,3]))

dmultinom(c(3, 1, 5, 1), 10, c(0.2, 0.3, 0.4, 0.1))

margin.table(table(sa[,1], sa[,2], sa[,3]), margin = 3)

trees
ftable(table(lapply(trees, cut, br = 4)))
mosaicplot(table(lapply(trees, cut, br = 4)))