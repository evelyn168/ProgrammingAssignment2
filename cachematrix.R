## Put comments here that give an overall description of what your
## functions do
# makeCacheMatrix is a function that returns a list of functions, this function is used to 
# store a martix and a cached value of the inverse of the matrix. 


## Write a short comment describing this function
# The makeCacheMatrix contains the following functions:
# setMatrix, which sets the value of a matrix
# getMatrix, which gets the value of a matrix
# cacheInverse, which gets the cahced value (inverse of the matrix)
# getInverse, which gets the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
  setMatrix <- function(newValue) {
    x <<- newValue
    cache <<- NULL
  }
  getMatrix <- function() {
    x
  }
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  getInverse <- function() {
    cache
  }
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function
# cacheSolve function calculates the inverse of a matrix created by the  
# makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cacheSolve <- function(y, ...) {
    inverse <- y$getInverse()
    if(!is.null(inverse)) {
      message("getting cached data")
      return(inverse)
    }
    data <- y$getMatrix()
    inverse <- solve(data)
    y$cacheInverse(inverse)
    inverse
}
