# interaction matrix (CSV)
before <- read.csv("data-raw/seed_disperse.csv",
                   row.names = 1,
                   header = TRUE)

# structure to store edgelist
num_vals <- nrow(before) * ncol(before)
seed_disperse <- data.frame(Bird = character(num_vals),
                            Plant= character(num_vals),
                            Visits = integer(num_vals),
                            stringsAsFactors = FALSE)

# convert interaction matrix to edgelist
counter <- 1
for (i in 1:nrow(before)) {
  for (j in 1:ncol(before)) {
    seed_disperse$Bird[counter] <- rownames(before)[i]
    seed_disperse$Plant[counter]<- colnames(before)[j]
    seed_disperse$Visits[counter]<-before[i, j]

    counter <- counter + 1
  }
}

# get rid of zeros (no interactions,
#   can be calculated by finding missing interaction pairs)
#   and fix rownames change from subset()
seed_disperse <- subset(seed_disperse, Visits > 0)
rownames(seed_disperse) <- NULL

## fix names in edgelist (row names (Birds) were fine,
##   mult word col names (Plants) messed up)
# replace dots with spaces
seed_disperse$Plant <- gsub(pattern = ".", replacement = " ",
                    x = seed_disperse$Plant, fixed = TRUE)

# replace couples of instances with parentheses
#   fix Honeysuckle (common) & Honeysuckle (perfoliate)
seed_disperse$Plant[seed_disperse$Plant == "Honeysuckle  common "] <- "Honeysuckle (common)"
seed_disperse$Plant[seed_disperse$Plant == "Honeysuckle  perfoliate "] <- "Honeysuckle (perfoliate)"

# save in data folder
#usethis::use_data(seed_disperse, overwrite = TRUE)
save(seed_disperse, file = "data-host/seed_disperse.rda")
