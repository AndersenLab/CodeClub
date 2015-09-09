# x is a single number
# y is a vector

# fworks should return a data frame with the x column all equal to the x input
# and the y column equal to the original y vector

# fworks(5, c(1,2,3,4,5,6)) should return:

# x | y
# --|--
#  5| 1
#  5| 2
#  5| 3
#  5| 4
#  5| 5
#  5| 6

fworks <- function(x, y) {
    repx <- gworks(x, y)
    
    df <- data.frame(x = repx, y = y)
    
    return(df)
}

# gwworks is a helper function that takes some number `num` and some vector `vec`
# and returns a vector that repeats `num` to create a vector of the same length
# as `vec`

gworks <- function(num, vec) {
    numlist <- list()
    
    i <- 1
    
    while(i <= length(vec)) {
        numlist <- append(numlist, num)
        i <- i + 1
    }
    
    numvec <- unlist(numlist)
    
    return(numvec)
}

























# These functions don't work

f <- function(x, y) {
    repx <- g(x, y)
    
    df <- data.frame(x = repx, y = y)
    
    return(df)
}

g <- function(num, vec) {
    numlist <- list()
    
    i <- 1
    
    while(i < length(vec)) {
        numlist <- append(numlist, num)
        i = i + 1
    }
    
    numvec <- unlist(numlist)
    
    return(numvec)
}




























# Works
fworks(5, c(3,4,5,6,7,6,7,8))

# Doesn't work
f(5, c(3,4,5,6,7,6,7,8))























# We could try this approach:

# Define the variables
x <- 5
y <- c(3,4,5,6,7,6,7,8)

# Then execute the lines of f() one by one
repx <- g(x, y)

df <- data.frame(x = repx, y = y)

return(df)

# But what happens when we get to the call to g() in the first line?
# Now we have to start the process all over again:
num <- x
vec <- y

# And execute line by line
numlist <- list()

i <- 1

while(i < length(vec)) {
    numlist <- append(numlist, num)
    i = i + 1
}

numvec <- unlist(numlist)

return(numvec)

# But then we have to keep executing the elements of the while loop ourselves






















# Enter the debugging tools
debug(f)
f(5, c(3,4,5,6,7,6,7,8))
























# But what about for a call like this?
debug(f)
f(5, 1:10000)

