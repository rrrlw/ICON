# input data
wordadj_english <- read.table(file = "data-raw/wordadj_english.txt",
                              header = FALSE,
                              sep = " ",
                              col.names = c("From", "To", "Unknown"),
                              colClasses = c("character", "character", "integer"),
                              stringsAsFactors = FALSE)

# remove unnecessary column (single value in entire column)
wordadj_english$Unknown <- NULL

# save as rda
save(wordadj_english, file = "data-host/wordadj_english.rda")
