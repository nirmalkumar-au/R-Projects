# Find probability of students having same birthday in class

# Compute probability of students having same birthday using Monte carlo simulation
compute_prob <- function(n ,B=10000) {
  same_day <- replicate( B ,{
    bdays <- sample(1:365, n, replace=TRUE)
    any(duplicated(bdays))
  })
  mean(same_day)
}

# Compute probability  of students having same birthday using exact computations
exact_prob <- function(n) {
  unique_bday <- seq(365, 365-n)/365
  1 - prod(unique_bday)
}

# Plot the graph of probability for same birthday using Monte carlo and exact coputation
# number of students
n <- seq(20,60)
prob <- sapply(n, compute_prob)
eprob <- sapply(n, exact_prob)

# Plot monte carlo probability and draw line of exact probability
plot(n, prob)
lines(n, eprob, col="red")


