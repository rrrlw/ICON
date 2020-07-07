# input data
wordadj_french <- read.table(file = "data-raw/wordadj_french.txt",
                              header = FALSE,
                              sep = " ",
                              col.names = c("From", "To", "Unknown"),
                              colClasses = c("character", "character", "integer"),
                              stringsAsFactors = FALSE)

# remove unnecessary column (single value in entire column)
wordadj_french$Unknown <- NULL

# save as rda
save(wordadj_french, file = "data-host/wordadj_french.rda")
