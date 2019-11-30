# read raw format
chess <- read.table(file = "data-raw/chess.txt",
                    header = TRUE,                            # column names
                    sep = "",                                 # some spaces, some tabs; both separators accounted for here
                    row.names = NULL,                         # don't need row names
                    colClasses = c("character", "character",  # for now, IDs = characters, result = integer, timestamp = numeric
                                   "integer", "numeric"),
                    nrows = 65075,                            # some extra rows just in case
                    stringsAsFactors = FALSE)                 # character IDs shouldn't be converted to factors

# save in data folder
usethis::use_data(chess, overwrite = TRUE)
