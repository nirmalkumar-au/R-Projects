# Advanced data structure data.frame excercises

x <- 10:1
y <- -4:5
z <- c("Cricket", "Hockey", "Tennis", "Basket Ball", 
       "Cricket", "Hockey", "Tennis", "Basket Ball", "Tennis", "Basket Ball")

theDF <- data.frame(First = x, Second = y, Sports = z)

theDF
class(theDF) # data.frame
names(theDF) # "First" "Second" "Sports"

rownames(theDF) # "1" "2"...."10
nrow(theDF) # 10

colnames(theDF) # "First" "Second" "Sports"
ncol(theDF) # 3

rownames(theDF) <- c("One", "Two", "Three", "Four", "Five",
                     "Six", "Seven", "Eight", "Nine", "Ten")
rownames # "One" "Two"..."Ten"
rownames(theDF) <- NULL
rownames(theDF) # "1" "2"...."10

theDF$Sports # [1] Cricket Hockey....
# Levels: Basket Ball Cricket Hockey Tennis

theDF[3,2]  # vector [1] -2 third row, second column element
theDF[c(2,3), 2]  # vector [1] -3 -2 second & third row, second column elements

theDF[3,2:3]  # data.frame third row, second & third column elements
theDF[2:3, c(2,3)]  # data.frame second & third row, second & third column elements

# to access entire column not specifying row
theDF[ , 2] #[1] -4, -3.... 5 vector of second column
theDF[ , 2:3] #  dataframe of second & third column
theDF[ , "Second"] #[1] -4, -3.... 5 vector of second column
theDF[ , c("Second", "Sports")] #  dataframe of second & third column

# to access entire row not specifying column
theDF[ 3, ] # data.frame of third row
theDF[ 2:3, ] # data.frame of second & third rows
theDF["3", ] # data.frame of third row
theDF[c("2", "3"), ] # data.frame of second & third rows


theDF[3] # data.frame of the third column
theDF["Sports"] #data.frame of the third column

theDF[["Sports"]] # vector of the third column
theDF[ ,3] # vector of the third column
theDF[ , "Sports"] #vector of the third column


theDF[ , 3 , drop=FALSE] # data.frame of the third column
theDF[ , "Sports", drop=FALSE] #data.frame of the third column

dim(theDF) # 10 3
model.matrix(~ theDF$Sports)
