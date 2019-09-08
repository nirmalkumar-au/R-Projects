library(gtools)

# Finding probability of winning Black Jack Natural 21 using combinations 

# Create deck of 52 cards
suits <- c("Diamonds", "Clubs", "Hearts", "Spades")
numbers <- c("Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven",
             "Eight", "Nine", "Ten", "Jack", "Queen", "King")
deck <- expand.grid(numbers, suits)
deck <- paste( deck$numbers, deck$suits)

# Aces and face cards in Black Jack
aces <- paste( "Ace", suits)
facecard <- c("Ten", "Jack", "Queen", "King")
facecard <- expand.grid(number=facecard, suits=suits)
facecard <- paste(facecard$number, facecard$suits)

# Combinations of two hands from the deck
hands <- combinations(52, 2, v=deck)

# Probability of Black jack Natural 21
mean( ( hands[,1] %in% aces & hands[,2]%in% facecard ) | 
      ( hands[,1] %in% facecard & hands[,2]%in% aces))
