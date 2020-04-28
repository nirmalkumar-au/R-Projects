# Monte carlo simulation based on actual data which is normal distribution

library(tidyverse)
library(dslabs)

# 1050 observations and 2 variables (sex & height)
# sex variable is Factor and height variable is numeric 
data(heights) 

# filter "Male" catagory heights
x <- heights %>% filter(sex == "Male") %>% .$height 

# average and standard deviation of actual data
avg <-mean(x)
sd <- sd(x)

# monte carlo simulation to find any 7 footers in 800 males using 10000 simulation

tallest <- replicate(
  10000, {
    simulated_heights <- rnorm(800, avg, sd)
    max(simulated_heights)
  })

# proportion of simulation having 7 footers
mean(tallest >= 7*12) 

# 0.0186 which is 1.86% of the 10000 simulations has 7 footers



