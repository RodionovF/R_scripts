h<-c(100, 200, 300, 400, 600, 800, 1000)
d<-c(253, 337, 395, 451, 495, 531, 574)
#lm(y~x1+x2)
lm(d~poly(h, 4))->g.lm4o
lm(d~poly(h, 4, raw=TRUE))->g.lm4m
cor(model.matrix(g.lm4o))
cor(model.matrix(g.lm4m))


#lm(d~poly(h,4))->gal.lm
#lm(d~h+h+I(h^2)+I(h^3))->gal.lm

# Звездочки означают что p-value маленькое 
# Если звездочки - то коэффициенты значимы 
#summary(gal.lm)