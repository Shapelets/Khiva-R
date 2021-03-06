% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dimensionality.R
\name{Paa}
\alias{Paa}
\title{Paa}
\usage{
Paa(arr, bins)
}
\arguments{
\item{arr}{KHIVA Array with the x-coordinates and y-coordinates of the input points (x in column 0 and y in column 1).}

\item{bins}{Sets the total number of divisions.}
}
\value{
Array of points with the reduced dimensionality.
}
\description{
Piecewise Aggregate Approximation (PAA) approximates a time series \eqn{X} of length \eqn{n} into vector
\eqn{\bar{X}=(\bar{x}_{1},…,\bar{x}_{M})} of any arbitrary length \eqn{M \leq n} where each of \eqn{\bar{x_{i}}} is
calculated as follows:
\deqn{
\bar{x}_{i} = \frac{M}{n} \sum_{j=n/M(i-1)+1}^{(n/M)i} x_{j}.
}
}
