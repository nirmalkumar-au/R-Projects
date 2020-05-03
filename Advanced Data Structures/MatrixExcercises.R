# Matrices data structure excercises in R

A <- matrix(1:10, nrow=5)   # 5x2 matrix
B <- matrix(21:30, nrow=5, ncol=2) # 5x2 matrix
C <- matrix(21:40, ncol=10) # 2x5 matrix

# multiplication
A * B  # 5x2 elelment -by -element multiplication like vector

# matrix multiplication after transposing B
A %*% t(B) # 5x5 matrix result

nrow(A) # [1] 5
ncol(A) # [2] 2
dim(A) # [1] 5 2

colnames(A) <- c("L", "R")
rownames(A) <- c("1st", "2nd", "3rd", "4th", "5th")

colnames(B) <- c("T", "B")
rownames(B) <- LETTERS[1:5]

A %*% t(B) # 5x5 matrix keeps A row name and t(B) column name



