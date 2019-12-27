start_line <- 18589
end_line <- 20964
num_edges <- end_line - start_line + 1

# setup connection and data storage
con <- file("data-raw/diseasome.gexf", "r")
diseasome_shared <- data.frame(Node1 = character(num_edges),
                               Node2 = character(num_edges),
                               Weight = integer(num_edges),
                               stringsAsFactors = FALSE)

# read data
invisible(readLines(con, n = start_line - 1))  # skip irrelevant data
for (i in 1:num_edges) {
  # read and eval current line
  curr <- readLines(con, n = 1)

  indices <- unlist(gregexpr(pattern = "\"", curr))

  if (length(indices) != 6) stop("problem with input data")

  curr_node1 <- substr(curr, indices[1] + 1, indices[2] - 1)
  curr_node2 <- substr(curr, indices[3] + 1, indices[4] - 1)
  curr_weight<- substr(curr, indices[5] + 1, indices[6] - 1)

  diseasome_shared$Node1[i] <- curr_node1
  diseasome_shared$Node2[i] <- curr_node2
  diseasome_shared$Weight[i]<- as.integer(curr_weight)
}

close(con)

# save as rda
save(diseasome_shared, file = "data-host/diseasome_shared.Rda")
