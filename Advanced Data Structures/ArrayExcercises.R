# Arrays data structure excercises in R

# create multidimensional array
theArray <- array(1:12, dim=c(2,3,2))

# get the elements from multi dimensional array
theArray  # two 2x3 matrix
theArray[1,,] # 3x 2 matrix
theArray[1,,1] # vector
theArray[,,1] # 2x3 matrix
theArray[,1,] # 2x2 matrix