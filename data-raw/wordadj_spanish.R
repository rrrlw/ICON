# input data
wordadj_spanish <- read.table(file = "data-raw/wordadj_spanish.txt",
                             header = FALSE,
                             sep = " ",
                             col.names = c("From", "To", "Unknown"),
                             colClasses = c("character", "character", "integer"),
                             stringsAsFactors = FALSE)

# remove unnecessary column (single value in entire column)
wordadj_spanish$Unknown <- NULL

# save as rda
save(wordadj_spanish, file = "data-host/wordadj_spanish.rda")
