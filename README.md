# ICON: easy access to complex systems datasets

[![Travis-CI Build Status](https://travis-ci.org/rrrlw/ICON.svg?branch=master)](https://travis-ci.org/rrrlw/ICON)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/rrrlw/ICON?branch=master&svg=true)](https://ci.appveyor.com/project/rrrlw/ICON)

[![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-blue.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
[![CRAN version](http://www.r-pkg.org/badges/version/ICON)](https://CRAN.R-project.org/package=ICON)
[![CRAN Downloads](http://cranlogs.r-pkg.org/badges/grand-total/ICON)](https://CRAN.R-project.org/package=ICON)

## Overview

The ICON R package provides easy-to-use and easy-to-access datasets from the Index of COmplex Networks (ICON) database available at the University of Colorado website.
All datasets can be loaded with a single function call and new datasets are being slowly added from ICON at <https://icon.colorado.edu>.

## Installation

To install the ICON package, run the following R code:
```r
# install from CRAN (not yet)
install.packages("ICON")

# install development version from GitHub
devtools::install_github("rrrlw/ICON")

# install dev version with vignettes/tutorials
devtools::install_github("rrrlw/ICON", build_vignettes = TRUE)
```

## Sample code

Coming soon...

## Contribute

If you would like to add datasets to the ICON R package from the online ICON webpage, please complete the following steps:

1. Add the raw data file (e.g. txt or csv format) under the `data-raw` directory.
1. Add an R script converting the raw data file to a .rda file or .RData file. The R script should also be under the `data-raw` directory.
1. Run the R script (should end with `usethis::use_data` or similar) that creates the .rda or .Rdata file under the `data` directory.
1. Add documentation for this dataset in the `data.R` file in the `R` directory (follow documentation style of other datasets already documented in `R/data.R`).
1. Use `roxygen2` or `devtools` (e.g. `devtools::document()`) to create the corresponding documentation file (ends in `.Rd`) under the `man` directory.
1. Add the dataset you added to the `NEWS.md` file.
1. Add yourself as a package author in the `DESCRIPTION` file.
1. Pull request your changes into `rrrlw/ICON`.

You can also create issues for any bugs/suggestions on the [issues page](https://github.com/rrrlw/ICON/issues).
