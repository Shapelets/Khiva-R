% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/features.R
\name{FriedrichCoefficients}
\alias{FriedrichCoefficients}
\title{FriedrichCoefficients}
\usage{
FriedrichCoefficients(arr, m, r)
}
\arguments{
\item{arr}{KHIVA array with the time series.}

\item{m}{Order of polynom to fit for estimating fixed points of dynamics.}

\item{r}{Number of quantiles to use for averaging.}
}
\value{
KHIVA array with the coefficients for each time series.
}
\description{
Coefficients of polynomial \eqn{h(x)}, which has been fitted to the deterministic dynamics of Langevin model:
 Largest fixed point of dynamics  \eqn{argmax_x {h(x)=0}} estimated from polynomial \eqn{h(x)`},
 which has been fitted to the deterministic dynamics of Langevin model:
 \deqn{
      \dot(x)(t) = h(x(t)) + R \mathcal(N)(0,1)
 }
as described by [1]. For short time series this method is highly dependent on the parameters.
}
\details{
[1] Friedrich et al. (2000): Physics Letters A 271, p. 217-222
Extracting model equations from experimental data.
}
