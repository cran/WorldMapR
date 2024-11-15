% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worldplot.R
\name{worldplot}
\alias{worldplot}
\title{worldplot}
\usage{
worldplot(
  data,
  ColName,
  CountryName,
  CountryNameType = "isoa2",
  rangeVal,
  longitude = c(-180, 180),
  latitude = c(-90, 90),
  crs = 4326,
  title = "",
  legendTitle = as.character(ColName),
  annote = FALSE,
  div = 1,
  palette_option = "D"
)
}
\arguments{
\item{data}{Data set containing the list of nations and the variable that we want to plot.}

\item{ColName}{Character variable with the name of the variable of interest.}

\item{CountryName}{Character variable with the name of the country names column.}

\item{CountryNameType}{Character variable with the coding for \code{CountryName}. One of \code{isoa2} (default, standing for ISO 3166-1 alpha-2 code), \code{isoa3}, or \code{name}.}

\item{rangeVal}{Limit values that are to be defined for the map.}

\item{longitude}{Longitude limits. Default is \code{c(-180, 180)} (whole world with crs as EPSG::4326).}

\item{latitude}{Latitude limits. Default is \code{c(-90, 90)} (whole world with crs as EPSG::4326).}

\item{crs}{Coordinate reference system (EPSG). By default the value is 4326, which corresponds to EPSG::4326 (WGS84)}

\item{title}{Title of the plot. Default is no title.}

\item{legendTitle}{Title of the legend. Default is the name of the filling variable.}

\item{annote}{Do you want to plot country labels (ISO 3166-1 alpha-2 code) on the map? Default is set to \code{FALSE}.}

\item{div}{Parameter for modifying the elements dimensions in the map. Usually, it does not need to be modified. Default value is 1.}

\item{palette_option}{Character string indicating the palette to be used. Available options range between "A" and "H".}
}
\value{
a map
}
\description{
Plot a world heat map based on a continuous variable.
}
\examples{
data(testdata1b)
worldplot(data = testdata1b,
          div = 1,
          ColName = "VNum",
          CountryName = "Cshort",
          CountryNameType = "isoa2",
          rangeVal = c(0,50),
          annote = FALSE)

}
