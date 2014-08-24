## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #This function creates a special "matrix" object that can cache its inverse.
  inverse <- NULL
  
  set <- function(Y){
    X <<- y
    inverse <<- NULL
  }
  
  get <- function() x
  
  setinv <- function(inv) inverse <<- inv
  
  getinv <- function() inverse
  
  list(set = set,get = get,
       setinv = setinv, 
       getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)){# if have cache
      message('getting cached inverse')
      return(inv)
    }
    X <- x$get()
    inv <- solve(X)
    x$setinv(inv)
    inv
}