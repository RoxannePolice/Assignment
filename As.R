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