# read in adjacency matrix
adj_matrix <- read.table("data-raw/plant_pollinator_bh.txt",
                         stringsAsFactors = FALSE,
                         header = FALSE)

# convert to edgelist
NUM_EDGES <- nrow(adj_matrix) * ncol(adj_matrix) - length(which(adj_matrix == 0))
plant_pollinator_bh <- data.frame(Node1 = integer(NUM_EDGES),
                                  Node2 = integer(NUM_EDGES),
                                  Weight= integer(NUM_EDGES))
counter <- 1
for (i in 1:nrow(adj_matrix)) {
  for (j in 1:ncol(adj_matrix)) {
    if (adj_matrix[i,j] > 0) {
      plant_pollinator_bh$Node1[counter] <- rownames(adj_matrix)[i]
      plant_pollinator_bh$Node2[counter] <- colnames(adj_matrix)[j]
      plant_pollinator_bh$Weight[counter]<- adj_matrix[i, j]

      counter <- counter + 1
    }
  }
}

# save
save(plant_pollinator_bh,
     file = "data-host/plant_pollinator_bh.rda")
