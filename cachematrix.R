## Create a matrix object, caching the inverse mean

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


##returns cached matrix inverse or calculate matrix invervse if inverse is null


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
