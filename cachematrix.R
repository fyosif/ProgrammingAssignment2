## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
                x <<- y
                m <<- NULL
        }
	get <- function() x
	setinverse <- function(value) m <<- value
    getinverse <- function() m  
	list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## getting a matrix that is the inverse of 'x'
        m <- x$getInverse()		
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
		
        data <- x$get()
         m <- solve(data)  
        x$setInverse(m)
        m 
}