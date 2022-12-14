\name{importancenew}
\alias{importancenew}
\alias{importancenew.default}
\alias{importancenew.viRandomForests}
\title{Extract variable importancenew measure}
\description{
  This is the extractor function for variable importancenew measures as
  produced by \code{\link{viRandomForests}}.
}
\usage{
\method{importancenew}{viRandomForests}(x, type=NULL, class=NULL, scale=TRUE, ...)
}
\arguments{
  \item{x}{an object of class \code{\link{viRandomForests}}}.
  \item{type}{either 1 or 2, specifying the type of importance measure
    (1=mean decrease in accuracy, 2=mean decrease in node impurity).}
  \item{class}{for classification problem, which class-specific measure
    to return.}
  \item{scale}{For permutation based measures, should the measures be
    divided their ``standard errors''?}
  \item{...}{not used.}
}
\value{
  A matrix of importance measure, one row for each predictor variable.
  The column(s) are different importance measures. Note this importance
  measure is based on the weighted Random Forests.
}
\details{
  Here are the definitions of the variable importance measures.  The
  first measure is computed from permuting OOB data:  For
  each tree, the prediction error on the out-of-bag portion of the
  data is recorded (error rate for classification, MSE for regression).
  Then the same is done after permuting each predictor variable.  The
  difference between the two are then averaged over all trees, and
  normalized by the standard deviation of the differences.  If the
  standard deviation of the differences is equal to 0 for a variable,
  the division is not done (but the average is almost always equal to 0
  in that case).

  The second measure is the total decrease in node impurities from
  splitting on the variable, averaged over all trees.  For
  classification, the node impurity is measured by the Gini index.
  For regression, it is measured by residual sum of squares.

}
%\references{
%}
\seealso{
  \code{\link{viRandomForests}}, \code{\link{varImpPlot}}
}
\examples{
set.seed(4543)
data(mtcars)
mtcars.rf <- viRandomForests(mpg ~ ., data=mtcars, ntree=1000,
                          keep.forest=FALSE, importance=TRUE)
importancenew(mtcars.rf)
importancenew(mtcars.rf, type=1)
}
%\author{}
\keyword{regression}
\keyword{classif}
\keyword{tree}

