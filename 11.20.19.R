# Взяли несиммитричное распределение (хи^2, с МО = 3 (число стипений свободы))
#x<-replicate(10000, t.test(rchisq(10,3), mu = 3)$statistic)
x<-replicate(10000, t.test(rcauchy(10), mu = 0.5)$statistic)

# Рисуем ядерную оценку плотности
plot(density(x))
curve(dt(x, df =9), add = TRUE, col = 'blue')
