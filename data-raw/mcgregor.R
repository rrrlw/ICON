#####INTENSITY#####
# columns = parasites; rows = freshwater fish
temp_intensity <- read.table("data-raw/mcgregor_intensity.txt",
                             na.strings = c("Nan", "NaN"))

# setup df
num_rows <- sum(is.na(temp_intensity) | temp_intensity != 0)
mcgregor_intensity <- data.frame(Fish = character(num_rows),
                                 Parasite = character(num_rows),
                                 Intensity = numeric(num_rows),
                                 stringsAsFactors = FALSE)

# make edgelist
counter <- 1
for (i in 1:nrow(temp_intensity)) {
  for (j in 1:ncol(temp_intensity)) {
    # skip if no interactions
    if (!is.na(temp_intensity[i, j]) &
        temp_intensity[i, j] == 0) next

    # weighted edge
    mcgregor_intensity$Fish[counter] <- rownames(temp_intensity)[i]
    mcgregor_intensity$Parasite[counter] <- colnames(temp_intensity)[j]
    mcgregor_intensity$Intensity[counter] <- temp_intensity[i, j]

    counter <- counter + 1
  }
}

#usethis::use_data(mcgregor_intensity, overwrite = TRUE)
save(mcgregor_intensity, file = "data-host/mcgregor_intensity.rda")

#####PREVALENCE#####
# columns = parasites; rows = freshwater fish
temp_prevalence <- read.table("data-raw/mcgregor_prevalence.txt",
                              na.strings = c("Nan", "NaN"))

# setup df
num_rows <- sum(is.na(temp_prevalence) | temp_prevalence != 0)
mcgregor_prevalence <- data.frame(Fish = character(num_rows),
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
    mcgregor_prevalence$Fish[counter] <- rownames(temp_prevalence)[i]
    mcgregor_prevalence$Parasite[counter] <- colnames(temp_prevalence)[j]
    mcgregor_prevalence$Prevalence[counter] <- temp_prevalence[i, j]

    counter <- counter + 1
  }
}

#usethis::use_data(mcgregor_prevalence, overwrite = TRUE)
save(mcgregor_prevalence, file = "data-host/mcgregor_prevalence.rda")
