# Advanced data structure list excercises

x <- 10:1
y <- -4:5
z <- c("Cricket", "Hockey", "Tennis", "Basket Ball", 
       "Cricket", "Hockey", "Tennis", "Basket Ball", "Tennis", "Basket Ball")

# the data.frame
theDF <- data.frame(First = x, Second = y, Sports = z)

list1 <- list(c(1, 2, 3))
list1[1] # [[1]] [1] 1 2 3
list1[[1]] # [1] 1 2 3

list1[[1]][[1]]  # [1] 1
list1[[1]][1]  # [1] 1
list1[[1]][[2]]  # [1] 2
list1[[1]][2]  # [1] 2

list2 <- list( c("A", "B", "C"), 4:7)
list2
# [[1]]
# [1] "A" "B" "C"
# [[2]]
# [1] 4 5 6 7

list2[2]
# [[1]]
# [1] 4 5 6 7

list2[[2]]
# [1] 4 5 6 7

list2[2][1]
# [[1]]
# [1] 4 5 6 7

list2[2][2] 
# [[1]]
# NULL

list2[[2]][2]
# 5 

list2[[2]][[2]]
# 5

list3 = list("Frame"=theDF, "Vector"=list1, "List"=list2)
list3$Frame  # data.frame

list3$Frame$Sports  # vector
list3$Frame[ , "Sports"] #vector
list3$Frame[ , "Sports", drop = FALSE] #data.frame
list3$Frame["Sports"]  # data.frame

list3[[1]]$Sports  # vector
list3[[1]][ , "Sports"] #vector
list3[[1]][ , "Sports", drop = FALSE] #data.frame
list3[[1]]["Sports"]  # data.frame
