
# Identify the number of trails needed for Monte carlo simulation
# to find stable probability of winning Black Jack- Natural 21 

# Create deck of 52 cards
suits <- c("Diamonds", "Clubs", "Hearts", "Spades")
numbers <- c("Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven",
             "Eight", "Nine", "Ten", "Jack", "Queen", "King")
deck <- expand.grid(numbers= numbers, suits = suits)
deck <- paste(deck$numbers, deck$suits)


# Aces and Face cards in Black jack
aces <- paste( "Ace", suits)
facecard <- c("Ten", "Jack", "Queen", "King")
facecard <- expand.grid(number=facecard, suits=suits)
facecard <- paste(facecard$number, facecard$suits)

# Probability of Black jack Natural 21 using Monte carlo simulation of 10000 trails
compute_prob <- function(B) {
  results <- replicate(B, {
    hands <- sample(deck,2)
    (hands[1] %in% aces & hands[2] %in% facecard )|(hands[1] %in% facecard & hands[2] %in% aces)
  })
  mean(results)
}

# Identify the number of trails needed for Monte carlo simulation
B <- 10^seq(1,6, len=100)
prob <- sapply(B, compute_prob)
plot(log10(B), prob, type ="l", 
     main="Monte carlo simulation for Black Jack Natural 21",
     xlab= "Number of trails (log 10)",
     ylab = "Probability of wining"
     )
