# interaction matrix (CSV)
before <- read.csv("data-raw/seed_disperse_snow.csv",
                   row.names = 1,
                   header = TRUE)

# structure to store edgelist
num_vals <- nrow(before) * ncol(before)
seed_disperse_snow <- data.frame(Bird = character(num_vals),
                                 Plant= character(num_vals),
                                 Visits = integer(num_vals),
                                 stringsAsFactors = FALSE)

# convert interaction matrix to edgelist
counter <- 1
for (i in 1:nrow(before)) {
  for (j in 1:ncol(before)) {
    seed_disperse_snow$Bird[counter] <- rownames(before)[i]
    seed_disperse_snow$Plant[counter]<- colnames(before)[j]
    seed_disperse_snow$Visits[counter]<-before[i, j]

    counter <- counter + 1
  }
}

# get rid of zeros (no interactions,
#   can be calculated by finding missing interaction pairs)
#   and fix rownames change from subset()
seed_disperse_snow <- subset(seed_disperse_snow, Visits > 0)
rownames(seed_disperse_snow) <- NULL

## fix names in edgelist (row names (Birds) were fine,
##   mult word col names (Plants) messed up)
# replace dots with spaces
seed_disperse_snow$Plant <- gsub(pattern = ".", replacement = " ",
                                 x = seed_disperse_snow$Plant,
                                 fixed = TRUE)

# replace couples of instances with parentheses
#   fix Honeysuckle (common) & Honeysuckle (perfoliate)
seed_disperse_snow$Plant[seed_disperse$Plant == "Honeysuckle  common "] <- "Honeysuckle (common)"
seed_disperse_snow$Plant[seed_disperse$Plant == "Honeysuckle  perfoliate "] <- "Honeysuckle (perfoliate)"

# save in data folder
#usethis::use_data(seed_disperse, overwrite = TRUE)
save(seed_disperse_snow, file = "data-host/seed_disperse_snow.rda")
