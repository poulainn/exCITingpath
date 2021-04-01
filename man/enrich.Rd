\name{enrich}
\alias{enrich}
\title{Returns the list of annotation in selected DB}
\usage{
enrich(a,pathway,om)
}
\arguments{
  \item{a}{gene selected to perform enrichment analysis}
  \item{pathway}{list of pathways to evaluate for enrichment, same structure as returned by loadDB function}
  \item{om}{genes possibly enriched ie. intersection between studied genes and genes in pathway}
}
\description{
Returns the enrichment result table



    
}
\examples{
    enrich(a,pathway,om)
}
