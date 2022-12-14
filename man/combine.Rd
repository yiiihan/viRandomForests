\name{combine}
\alias{combine}

\title{Combine Ensembles of Trees}

\description{
Combine two more more ensembles of trees into one.
}

\usage{
combine(...)
}

\arguments{
  \item{...}{two or more objects of class \code{viRandomForests}, to be
    combined into one.}
}

\value{
An object of class \code{viRandomForests}.
}

\note{
The \code{confusion}, \code{err.rate}, \code{mse} and \code{rsq}
components (as well as the corresponding components in the \code{test}
compnent, if exist) of the combined object will be \code{NULL}.  
}

\seealso{\code{\link{viRandomForests}}, \code{\link{grow}}}

\author{Andy Liaw \email{andy\_liaw@merck.com}}

\examples{
data(iris)
rf1 <- viRandomForests(Species ~ ., iris, ntree=50, norm.votes=FALSE)
rf2 <- viRandomForests(Species ~ ., iris, ntree=50, norm.votes=FALSE)
rf3 <- viRandomForests(Species ~ ., iris, ntree=50, norm.votes=FALSE)
rf.all <- combine(rf1, rf2, rf3)
print(rf.all)
}

\keyword{regression}
\keyword{classif}
