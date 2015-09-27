<<<<<<< HEAD
## Create a matrix object, caching the inverse mean

=======
## [Put comments here that describe what your functions do]
>>>>>>> master

makeCacheMatrix <- function(x = matrix()) {
  t <- NULL
  set <- function(s) {
    x <<- s
    t <<- NULL
  }
  get <- function()
    setinverse <- function(inverse) t <<- inverse
  getinverse <- function() t
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

<<<<<<< HEAD
##returns cached matrix inverse or calculate matrix invervse if inverse is null
=======
>>>>>>> master

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  return(i)
}
