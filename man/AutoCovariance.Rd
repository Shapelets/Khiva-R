% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/features.R
\name{AutoCovariance}
\alias{AutoCovariance}
\title{AutoCovariance}
\usage{
AutoCovariance(arr, unbiased)
}
\arguments{
\item{arr}{KHIVA array with the time series.}

\item{unbiased}{Determines whether it divides by n - lag (if true) or n (if false).}
}
\value{
The auto-covariance value for the given time series.
}
\description{
Calculates the auto-covariance the given time series.
}
