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

