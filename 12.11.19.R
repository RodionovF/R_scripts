x<-c(1, 2, 3, 5, 10, 20, 50, 100, 200)
y<-c(10.15, 5.52, 4.08, 2.11, 1.62,
     1.42, 1.3, 1.21, 1.15)
# Non linear dependence
plot(x,y,col = 'gold', lwd = 10)

#lm <-> linear modal
# I - special operator
lm(y~I(1/x))->y.lm1
y.lm1
# y = a + bx
# a - intercept 
# b - slope
summary(y.lm1)
anova(y.lm1)
summary(lm(y~x)) # Multiple R SQ far from 1
shapiro.test(resid(y.lm1))
# qqnorm(resid(y.lm1))
lines(x, fitted(y.lm1), col = 'cyan', lwd = 5) # x_i, y_i
lines(x, y.lm1$fitted.values, lwd = 2) # same
predict(y.lm1, list(x=c(1.5, 4, 30)))