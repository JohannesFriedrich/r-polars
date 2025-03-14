% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/series__series.R
\name{Series_min}
\alias{Series_min}
\title{min}
\usage{
Series_min()
}
\value{
R scalar value
}
\description{
Reduce Series with min
}
\details{
Dtypes in {Int8, UInt8, Int16, UInt16} are cast to
Int64 before minming to prevent overflow issues.
}
\examples{
pl$Series(c(1:2,NA,3,5))$min() # a NA is dropped always
pl$Series(c(1:2,NA,3,NaN,4,Inf))$min() # NaN carries / poisons
pl$Series(c(1:2,3,Inf,4,-Inf,5))$min() # Inf-Inf is NaN
}
\keyword{Series}
