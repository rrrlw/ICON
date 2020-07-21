# read file
r_dep <- read.csv("data-raw/r_dep.csv",
                  stringsAsFactors = FALSE)[, 2:3]
names(r_dep) <- c("From", "To")

# save in data-host folder
save(r_dep, file = "data-host/r_dep.rda")