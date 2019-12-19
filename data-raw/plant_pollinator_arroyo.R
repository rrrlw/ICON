# read in adjacency matrix
adj_matrix <- read.table("data-raw/plant_pollinator_arroyo.txt",
                         stringsAsFactors = FALSE,
                         header = FALSE)

# convert to edgelist
NUM_EDGES <- sum(adj_matrix)
plant_pollinator_arroyo <- data.frame(Node1 = integer(NUM_EDGES),
                                      Node2 = integer(NUM_EDGES))
counter <- 1
for (i in 1:nrow(adj_matrix)) {
  for (j in 1:ncol(adj_matrix)) {
    if (adj_matrix[i,j] == 1) {
      plant_pollinator_arroyo$Node1[counter] <- rownames(adj_matrix)[i]
      plant_pollinator_arroyo$Node2[counter] <- colnames(adj_matrix)[j]

      counter <- counter + 1
    }
  }
}

# save
save(plant_pollinator_arroyo,
     file = "data-host/plant_pollinator_arroyo.rda")
