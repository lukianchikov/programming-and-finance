sk1 = read_csv("D:/R/Data_Files/skew_1.csv")
sk2 = read_csv("D:/R/Data_Files/skew_2.csv")

skew1 = ggplot(data = sk1, aes(x = `Dataset 1`))
skew1 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()

skew2 = ggplot(data = sk2, aes(x = `Dataset 2`))
skew2 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()


library(psych)

describe(sk1)
describe(sk2)