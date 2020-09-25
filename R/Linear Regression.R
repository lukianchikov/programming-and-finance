setwd("D:/R/Data_Files")

library(tidyverse) 
library(psych)  

library(scales)

data = read_csv("D:/R/Data_Files/real_estate_price_size_year_view.csv")

describe(data)
summary(data)

point = format_format(big.mark = " ", decimal.mark = ",", scientific = FALSE)
ggplot(data, aes(price, size)) + 
  geom_point() +
  theme_light() +
  labs(x = "House price (in USD)",
       y = "House size (in sq ft)",
       title = "House pricing and size") +
  scale_x_continuous(labels = point) + 
  scale_y_continuous(labels = point) 

linmod = lm(price~size, data = data)

ggplot(data, aes(price, size)) + 
  geom_point() +
  theme_light() +
  stat_smooth(method = "lm", se = FALSE) +
  labs(x = "House price (in USD)",
       y = "House size (in sq ft)",
       title = "House pricing and size") +
  scale_x_continuous(labels = point) + 
  scale_y_continuous(labels = point) 

summary(linmod)