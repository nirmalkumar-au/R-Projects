# Monte carlo simulation of Monty hall problem

B <- 10000
# Stick strategy
stick <- replicate (B,{
  doors <- as.character(1:3)
  prize <- c("car", "goat", "goat")
  prize_door <- doors[ prize == "car"]
  my_pick <- sample(doors, 1)
  show <- sample(doors[! doors %in% c(my_pick, prize_door)], 1)
  stick <- my_pick
  my_pick == prize_door
})
mean(stick) # 1 out of 3 chance 0.3289

# Switch strategy
switch <- replicate (B,{
  doors <- as.character(1:3)
  prize <- c("car", "goat", "goat")
  prize_door <- doors[ prize == "car"]
  my_pick <- sample(doors, 1)
  show <- sample(doors[! doors %in% c(my_pick, prize_door)], 1)
  switch <- doors[! doors %in% c(show, my_pick)]
  switch == prize_door
})
mean(switch) #2 out of 3 chance 0.6717