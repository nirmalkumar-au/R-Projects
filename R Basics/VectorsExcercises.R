#Vector excercises

#Assigning names for each elements during creation
x <- c( One = "a", Two = "b", Last = "z")

# Accessing elements in different ways
x  # gets all elements
x[3] # gets third element
x["Last"] # gets third element

#Assigning names for each elements during creation
y <- c( One = "a", Two = "b", "z")

# Accessing elements in different ways
y  # gets all elements
y[3]  # gets third element
y[]  # gets all elements

#Assigning names for each elements after creation
z <- 1:3
names(z) <- c("One", "Two", "Three")

# Accessing elements in different ways
z  # gets all elements
z[3]  # gets third element
z["Three"]  # gets third element

names(z[3]) <- "Third"
z[3]
z["Third"] # gives error NA

