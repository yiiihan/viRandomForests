\name{plot.viRandomForests}
\alias{plot.viRandomForests}
\title{Plot method for viRandomForests objects}
\description{
  Plot the error rates or MSE of a viRandomForests object
}
\usage{
\method{plot}{viRandomForests}(x, type="l", main=deparse(substitute(x)), ...)
}
\arguments{
  \item{x}{an object of class \code{viRandomForests}.}
  \item{type}{type of plot.}
  \item{main}{main title of the plot.}
  \item{...}{other graphical parameters.}
}
\value{
  Invisibly, the error rates or MSE of the \code{viRandomForests} object.
  If the object has a non-null \code{test} component, then the returned
  object is a matrix where the first column is the out-of-bag estimate
  of error, and the second column is for the test set.
}
\note{
  This function does not work for \code{viRandomForests} objects that have
  \code{type=unsupervised}.
  
  If the \code{x} has a non-null \code{test} component, then the test
  set errors are also plotted.
}
\seealso{
  \code{\link{viRandomForests}}
}
\examples{
data(mtcars)
plot(viRandomForests(mpg ~ ., mtcars, keep.forest=FALSE, ntree=100), log="y")
}
\author{Andy Liaw}
\keyword{classif}
\keyword{regression}
\keyword{tree}
