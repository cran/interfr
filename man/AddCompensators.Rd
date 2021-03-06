% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AddCompensators.R
\name{AddCompensators}
\alias{AddCompensators}
\title{Shows the color changes when using sensible and quarter compensators}
\usage{
AddCompensators(loc = locator(1), type = "RS", quarter = 147.3,
  sensible = 530)
}
\arguments{
\item{loc}{A named list with members x and y , or an interactive selection.}

\item{type}{Chart type (Raith-Sorensen or Michel-Levy),
see \code{\link{PlotChart}}.}

\item{quarter}{Numeric, the retardation of the quarter slab (in nanometers).}

\item{sensible}{Numeric, the retardation of the lambda slab (in nanometers).}
}
\value{
Called for its side effect of adding circles to an existing plot
}
\description{
\code{AddCompensators} takes coordinates of one point on the interference
chart (either provided as a named list or interactively selected on
the chart using \code{locator}) and adds five circles to the plot: 
a black one centered on the selected interference color, and
four that correspond to adding or substracting the retardations
of a quarter plate (grey circles) and a sensible plate (red circles).
}
\examples{
\dontrun{
PlotChart(IC=IC1,type="RS",x.lims=range(IC1[,2]),Thickness = 4000)
AddCompensators()
# the same without interactive selection:
PlotChart(IC=IC1,type="RS",x.lims=range(IC1[,2]),Thickness = 4000)
AddCompensators(loc=list("x"=0.0002566569,"y"=3999.757))
}
}
\seealso{
\code{\link[graphics]{locator}},
\code{\link[interfr]{PlotChart}}
}
\author{
Olivier Eterradossi, \email{olivier.eterradossi@mines-ales.fr}
}
