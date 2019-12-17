# read in data
amazon_copurchase <- read.table("data-raw/amazon_copurchase.txt",
                                col.names = c("From", "To"),
                                colClasses = c("character", "character"),
                                stringsAsFactors = FALSE,
                                skip = 4,
                                nrows = 3387400)

# save as rda
#usethis::use_data(amazon_copurchase, overwrite = TRUE)
save(amazon_copurchase, file = "data-host/amazon_copurchase.rda",
     compress = "xz")
