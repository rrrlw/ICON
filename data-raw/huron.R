#####PREVALENCE#####
# columns = parasites; rows = freshwater fish
temp_prevalence <- read.table("data-raw/huron_prevalence.txt",
                              na.strings = c("Nan", "NaN"))

# setup df
num_rows <- sum(is.na(temp_prevalence) | temp_prevalence != 0)
huron_prevalence <- data.frame(Fish = character(num_rows),
                               Parasite = character(num_rows),
                               Prevalence = numeric(num_rows),
                               stringsAsFactors = FALSE)

# make edgelist
counter <- 1
for (i in 1:nrow(temp_prevalence)) {
  for (j in 1:ncol(temp_prevalence)) {
    # skip if no interactions
    if (!is.na(temp_prevalence[i, j]) &
        temp_prevalence[i, j] == 0) next

    # weighted edge
    huron_prevalence$Fish[counter] <- rownames(temp_prevalence)[i]
    huron_prevalence$Parasite[counter] <- colnames(temp_prevalence)[j]
    huron_prevalence$Prevalence[counter] <- temp_prevalence[i, j]

    counter <- counter + 1
  }
}

#usethis::use_data(huron_prevalence, overwrite = TRUE)
save(huron_prevalence, file = "data-host/huron_prevalence.rda")
