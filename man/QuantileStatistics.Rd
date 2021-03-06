% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statistics.R
\name{QuantileStatistics}
\alias{QuantileStatistics}
\title{QuantileStatistics}
\usage{
QuantileStatistics(tss, q, precision = 1e+08)
}
\arguments{
\item{tss}{Expects an input array whose dimension zero is the length of the time series (all the same) and
dimension one indicates the number of time series.}

\item{q}{Percentile(s) at which to extract score(s). One or many.}

\item{precision}{Number of decimals expected.}
}
\value{
Values at the given quantile.
}
\description{
Returns values at the given quantile.
}
