% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3-ICON.R
\name{print.ICON}
\alias{print.ICON}
\title{Print Values in ICON complex network dataset}
\usage{
\method{print}{ICON}(x, ...)
}
\arguments{
\item{x}{object of class `ICON` (and, as a consequence, `data.frame`)}

\item{...}{other relevant parameters}
}
\value{
does not return anything useful; prints `x`'s contents to console
}
\description{
`print.ICON` implements an S3 method for the `base::print` generic. It
includes a brief one-line summary, 5 edges in the dataset, and the number
of unprinted edges.
}
\examples{
\dontrun{
get_data("aishihik_intensity")

print(aishihik_intensity)
}
}
