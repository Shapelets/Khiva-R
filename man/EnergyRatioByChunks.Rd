% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/features.R
\name{EnergyRatioByChunks}
\alias{EnergyRatioByChunks}
\title{EnergyRatioByChunks}
\usage{
EnergyRatioByChunks(arr, num.segments, segment.focus)
}
\arguments{
\item{arr}{KHIVA array with the time series.}

\item{num.segments}{The number of segments to divide the series into.}

\item{segment.focus}{The segment number (starting at zero) to return a feature on.}
}
\value{
The energy ratio by chunk of the time series.
}
\description{
Calculates the sum of squares of chunk i out of N chunks expressed as a ratio
with the sum of squares over the whole series. segmentFocus should be lower
than the number of segments.
}
