# S3 generic method for constructing an ICON object from data.frame
# INTERNAL USE ONLY - DO NOT EXPORT (WOULD NEED EXTENSIVE MODIFICATIONS)
as.ICON <- function(df) {
  class(df) <- c("ICON", "data.frame")
  return(df)
}

#' Coerce ICON objects into network objects
#' 
#' `ICON::get_data` returns data frames that also have class `ICON`. However,
#' conducting network analysis could require using another R package and its
#' associated network structure and class. The `as.network.ICON` method is an
#' S3 generic for the `network::as.network` method and the `ICON` class. It
#' allows `ICON` users to take full advantage of the functionality provided in
#' the `network` package using `network` objects.
#' 
#' @importFrom network as.network
#' @param x edgelist of classes `ICON` and `data.frame` to be coerced
#' @param directed `TRUE` if network has directed edges; `FALSE` otherwise
#' @param return_relabeled nodes are likely to be relabeled to fit naming
#'   conventions of the `network` package; if the names are important, setting
#'   `return_relabeled` to `TRUE` returns the resulting `network` object and
#'   a relabeling key-pair vector
#' @return if `return_relabeled` is `FALSE`, a `network` object; if
#'   `return_relabeled` is `TRUE`, a `list` containing the `network` object and
#'   the relabeling key-pair vector
#' @export
#' @examples
#' \dontrun{
#' # download dataset using ICON
#' get_data("aishihik_intensity")
#' 
#' # don't care about relabeled vertices
#' converted <- as.network(aishihik_intensity, directed = TRUE)
#' 
#' # we care about relabeled vertices
#' converted2 <- as.network(aishihik_intensity, directed = TRUE,
#'                         return_relabeled = TRUE)
#' 
#' # get the network
#' converted_network <- converted2$network
#' 
#' # get the relabeling key-pair vector
#' converted_relabel <- converted2$labels
#' }
# S3 generic method to convert ICON data frames to network class
# assume that if of class ICON, `x` is fine
as.network.ICON <- function(x, directed = FALSE,
                            return_relabeled = FALSE) {
  # confirm that `x` is of class ICON
  if (!("ICON" %in% class(x))) {
    stop(paste("Data must be of class ICON (acquired using",
               "ICON::get_data) for as.network.ICON to work.",
               "Data class =", class(x)))
  }
  
  # relabel vertices
  vertices <- as.character(unique(c(x[, 1], x[, 2])))
  relabeled <- seq_len(length(vertices))
  names(relabeled) <- vertices
  x[, 1] <- relabeled[as.character(x[, 1])]
  x[, 2] <- relabeled[as.character(x[, 2])]
  
  # count number of nodes for network initialization
  num_nodes <- length(vertices)
  
  # initialize network
  ans <- network::network.initialize(num_nodes,
                                     directed = directed)
  
  # add edges
  network::network.edgelist(x[, 1:2], ans)
  
  # add edge attributes
  attr_cols <- colnames(x)[-c(1, 2)]
  for (curr_attr in attr_cols) {
    network::set.edge.attribute(ans,
                                attrname = curr_attr,
                                value = x[, curr_attr])
  }
  
  # return network and (if requested) labels
  if (return_relabeled) {
    return(list(network = ans,
                labels = relabeled))
  } else {
    return(ans)
  }
}

# S3 generic method to convert ICON data frames to igraph class
#as.igraph.ICON <- function(x) {
#  
#}