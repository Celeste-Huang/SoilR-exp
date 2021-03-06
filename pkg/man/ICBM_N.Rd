% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ICBM_N.R
\name{ICBM_N}
\alias{ICBM_N}
\title{Implementation of the ICBM/N model}
\usage{
ICBM_N(
  i = 0.47,
  k_Y = 0.259,
  k_O = 0.0154,
  r_e = 1,
  e_Y = 0.362,
  h = 0.243,
  q_i = 18.8,
  q_b = 5
)
}
\arguments{
\item{i}{carbon input to the soil from plant production}

\item{k_Y}{decomposition rate of young pool Y}

\item{k_O}{decomposition rate of old pool O}

\item{r_e}{external effects on decomposition rates}

\item{e_Y}{yield efficiency of the soil organism community}

\item{h}{humification coefficient. Fraction of outflux from Y that is not respired and enters O}

\item{q_i}{C:N ratio of plant inputs}

\item{q_b}{C:N ratio of soil organism biomass}
}
\description{
This implementations follows the description in Katterer and Andren (2001, Eco Mod 136:191).
}
