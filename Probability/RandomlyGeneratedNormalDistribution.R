# Randomly generated normal distribution 

library(tidyverse)
library(dslabs)

# 1050 observations and 2 variables (sex & height)
# sex variable is Factor and height variable is numeric 
data(heights) 

# filter "Male" catagory heights
x <- heights %>% filter(sex == "Male") %>% .$height 

# size, average and standard deviation of data
size <- length(x)
avg <-mean(x)
sd <- sd(x)

# randomly generated normal distribution based on data
simulated_heights <- rnorm( size, avg, sd)


# plot the simulated heights and check for normal distribution
ds_theme_set()
data.frame(simulated_heights = simulated_heights) %>%
  ggplot(aes(simulated_heights)) +
  geom_histogram(color = "black", binwidth = 1)

