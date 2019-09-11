# Monte carlo simulation of Team B wining Team A in a series,
# whose probability of Team A wining a game is 0.75

# Team A probability wining a game is 0.75
prob_win <- function(N, p=0.75) {
  B <- 10000
  results <- replicate(B,{
    # instances where the number of wins is more than half of the series
    simulated_possibilties <- sample(c(1,0), N, replace=TRUE, prob=c(1-p, p))
    (sum(simulated_possibilties) >= (N+1)/2)
  })
  mean(results)
}

# number of games in the series 1,3,5.....25
N <- seq(1,25,2)
prob <- sapply(N,prob_win)
plot(N,prob, xlab="Number of games", ylab="Probability of wining", 
     main="Wining of the series", sub="Team B vs Team A")
