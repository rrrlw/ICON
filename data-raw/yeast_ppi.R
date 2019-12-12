# read in data
yeast_ppi <- read.table("data-raw/yeast_ppi.txt",
                        header = FALSE,
                        col.names = c("Protein1", "Protein2"),
                        row.names = NULL,                          # save space/time
                        colClasses = c("character", "character"),  # quicker
                        stringsAsFactors = FALSE,                  # quicker
                        sep = "",                                  # whitespace (space or tab)
                        nrows = 9075)                              # padding

# save as rda
#usethis::use_data(yeast_ppi, overwrite = TRUE)
save(yeast_ppi, file = "data-host/yeast_ppi.rda")
