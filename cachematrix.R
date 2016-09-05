##  Matrix inversion is very costly computational therefore we need to cache the inverse of a matrix to avoid
## computing it repeatedly. Two functions makeCacheMatrix and cachSolve are used to cache the inverse of a matrix.

## makeCacheMatrix creates a special matrix which is a really a list containing functions (set/get values of matrix and inverse matrix)

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    # set matrix
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    # get matrix
    get <- function() x
    # set inverse
    setinverse <- function(inverse) inv <<- inverse
    # get inverse
    getinverse <- function() inv
    # create a list
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
