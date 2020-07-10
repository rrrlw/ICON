#####UTILITY FUNCTIONS#####
# extract only digits from string
only_digits <- function(chr) {
  gsub(pattern = "[^0-9]+", replacement = "", x = chr)
}

# extract edge list from file with fullerene data
extract_fullerene_edgelist <- function(filename) {
  # extract number of nodes from file name and calculate edges from that
  nodes <- as.numeric(only_digits(filename))
  edges <- nodes * 3 / 2
  
  ans <- data.frame(Node1 = character(edges),
                    Node2 = character(edges))
  counter <- 1
  
  # read file and store contents as edgelist
  curr_node1 <- " "
  curr_node2 <- " "
  con <- file(filename, open = "r")
  while (TRUE) {
    line <- readLines(con, n = 1)
    if (length(line) == 0) break
    
    # check if relevant line otherwise ignore
    if (startsWith(line, "    source")) {
      curr_node1 <- only_digits(line)
    } else if (startsWith(line, "    target")) {
      curr_node2 <- only_digits(line)
      
      # add to edge list (target always appears second)
      ans$Node1[counter] <- curr_node1
      ans$Node2[counter] <- curr_node2
      
      # reset and update counter
      curr_node1 <- " "
      curr_node2 <- " "
      counter <- counter + 1
    }
  }
  
  # close connection return edge list
  close(con)
  return(ans)
}

#####PROCESS & SAVE DATASETS#####
# can't iterate throughe each fullerene data file b/c var name becomes data loaded name

# C60
fullerene_c60 <- extract_fullerene_edgelist("data-raw/fullerene_c60.gml")
save(fullerene_c60, file = "data-host/fullerene_c60.rda")

# C180
fullerene_c180 <- extract_fullerene_edgelist("data-raw/fullerene_c180.gml")
save(fullerene_c180, file = "data-host/fullerene_c180.rda")

# C240
fullerene_c240 <- extract_fullerene_edgelist("data-raw/fullerene_c240.gml")
save(fullerene_c240, file = "data-host/fullerene_c240.rda")

# C260
fullerene_c260 <- extract_fullerene_edgelist("data-raw/fullerene_c260.gml")
save(fullerene_c260, file = "data-host/fullerene_c260.rda")

# C320
fullerene_c320 <- extract_fullerene_edgelist("data-raw/fullerene_c320.gml")
save(fullerene_c320, file = "data-host/fullerene_c320.rda")

# C500
fullerene_c500 <- extract_fullerene_edgelist("data-raw/fullerene_c500.gml")
save(fullerene_c500, file = "data-host/fullerene_c500.rda")

# C540
fullerene_c540 <- extract_fullerene_edgelist("data-raw/fullerene_c540.gml")
save(fullerene_c540, file = "data-host/fullerene_c540.rda")

# C720
fullerene_c720 <- extract_fullerene_edgelist("data-raw/fullerene_c720.gml")
save(fullerene_c720, file = "data-host/fullerene_c720.rda")

# C960
fullerene_c960 <- extract_fullerene_edgelist("data-raw/fullerene_c960.gml")
save(fullerene_c960, file = "data-host/fullerene_c960.rda")

# C1500
fullerene_c1500 <- extract_fullerene_edgelist("data-raw/fullerene_c1500.gml")
save(fullerene_c1500, file = "data-host/fullerene_c1500.rda")

# C2160
fullerene_c2160 <- extract_fullerene_edgelist("data-raw/fullerene_c2160.gml")
save(fullerene_c2160, file = "data-host/fullerene_c2160.rda")

# C2940
fullerene_c2940 <- extract_fullerene_edgelist("data-raw/fullerene_c2940.gml")
save(fullerene_c2940, file = "data-host/fullerene_c2940.rda")

# C3840
fullerene_c3840 <- extract_fullerene_edgelist("data-raw/fullerene_c3840.gml")
save(fullerene_c3840, file = "data-host/fullerene_c3840.rda")

# C4860
fullerene_c4860 <- extract_fullerene_edgelist("data-raw/fullerene_c4860.gml")
save(fullerene_c4860, file = "data-host/fullerene_c4860.rda")

# C6000
fullerene_c6000 <- extract_fullerene_edgelist("data-raw/fullerene_c6000.gml")
save(fullerene_c6000, file = "data-host/fullerene_c6000.rda")
