% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/listProduct.R
\name{listProduct}
\alias{listProduct}
\title{tensor product of lists}
\usage{
listProduct(...)
}
\arguments{
\item{...}{lists}
}
\value{
a list of lists each containing one combinations of the elements of
the input lists
}
\description{
Creates a list of all combinations of the elements of the inputlists (like a
"tensor product list " The list elements can be of any class. The function
is used in examples and tests to produce all possible combinations of
arguments to a function. look at the tests for example usage
}
\examples{
listProduct(list('a','b'),list(1,2))
}
