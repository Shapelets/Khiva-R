% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/features.R
\name{NumberPeaks}
\alias{NumberPeaks}
\title{NumberPeaks}
\usage{
NumberPeaks(arr, n)
}
\arguments{
\item{arr}{KHIVA array with the time series.}

\item{n}{The support of the peak.}
}
\value{
The number of m-crossings of each time series within arr.
}
\description{
Calculates the number of peaks of at least support \eqn{n} in the time series \eqn{arr}. A peak of support
\eqn{n} is defined as a subsequence of \eqn{arr} where a value occurs, which is bigger than
its \eqn{n} neighbours to the left and to the right.
}
