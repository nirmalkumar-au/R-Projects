# exact probability of wining more than 4 games out of 6
l <- list(0:1)
n <- 6
exact_possibilities <- expand.grid(rep(l, n))
results <- (rowSums(exact_possibilities) > 4)
mean(results)

# Monte carlo simulation of wining more than 6 games out of 4
B <- 10000
results <- replicate(B,{
  simulated_possibilties <- sample(c(0,1), 6, replace=TRUE)
  (sum(simulated_possibilties) > 4)
})
mean(results)
