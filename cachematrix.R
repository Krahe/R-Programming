## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    minverse <- NULL
    x <<- x
    
    set <- function(m)
    {
        x <<- m
        minverse <<- NULL
        
    }
    
    get <- function() x
    
    setinverse <- function(inv) minverse <<- inv
    
    getinverse <- function() minverse
    
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
    
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
    
    minverse <- x$getinverse()
    
    if(!is.null(minverse))
    {
        message("Retrieving cached matrix inverse...")
        return(minverse)
    }
    
    matrixdata <- x$get()
    
    minverse <- solve(matrixdata, ...)
    
    x$setinverse(minverse)
    
    minverse
    
    ## Return a matrix that is the inverse of 'x'
}
