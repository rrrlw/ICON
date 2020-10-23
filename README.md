# ICON: easy access to complex systems datasets

[![Travis-CI Build Status](https://travis-ci.org/rrrlw/ICON.svg?branch=master)](https://travis-ci.org/rrrlw/ICON)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/rrrlw/ICON?branch=master&svg=true)](https://ci.appveyor.com/project/rrrlw/ICON)

[![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-blue.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
[![CRAN version](http://www.r-pkg.org/badges/version/ICON)](https://CRAN.R-project.org/package=ICON)
[![CRAN Downloads](http://cranlogs.r-pkg.org/badges/grand-total/ICON)](https://CRAN.R-project.org/package=ICON)

## Overview

The ICON R package provides easy-to-use and easy-to-access datasets from the Index of COmplex Networks (ICON) database available at the University of Colorado website.
All datasets can be loaded with a single function call and new datasets are being slowly added from ICON at <https://icon.colorado.edu>.
Currently, the ICON R package includes 1,075 complex networks.

## Installation

To install the ICON package, run the following R code:
```r
# install from CRAN (older, fewer networks)
install.packages("ICON")

# install development version from GitHub (updated, more networks)
devtools::install_github("rrrlw/ICON")
```

## Sample code

The sample code below demonstrates network visualization using the igraph R package.
For a more detailed look at network analysis (using the network R package) and visualization (using the ggnetwork R package), please take a look at the package vignette.

```r
# load ICON package and data frame of available datasets
library("ICON")
data(ICON_data)

# vector of names of available datasets
print(ICON_data$Var_name)

# look at entire data frame in Rstudio
View(ICON_data)

# load the chess dataset for use and look at the first few lines
get_data("chess")
head(chess)

# load another dataset for use
get_data("seed_disperse_beehler")

# plot interaction network using igraph
library("igraph")
my_graph <- graph_from_edgelist(as.matrix(seed_disperse_beehler[, 1:2]), directed = FALSE)
plot(my_graph, vertex.label = NA, vertex.size = 5)

# following plot is generated (exact vertex positioning varies each time code is run)
```

<img src="https://raw.githubusercontent.com/rrrlw/ICON/master/SamplePlot.png" align="center" width="268" height="265"/><br/>

## Contribute

See contribution guidelines [here](https://github.com/rrrlw/ICON/blob/master/CONTRIBUTING.md).
First-timers and beginners are welcome!
