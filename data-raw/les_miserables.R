# open file connection
fin <- file("data-raw/les_miserables.gml", "r")

# skip lines with node labeling (don't care about labels for this dataset)
#   is there more efficient way to skip lines??
invisible(readLines(fin, n = 388))

# read 6 lines at a time, edge-by-edge
LINES_PER_EDGE <- 6
TOTAL_EDGES <- 254
les_miserables <- data.frame(Node1 = character(TOTAL_EDGES),
                             Node2 = character(TOTAL_EDGES),
                             Weight= numeric(TOTAL_EDGES),
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
  weight <- splitter[[5]][length(splitter[[5]])]

  # save in edge list format
  les_miserables$Node1[counter] <- node_1
  les_miserables$Node2[counter] <- node_2
  les_miserables$Weight[counter]<- as.numeric(weight)

  # update counter
  counter <- counter + 1
}

# close file connection
close(fin)

# save data as rda
usethis::use_data(les_miserables, overwrite = TRUE)
