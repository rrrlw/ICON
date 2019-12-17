# read in data
ppi_yeast <- read.table("data-raw/ppi_yeast.txt",
                        header = FALSE,
                        col.names = c("Protein1", "Protein2"),
                        row.names = NULL,                          # save space/time
                        colClasses = c("character", "character"),  # quicker
                        stringsAsFactors = FALSE,                  # quicker
                        sep = "",                                  # whitespace (space or tab)
                        nrows = 9075)                              # padding

# save as rda
#usethis::use_data(yeast_ppi, overwrite = TRUE)
save(ppi_yeast, file = "data-host/ppi_yeast.rda")
