% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/features.R
\name{SpktWelchDensity}
\alias{SpktWelchDensity}
\title{SpktWelchDensity}
\usage{
SpktWelchDensity(arr, coeff)
}
\arguments{
\item{arr}{KHIVA array with the time series.}

\item{coeff}{The coefficient to be returned.}
}
\value{
: KHIVA array containing the power spectrum of the different frequencies for each time series in arr.
}
\description{
Estimates the cross power spectral density of the time series array at different frequencies. To do so, the
time series is first shifted from the time domain to the frequency domain.
}
\details{
Welch's method computes an estimate of the power spectral density by dividing the data into overlapping
segments, computing a modified periodogram for each segment and averaging the periodograms.
[1] P. Welch, "The use of the fast Fourier transform for the estimation of power spectra: A method based on time
averaging over short, modified periodograms", IEEE Trans. Audio Electroacoust. vol. 15, pp. 70-73, 1967.
[2] M.S. Bartlett, "Periodogram Analysis and Continuous Spectra", Biometrika, vol. 37, pp. 1-16, 1950.
[3] Rabiner, Lawrence R., and B. Gold. "Theory and Application of Digital Signal Processing" Prentice-Hall, pp.
414-419, 1975.
}
