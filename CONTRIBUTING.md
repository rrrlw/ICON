# Contribute

## Add more datasets to the ICON R package

If you would like to add datasets to the ICON R package from the online ICON webpage, please complete the following steps:

1. Add the raw data file (e.g. txt or csv format) under the `data-raw` directory.
1. Add an R script converting the raw data file to a .rda file or .RData file. The R script should also be under the `data-raw` directory.
1. Run the R script (should end with `usethis::use_data` or similar) that creates the .rda or .Rdata file under the `data` directory.
1. Add documentation for this dataset in the `data.R` file in the `R` directory (follow documentation style of other datasets already documented in `R/data.R`).
1. Use `roxygen2` or `devtools` (e.g. `devtools::document()`) to create the corresponding documentation file (ends in `.Rd`) under the `man` directory.
1. Add the dataset you added to the `NEWS.md` file.
1. Add yourself as a package author in the `DESCRIPTION` file.
1. Pull request your changes into `rrrlw/ICON`.

## Other contributions

You can also create issues for any bugs/suggestions on the [issues page](https://github.com/rrrlw/ICON/issues).
