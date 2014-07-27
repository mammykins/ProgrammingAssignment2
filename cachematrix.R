## An example of cacheing time consuming function results
## as part of coursera prog ass 2, scoping rules, uses <<-

## this funciton computes the inverse of a matrix
## 
#The first function, makeCacheMatrix creates a list containing a function to
#set the value of the matrix
#get the value of the matrix
#set the value of the inverse of the matrix
#get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL

}
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## this function checks to see if it's already been solved
##if not it copmutes it

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
        return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

#exemplar input, run the code then try this (remove hashes):
# a <- matrix(1:4,2,2)
# a2 <- makeCacheMatrix(a)
# a2$get()
# a2$getinverse()
# cacheSolve(a2)
# a2$getinverse()
