
## This function makes a matrix able to cache its inverse

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


## This function solves the inverse of a matrix, 
# or if the solution already exists, retrieves it from the cached matrix

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
