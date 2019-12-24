#flies<-read.table(
#  'flies.txt',
#  header = TRUE,
#  fill = TRUE
#)

f30<-c(3, 5, 5, 7, 9, 9, 10, 12, 20, 24, 24, 34, 43, 46, 58, 140)
f60<-c(2, 5, 5, 7, 8, 9, 14, 18, 24, 26, 34, 37, 42, 90)

#t.test(log(flies$GROUP30), log(flies$GROUP60))


flies.2<-data.frame(TIME=c(f30, f60),
                   GROUP = rep(c('30s', '60s'), c(length(f30), length(f60))))

flies.2<-na.omit(stack(flies))
names(flies.20)<-c('TIME', 'GROUP')

#t.test(log(TIME)~GROUP, data = flies.2, var.eq = T, alt = 'greater')
t.test(log(TIME)~GROUP, data = flies.2, var.eq = F, alt = 'greater')

# TIME GROUP
# 3   30s
# 5  30S

# or 

# F30 F60
# 3 2
# 5 5 