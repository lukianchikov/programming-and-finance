sal = read.csv("D:/R/Data_Files/ztest-a.csv")
summary(sal)

z.test = function(a, mu, sd){
  zeta = (mean(a) - mu) / (sd/sqrt(length(a)))
  return(zeta)
}

z-test(a = sal$salary, mu = 113000, sd = 15000)