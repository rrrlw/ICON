# Contribute

## Add more datasets to the ICON R package

If you would like to add datasets to the ICON R package from the online ICON webpage, please complete the following steps:

1. If you have write access to `rrrlw/ICON`, create a new branch. If not, fork the repository.
1. Add the raw data file (e.g. txt or csv format) under the `data-raw` directory.
1. Add an R script converting the raw data file to the R Data format (.rda or .RData extension). The R script should also be saved under the `data-raw` directory.
1. Add a call to the `save` function at the end of the R script that saves the R Data file in the `data-host` directory.
1. Add dataset metadata to `ICON_data.csv` under the `data-raw` directory.
1. Run `ICON_data.R` under the `data-raw` directory so that `ICON_data.rda` under the `data` directory is updated.
1. Add the dataset name under the appropriate version heading in `NEWS.md`.
1. If not already done, add your name as a package author (`role = "aut"`) in the `DESCRIPTION` file.
1. Create a pull request to `rrrlw/ICON`.

## Other contributions

You can also create issues for any bugs/suggestions on the [issues page](https://github.com/rrrlw/ICON/issues).
