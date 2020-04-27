# Continuos probability distribution function excercises

library(tidyverse)
library(dslabs)
str(heights)  # 1050 observations and 2 variables (sex & height)
data(heights) # sex variable is Factor and height variable is numeric 
x <- heights %>% filter(sex == "Male") %>% .$height  # filter "Male" catagory heights

# Plot the probability distribution  of Male heights
plot(prop.table(table(x)), xlab = " a= Height in inches",
     ylab = "Pr(X = a)")



