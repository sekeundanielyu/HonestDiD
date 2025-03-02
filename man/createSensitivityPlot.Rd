\name{createSensitivityPlot}
\alias{createSensitivityPlot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Constructs sensitivity plot for Delta = Delta^{SD}(M), Delta^{SDB}(M) and Delta^{SDM}(M)
}
\description{
  This function constructs sensitivity plots that examine how the robust confidence sets change as the parameter M varies for Delta = Delta^{SD}(M), Delta^{SDB}(M) and Delta^{SDM}(M). Similar plots are constructed in Section 6 of Rambachan & Roth (2021).
}
\usage{
createSensitivityPlot(robustResults, originalResults,
                      rescaleFactor = 1, maxM = Inf, add_xAxis = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{robustResults}{
  Dataframe that contains the upper/lower bounds of robust confidence sets for each choice of M. Contains columns: method --  Method of constructing robust confidence set (e.g., "FLCI"), lb -- Lower bound of robust confidence set, ub -- Upper bound of robust confidence set, M -- M values associated with each robust confidence set.
  }
  \item{originalResults}{
  Dataframe that contains the original confidence set for the parameter of interest. Contains columns: method --  Method of constructing confidence set (e.g., "Original"), lb -- Lower bound of confidence set, ub -- Upper bound of confidence set.
  }
  \item{rescaleFactor}{
  Scalar that is used to rescale the user specified choices of M and the upper/lower bounds of the confidence sets. Default equals one.
  }
  \item{maxM}{
  Scalar that specifies the maximum M value to plot in the sensitivity plot. Default equals infinity (no truncation).
  }
  \item{add_xAxis}{
  Logical specifying whether to plot the x-axis in the sensitivity plot. Default equals TRUE.
  }
}
\value{
Returns ggplot object of the sensitivity plot.
}
\references{
  Rambachan, Ashesh and Jonathan Roth. "An Honest Approach to Parallel Trends." 2021.
}
\author{
  Ashesh Rambachan
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
