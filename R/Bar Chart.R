library(tidyverse)
library(ggthemes)

bar = ggplot(emp, aes(title, fill = gender))
bar + geom_bar() + theme_fivethirtyeight() + scale_fill_manual(values = c("chartreuse4", "darkorange")) +
  labs(title = "Job Positions by Gender",
       y = "Employee count",
       x = "Job position")

bar = ggplot(emp, aes(gender, fill = title)) 
bar + geom_bar() + theme_fivethirtyeight() + scale_fill_manual(values = c("magenta", "darkorange", "midnightblue",
                                                                          "springgreen4", "brown1", "gold")) +
  labs(title = "Job Positions by Gender")