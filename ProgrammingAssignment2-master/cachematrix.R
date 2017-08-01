## Assignment 2: Caching the Inverse of a Matrix (suppose all inputs are inversable) )

## makeCacheMAtrix creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL #initialization of inver
  inver <- solve(x) #use solve to get inversion of a square matrix
  list(x = x, inver = inver)  # store initial matrix and inversion into the list
}

## catcheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  # get original matrix and possible inversion from x
  origin <- x$x  
  inverNew <- x$inver
  # return inversion if it has been calculated
  if(!is.null(inverNew)){
    message("getting cached inversion")
    return(inverNew)
  }
  # calculate inversion if no cached inversion found
  message("calculated inversion")
  inverNew <- solve(origin)
  inverNew
}
