# read raw format & fix column names
AS_relation <- read.table(file = "data-raw/AS_relation.txt",
                          header = FALSE,
                          skip = 8,
                          nrows = 106775,
                          sep = "",
                          colClasses = c("character",
                                         "character",
                                         "integer"),
                          stringsAsFactors = FALSE)
colnames(AS_relation) <- c("From", "To", "Relationship")

# save in data-host folder
save(AS_relation, file = "data-host/AS_relation.rda")
