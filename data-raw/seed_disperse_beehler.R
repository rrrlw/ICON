# columns = plants; rows = birds
temp_disperse <- read.table("data-raw/seed_disperse_beehler.txt")

# setup df
num_rows <- sum(temp_disperse != 0)
seed_disperse_beehler <- data.frame(Bird = character(num_rows),
                                    Plant = character(num_rows),
                                    Frequency = numeric(num_rows),
                                    stringsAsFactors = FALSE)

# make edgelist
counter <- 1
for (i in 1:nrow(temp_disperse)) {
  for (j in 1:ncol(temp_disperse)) {
    # skip if no interactions
    if (temp_disperse[i, j] == 0) next

    # weighted edge
    seed_disperse_beehler$Bird[counter] <- rownames(temp_disperse)[i]
    seed_disperse_beehler$Plant[counter] <- colnames(temp_disperse)[j]
    seed_disperse_beehler$Frequency[counter] <- temp_disperse[i, j]

    counter <- counter + 1
  }
}

save(seed_disperse_beehler,
     file = "data-host/seed_disperse_beehler.rda")
