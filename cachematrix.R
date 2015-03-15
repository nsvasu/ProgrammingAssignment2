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


## The below cacheSolve function takes the special input matrix object and
## returns the inversed matrix from cache (if the inversed matrix is already created and stored in the cache)
## otherwise matrix inverse is calculated by performing solve function on the special input matrix object,
## caches the inversed matrix and returns the same and the subsequent requests for inversed matrix will be returned from the cache.

cacheSolve <- function(x, ...) {
	inv <- x$getMatrixInverse()

	if(!is.null(inv)) {
		message("getting cached matrix inverse")
		return(inv)
	}

	data <- x$getMatrix()
	inv <- solve(data, ...)

	x$setMatrixInverse(inv)
	
	inv
}
