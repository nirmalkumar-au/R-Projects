# Continuos probability theortical c1umulative distribution function excercises
library(tidyverse)
library(dslabs)
str(heights)  # 1050 observations and 2 variables (sex & height)
data(heights) # sex variable is Factor and height variable is numeric 
x <- heights %>% filter(sex == "Male") %>% .$height  # filter "Male" catagory heights

# Emperical cumulative distribution function
eCDF <- function(a) {
  mean(x < a)
}

# cumulative distribution function
# theoritical probability of height being 68 inches or less
pnorm(68, mean(x), sd(x)) # 0.3578 or 35.8%
# emperical probability of height being 68 inches or less
eCDF(68) # 0.298 or 29.8%

# theoritical probability of height being 70 inches or less
pnorm(70, mean(x), sd(x)) # 0.5752 or 57.52%
# emperical probability of height being 70 inches or less
eCDF(70) # 0.5172 or 51.7%

# theoritical probability of height being greater than 70 inches
1 - pnorm(70, mean(x), sd(x)) # 0.4247 or 42.47%
# emperical probability of height being greater than 70 inches 
1 - eCDF(70) # 0.4827 or 48.3%

#  theoritical probability of height being greater than 68 inches and less than 70 inches
pnorm(70, mean(x), sd(x)) - pnorm(68, mean(x), sd(x)) #0.2173 or 21.7%
#  emperical probability of height being greater than 68 inches and less than 70 inches
eCDF(70) - eCDF(68) # 0.2192 or 21.9%


