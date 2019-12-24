x = matrix(c(2161, 3577, 2184, 1636,
             2755, 5081, 2222, 1052,
             936,  1753,  640,  306,
             225,   419,   96,   38,
             39,     98,   31,   14), 
           ncol = 4, 
           byrow = TRUE)
chisq.test(x)

men_group = matrix(c(700, 800, 80, 130), 
           ncol = 2, 
           byrow = TRUE)

chisq.test(men_group)

women_group = matrix(c(150, 70, 400, 280), 
            ncol = 2, 
            byrow = TRUE)

chisq.test(women_group)

together = matrix(c(850, 870, 480, 410), 
                     ncol = 2, 
                     byrow = TRUE)

chisq.test(together)

# Five o'clock tea with milk

x5<-matrix(c(3, 1, 1, 3), nrow = 2)
fisher.test(x5)

# corr Pirs
cor.test(x,y, method = 'pearson')