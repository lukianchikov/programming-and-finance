library(tidyverse)

product = read_csv("D:/R/Data_Files/practical_product.csv")
customer = read_csv("D:/R/Data_Files/practical_customer.csv")

hg = ggplot(data=product, aes(x = Price))
hg + geom_histogram(binwidth = 100000, 
                    color = "darkslategray", 
                    fill = "darkslategray4", 
                    alpha = 0.5) + 
  ggtitle("House Prices Frequency Distribution") + 
  labs(y = "Number of Houses", 
       x = "Price") + 
  theme_minimal() +
  scale_x_continuous(labels = comma)

sp = ggplot(product, aes(`Area (ft.)`, Price))
sp + geom_point() + 
  theme_light() + 
  labs(x = "Area in Square Feet", 
       y = "Price in USD", 
       title = "Relationship between Price and Area") +
  scale_y_continuous(labels = comma) # this gets rid of the scientific notation on the y axis

library(psych)

describe(product$Price)
summary(product$Price)

mode = function(x){ 
  ta = table(x)
  tam = max(ta)
  if (all(ta == tam))
    mod = NA
  else
    if(is.numeric(x))
      mod = as.numeric(names(ta)[ta == tam])
  else
    mod = names(ta)[ta == tam]
  return(mod)
}

mode(product$Price)

cor.test(product$`Area (ft.)`, product$Price)