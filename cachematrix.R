## The following is a pair of functions that can be used to cache the inverse of the input matrix

## The below makeCacheMatrix function takes matrix object as a input and returns a list of 4 function names that
## can be used to set and get the original and inversed matrices.

## The 4 functions that can be used on input matrix are listed below
## setMatrix - initializes the matrix
## getMatrix - returns the actual matrix
## setMatrixInverse - sets the inverse matrix to the inv variable
## getMatrixInverse - returns the inversed matrix


makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	
	setMatrix <- function(y) {
		x <<- y
		inv <<- NULL
	}
	
	getMatrix <- function() x
	
	setMatrixInverse <- function(inverse) inv <<- inverse
	
	getMatrixInverse <- function() inv
	
	list(setMatrix = setMatrix, getMatrix = getMatrix, setMatrixInverse = setMatrixInverse, getMatrixInverse = getMatrixInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
