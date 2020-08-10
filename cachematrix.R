## R Progamming Cousera Week 3
## github user76eleven

makeCacheMatrix <- function(x = matrix()) {

}
 ##This function creates a matrix which can cache it's inverse

makeCacheMatrix <- function(x = matrix()){ ## defining the argument along the default mode of the matrix
      inv <- NULL ## save initial value of 'inv' as null (will go on to hold value of inverse of matrix)
      set <- function(y){ ## defining the set function that will set the new value of the matrix in parent enviroment and will reset 'inv' to null in case of a new matrix
            x <<- y
            inv <<- NULL
      }
      get <- function() {x} ## defining the get function (returning the value of the matrix arguement)
      setInverse <- function(inverse) {inv <<- inverse} ## set new value of 'inv' in parent enviroment
      getInverse <- function() {inv} ## gets the value of inv
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)## important, needed in order to use functions with '$' operator
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## This function computes the return of the special matrix returned by the 'makeCacheMatrix'. This function will retrieve the inverse from the cache given that the inverse has been calculated and the matrix has not changed.

cacheSolve <- function(x, ...){ 
      inv <- x$getInverse()
      if(!is.null(inv)){
            message("getting cached data")
            return(inv)
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
}