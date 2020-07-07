# input data
wordadj_japanese <- read.table(file = "data-raw/wordadj_japanese.txt",
                              header = FALSE,
                              sep = " ",
                              col.names = c("From", "To", "Unknown"),
                              colClasses = c("character", "character", "integer"),
                              stringsAsFactors = FALSE)

# remove unnecessary column (single value in entire column)
wordadj_japanese$Unknown <- NULL

# save as rda
save(wordadj_japanese, file = "data-host/wordadj_japanese.rda")
