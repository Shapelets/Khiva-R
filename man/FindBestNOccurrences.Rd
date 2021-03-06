% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrix.R
\name{FindBestNOccurrences}
\alias{FindBestNOccurrences}
\title{Calculates the N best matches of several queries in several time series.}
\usage{
FindBestNOccurrences(query, tss, n)
}
\arguments{
\item{query}{KHIVA Array whose first dimension is the length of the query time series and the second dimension is the
number of queries.}

\item{tss}{KHIVA Array whose first dimension is the length of the time series and the second dimension is the number of
time series.}

\item{n}{Number of matches to return.}
}
\value{
Array or KHIVA Arrays with the distances and indexes.
}
\description{
The result has the following structure:
- 1st dimension corresponds to the nth best match.
- 2nd dimension corresponds to the number of queries.
- 3rd dimension corresponds to the number of time series.
}
\details{
For example, the distance in the position (1, 2, 3) corresponds to the second best distance of the third query in the
fourth time series. The index in the position (1, 2, 3) is the is the index of the subsequence which leads to the
second best distance of the third query in the fourth time series.
}
