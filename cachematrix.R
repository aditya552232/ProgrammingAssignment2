## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invans <- NULL
  set <- function(y) {
    x <<- y
    invans <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invans <<- inverse
  getinverse <- function() invans
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
