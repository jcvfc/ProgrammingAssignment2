## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Put matrix in cache
## 1 set the value of the matrix
## 2 get the value of the matrix
## 3 set the value of the matrix
## 4 get the value of the matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ## set matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## get matrix
  get <- function() x
  ## set inverse of the matrix
  setinverse <- function(invercase) m <<- inverse
  ## get inverse of the matrix
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## get inverse matrix
## if the result is in cache
## return cache matrix
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
