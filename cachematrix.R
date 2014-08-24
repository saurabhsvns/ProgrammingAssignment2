## The logic of below program is use of lexical scope and solve function to calculate the inverse. 
## This function will creat a "matrix" object that can cache its inverse. The object does calculate inverse 
## but saves the matrix to variable x and its inverse to variable "inverse" in scope.
## Returns an object of type list with below methods:
## set: sets matrix and resets cached inverse
## get: returns matrix
## setInverse: saves solve value
## getInverse: returns cached inverse value

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(solve) {
    inverse <<- solve
  }
  getInverse <- function() {
    inverse
  }
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function will check if the inverse of matrix exist then return that otherwise
## call the above function to calculate the same

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setInverse(inverse)
  inverse
}
