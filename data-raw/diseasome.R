start_line <- 17039
end_line <- 18588
num_edges <- end_line - start_line + 1

# read in data
con <- file("data-raw/diseasome.gexf", "r")
diseasome <- data.frame(Node1 = character(num_edges),
                        Node2 = character(num_edges),
                        stringsAsFactors = FALSE)
invisible(readLines(con, n = start_line - 1))  # skip irrelevant lines
for (i in 1:num_edges) {
  # input and eval current line
  curr <- readLines(con, n = 1)

  indices <- unlist(gregexpr(pattern = "\"", curr))
  if (length(indices) != 4) stop("Problem with input data")

  curr_node1 <- substr(curr, indices[1] + 1, indices[2] - 1)
  curr_node2 <- substr(curr, indices[3] + 1, indices[4] - 1)

  diseasome$Node1[i] <- curr_node1
  diseasome$Node2[i] <- curr_node2
}

close(con)

# save as rda
save(diseasome, file = "data-host/diseasome.rda")
