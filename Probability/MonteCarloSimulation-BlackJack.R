
# Finding probability of winning Black Jack- Natural 21 using Monte carlo simulation 

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
B <- 10000
results <- replicate(B, {
  hands <- sample(deck,2)
  (hands[1] %in% aces & hands[2] %in% facecard )|(hands[1] %in% facecard & hands[2] %in% aces)})
mean(results)
