## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Initializing the inverse.
  i <- NULL
  
  ## Method used to set the matrix.
  set <- function( matrix ) {
    mat <<- matrix
    i <<- NULL
  }
  
  ## METHOD USED FOR GETTING THE MATRIX
  get <- function() {
    
    mat  ##returning matrix here
  }
  
  ## METHOD USED FOR SETTING  INVERSE
  set_inverse <- function(inverse) {
    i <<- inverse
  }
  
  ## METHOD USED FOR GETTING THE OBJECT
  get_inverse <- function() {
    ## RETURNING THE INVERSE
    i
  }
  
  ## RETURNS THE LIST OF OBJECTS
  
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}
##2ND FUNCTION AND EDIT 2 HERE,
cacheSolve <- function(x, ...) {   mat <- x$getInverse()
## RETURNING THE INVERSE IF ITS NULL.
if( !is.null( mat) ) {  
  message("getting the cached value")
  return( mat)
}

## GETTING MATRIX FROM OBJECT.
data <- x$get()
mat <- solve(data) %*% data         ##THIS METHOD IS USED TO GET THE INVERSE OF A MATRIX
x$set_inverse( mat)  ##SETTING THE INVERSE FUNCTION.


mat
}
## RETURNING THE INVERSE OF x MATRIX
