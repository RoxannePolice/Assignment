##These two functions should create a matrix, which could later be cached and inverted.

##The result of this first function should be a cached matrix. The inverted matrix should also be cached.
makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y) {
x<<-y
m<<-NULL}
get<-function()x
setsolve<-function(solve) s<<-solve
getsolve<-function() s
matrix(c(set=set, get=get,
setmean=setmean,
getmean=getmean)
}

##The second function should return only the already existing inverted matrix. Should the inverted matrix not exist, 
## the function should create one.
cacheSolve <- function (x, ...) { 
s<-x$getsolve()
if(!is.null(s)) {
	message("getting cached data")
	return(s)
}
data<-x$get()
s<-solve(data, ...)
x$setsolve(s)
s
}
