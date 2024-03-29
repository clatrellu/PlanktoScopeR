% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import.R
\name{import.data}
\alias{import.data}
\title{Import data from tsv file downloaded from Ecotaxa}
\usage{
import.data(
  files = NULL,
  unwanted = NA,
  taxo_column = "object_annotation_hierarchy"
)
}
\arguments{
\item{files}{one or several tsv file names from a Planktoscope aquisition classified
with Ecotaxa. If multiple files are inserted, make sure they are grouped in a list.}

\item{unwanted}{a vector or list of strings containing the names of the categories
you wish to discard. The function will search for these keywords in the field
specified by the argument taxo_column, therefore you can target large categories that include
several species. For example if category A contains categories a,b and c, and
you want to omit a,b and c you can simply put A as argument. By default, the
function will keep all categories.}
}
\value{
A data table with all the fields from the original data.
}
\description{
This function imports one of several Ecotaxa tsv files into
one data.table object with computed volumes.
}
\details{
Biovolume and volume information is added.

Date and time are removed from sample ids.
}
