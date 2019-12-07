# open file connection
fin <- file("data-raw/power_grid.gml", "r")

# skip lines with node labeling (don't care about labels for this dataset)
#   is there more efficient way to skip lines??
invisible(readLines(fin, n = 19768))

# read 6 lines at a time, edge-by-edge
LINES_PER_EDGE <- 5
TOTAL_EDGES <- 6594
power_grid <- data.frame(Node1 = character(TOTAL_EDGES),
                         Node2 = character(TOTAL_EDGES),
                         stringsAsFactors = FALSE)
counter <- 1
while (TRUE) {
  # read and check if EOF
  lines <- readLines(fin, n = LINES_PER_EDGE)
  if (length(lines) < LINES_PER_EDGE) break

  # isolate elements of each line in block
  splitter <- strsplit(lines, split = " ",
                       fixed = TRUE)

  # get last elements of lines 3, 4, 5 in block of 6
  node_1 <- splitter[[3]][length(splitter[[3]])]
  node_2 <- splitter[[4]][length(splitter[[4]])]

  # save in edge list format
  power_grid$Node1[counter] <- node_1
  power_grid$Node2[counter] <- node_2

  # update counter
  counter <- counter + 1
}

# close file connection
close(fin)

# save data as rda
usethis::use_data(power_grid, overwrite = TRUE)
