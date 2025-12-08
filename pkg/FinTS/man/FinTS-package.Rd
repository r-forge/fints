\name{FinTS-package}
\alias{FinTS-package}
\alias{FinTS}
\docType{package}
\title{
  \Sexpr[stage=build,results=hide]{pd <- packageDescription("FinTS")}
  \Sexpr[stage=build,results=hide]{lb <- library(help="FinTS", character.only=TRUE)}
  \Sexpr[stage=build]{pd$Title}
}
\description{
  \Sexpr[stage=build]{pd$Description}
}
\details{
  % this will print the index but this doesn't seem useful.
  % 
  Index:
  \Sexpr[stage=build,results=rd]{paste("\\\\preformatted{", paste(if(!is.null(lb$info[[2]])) lb$info[[2]] else "No entries",collapse="\n"), "}", sep="")}

  The scripts are in the \code{scripts} subdirectory of the \code{FinTS}
  installation directory. The function \code{\link{runscript}} may be
  useful for working with them (view, run,, etc.), see the examples.

  Corrections to the script files provided and contributions of script
  files for other chapters will be graciously accepted.
}
\author{
Spencer Graves

Maintainer: % Spencer Graves <spencer.graves@prodsyse.com>
   \Sexpr[stage=build]{pd$Maintainer}
}
\references{
    Ruey Tsay (2005) Analysis of Financial Time Series, 2nd ed. (Wiley)
}
\keyword{ package }
\keyword{ ts }
\seealso{
  \url{https://faculty.chicagobooth.edu/ruey-s-tsay/teaching}
}
\examples{
# get the directory containing the scripts
scriptdir <- system.file(package = 'FinTS', "scripts")

# list the available scripts
dir(scriptdir)

# View the script file 'ch01.R', which is in the 'scripts'
# subdirectory of the system.file(package='FinTS') directory:
runscript(1, 'view')

# SP statistics in Table 1.2 of Tsay
data(d.ibmvwewsp6203)
FinTS.stats(100*d.ibmvwewsp6203[, "SP"])
}
