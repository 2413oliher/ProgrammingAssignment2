## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## create a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        ## Initialise the inverse property 
        i<-NULL
        ## Method to set the matrix
        set<-function(y)
                {
                x<<-y
                i<<-NULL
                }
        ## Method to get the matirx
        get<-function()x
        ## Method to set the inverse of the matrix
        setinverse<-function(inverse)i<<-inverse
        ## Method to get the inverse of the matrix
        getinverse<-function(inverse)i
        ## Return the list of the matrix
        list(set=set,get=get,setinverse=setinverse,getinverse=getinerse)
        
}

## Write a short comment describing this function

## Compute the inverse of the special matrix returned by"makeCacheMatrix"above.
##If the inverse has already been calculated,then the "cacheSolve" should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i<-x$getinverse()
       ## Just return the inverse if its already set
        if(!is.null(i)){
                message("getting cached data")
                return(i)
                }
        ## Get the matrix from the object
        data<-x$get()
        ## Calculate the inverse
        i<-solve(data,...)
        ## set the inverse of the object
        x$setinverse(i)
        ## Return the matrix
         i                
  }
