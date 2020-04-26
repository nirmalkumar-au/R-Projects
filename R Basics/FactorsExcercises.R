#Factor excercises

eduLev <- c("High School", "College", "Masters", "Doctorate")
empEdu <- c("High School", "College", "Masters", "Doctorate",
       "Masters", "Masters", "College", "High School" )

z <- factor( x= empEdu, levels = eduLev, ordered = TRUE)
z  # Vector of factor/catagory/enumeration type
# Levels :High School < College < Masters < Doctorate
class(z) # "ordered" "factor"
is.factor(z) # TRUE
is.ordered(z) #TRUE

z[1] > z[4]  # FALSE
z[1] < z[4]  # TRUE

empEdu2 <- c("High School", "College", "Masters", "Doctorate",
            "Masters", "Masters", "College", "High School" )

z2 <- as.factor(empEdu2)
z2 <- as.ordered(empEdu2)
z2  # Vector of factor/catagory/enumeration type
# Levels : College < Doctorate < High School < Masters

class(z2) # "ordered" "factor"
is.factor(z2) # TRUE
is.ordered(z2) #TRUE

z2[1] > z2[4]  # FALSE
z2[1] < z2[4]  # TRUE

