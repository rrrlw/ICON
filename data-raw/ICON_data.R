# read in data details
ICON_data <- read.csv("data-raw/ICON_data.csv",
                      header = TRUE,
                      colClasses = c("character",     # var name
                                     #"integer",       # nodes
                                     "integer",       # edges
                                     "integer",       # directed
                                     "integer",       # weighted
                                     "character",     # name
                                     "character",     # domain
                                     "character",     # year (ranges too)
                                     "character",     # source
                                     "character",     # description
                                     "character"),    # citation
                      stringsAsFactors = FALSE)

ICON_data$Directed <- as.logical(ICON_data$Directed)
ICON_data$Weighted <- as.logical(ICON_data$Weighted)

# add to data directory
usethis::use_data(ICON_data, overwrite = TRUE)
