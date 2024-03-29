% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoplot.R
\name{autoplot.hspt_n}
\alias{autoplot.hspt_n}
\alias{autolayer.hspt_n}
\title{Plot map of grid counts}
\usage{
\method{autoplot}{hspt_n}(object, ...)

\method{autolayer}{hspt_n}(object, ...)
}
\arguments{
\item{object}{An object with the class \code{hspt_n}, e.g. as produced by
\code{\link{hotspot_count}}.}

\item{...}{further arguments passed to \code{\link[ggplot2]{geom_sf}}, e.g.
\code{alpha}.}
}
\value{
A \code{\link[ggplot2]{ggplot}} object or layer that can be used as
part of a \code{\link[ggplot2]{ggplot}} stack.

\code{autoplot} returns a \code{ggplot} object, meaning you can further
control the appearance of the plot by adding calls to further \code{ggplot2}
functions.
}
\description{
Plot the output produced by \code{\link{hotspot_count}} with reasonable
default values.
}
\section{Functions}{
\itemize{
\item \code{autolayer(hspt_n)}: Create a ggplot layer of grid counts

}}
