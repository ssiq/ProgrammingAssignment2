## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set function to set the matrix
## get function to get the matrix
## getInv function to get the inverse matrix
## setInv function to set the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <-  NULL
  
  set <-  function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  
  getInv <- function() inv
  
  setInv <- function(inverse) inv <<- inverse
  
  list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInv()
  if(!is.null(inv))
  {
    message("getting the cached inverse")
    return(inv)
  }
  m <- x$get()
  inv <- solve(m)
  x$setInv(inv)
  inv
}
