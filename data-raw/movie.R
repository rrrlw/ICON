#####SETUP#####
library("stringr")
library("xml2")
library("magrittr")

#####UTILITY FUNCTION#####
# useful vars
NODE_PATTERN <- "<node id="
EDGE_PATTERN <- "<edge source="

# convert movie to edge list
movie_to_edgelist <- function(con_in) {
  # read file contents
  contents <- paste(readLines(con = con_in), collapse = "\n")
  
  # get number of nodes & edges; create data holders for them
  num_nodes <- str_count(contents, fixed(NODE_PATTERN))
  num_edges <- str_count(contents, fixed(EDGE_PATTERN))
  
  ans <- data.frame(Node1 = character(num_edges),
                    Node2 = character(num_edges))
  
  # pass through file once to build node lookup table and edge data frame
  xml_contents <- read_html(contents)
  xml_nodes <- xml_contents %>%
    xml_find_all("//node")
  xml_edges <- xml_contents %>%
    xml_find_all("//edge")
  
  # setup node_lookup
  node_lookup <- xml_nodes %>% xml_attr("label")
  names(node_lookup) <- xml_nodes %>% xml_attr("id")
  
  # setup edges
  ans$Node1 <- node_lookup[
    xml_edges %>% xml_attr("source")
  ]
  ans$Node2 <- node_lookup[
    xml_edges %>% xml_attr("target")
  ]
  
  return(ans)
}

#####CONVERT FORMAT#####
# setup file names and variable names
file_names <- dir("data-raw")
file_names <- file_names[startsWith(file_names, prefix = "movie_")]
var_names <- gsub(pattern = ".gexf", replacement = "",
                  x = file_names, fixed = TRUE)

counter <- 1
for (ind in seq_along(file_names)) {
  # setup file input
  curr_file <- file.path("data-raw", file_names[ind])
  curr_con <- file(curr_file, "r")
  
  # process and store
  assign(x = var_names[ind], value = movie_to_edgelist(curr_con))
  
  # file output
  output_file <- file.path("data-host", gsub(file_names[ind],
                                             pattern = "gexf",
                                             replacement = "rda"))
  save(list = var_names[ind],
       file = output_file)
  close(curr_con)
  
  # output in case of bug
  print(paste("DONE WITH", file_names[ind]))
}
