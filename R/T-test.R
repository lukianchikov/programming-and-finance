library(pastecs)
library(psych)

weight = read.csv("D:/R/Data_Files/weight_data_exercise_kg.csv")
describe(weight)

dep.t.test = t.test(weight$before, weight$after, paired = TRUE, alternative = "g")
dep.t.test