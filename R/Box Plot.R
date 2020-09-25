library(tidyverse)
library(ggthemes)
install.packages("wesanderson")
library(wesanderson)

emp = read.csv("D:/R/Data_Files/employee_data.csv", skip = 23, stringsAsFactors = FALSE)
emp = as.tibble(emp)
emp$gender = as.factor(emp$gender)
emp$title = as.factor(emp$title)

emp.a = filter(emp, salary > 45000)

boxx = ggplot(emp, aes(x = title, y = salary))
my.bp = boxx + geom_boxplot(outlier.color = "orangered1", outlier.shape = 3) +
  geom_jitter(width = 0.3, aes(color = gender)) +
  ggtitle("Salary distribution", subtitle = "based on position and gender") +
  ylab("Salary") + xlab("Job position") + 
  theme_economist_white() + 
  theme(legend.position = "right", axis.text.x = element_text(angle = 90, hjust = 1)) +
  coord_flip()

my.bp + scale_color_manual(values=wes_palette(name = "Darjeeling", n = 2))

# or

my.bp + scale_color_brewer(palette="Set1")