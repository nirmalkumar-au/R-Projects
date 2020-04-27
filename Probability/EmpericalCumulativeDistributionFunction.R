# Continuos probability emperical c1umulative distribution function excercises
library(tidyverse)
library(dslabs)
str(heights)  # 1050 observations and 2 variables (sex & height)
data(heights) # sex variable is Factor and height variable is numeric 
x <- heights %>% filter(sex == "Male") %>% .$height  # filter "Male" catagory heights

# emperical cumulative distribution function
eCDF <- function(a) {
  mean(x <a)
}

# probability of height being 68 inches or less
eCDF(68) # 0.298 or 29.8%
# probability of height0 being 70 inches or less
eCDF(70) # 0.5172 or 51.7%
# probability of height being greater than 70 inches 
1 - eCDF(70) # 0.4827 or 48.3%
# probability of height being greater than 68 inches and less than 70 inches
eCDF(70) - eCDF(68) # 0.2192 or 21.9%


