# read in data
terrorist_pairs <- read.table("data-raw/terrorist.pairs")
colnames(terrorist_pairs) <- c("Node1", "Node2")

# save data frame as rda
#usethis::use_data(terrorist_pairs, overwrite = TRUE)
save(terrorist_pairs, file = "data-host/terrorist_pairs.rda")
