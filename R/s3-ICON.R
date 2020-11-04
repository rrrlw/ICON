# constructor for ICON S3 class
# accepts data.frame only
new_ICON <- function(x) {
  # check type
  if (!is.data.frame(x)) {
    stop(paste("objects of class ICON must also be of class data.frame, passed",
               "object has class:", class(x)))
  }
  
  structure(x, class = c("ICON", "data.frame"))
}

# validator for ICON S3 class
validate_ICON <- function(x) {
  # at least 2 columns in edgelist (more is fine for edge attributes)
  if (ncol(x) < 2) {
    stop(paste("ICON objects must have at least 2 columns to represent",
               "an edge list, passed object has", ncol(x), "columns"))
  }
  
  # at least 1 row
  if (nrow(x) == 0) {
    stop(paste("ICON objects must have at least 1 row to represent",
               "a valid complex network, passed object has", nrow(x),
               "rows"))
  }
  
  # no missing values
  if (!all(stats::complete.cases(x))) {
    stop(paste("ICON objects cannot have missing values, passed object",
               "has", sum(!stats::complete.cases(x)), "missing values"))
  }
    
  x
}

# helper (exported) for ICON S3 class
ICON <- function(x) {
  # coerce to data.frame if necessary and possible
  if (!is.data.frame(x)) x <- as.data.frame(x)
  
  validate_ICON(new_ICON(x))
}

# S3 generic method for print
print.ICON <- function(x, ...) {
  # make sure x is also a data.frame
  if (!is.data.frame(x)) {
    stop("ICON objects must also have class data.frame, passed object does not")
  }
  
  # print summary
  cat("# ICON complex network:", nrow(x), "edges and", ncol(x) - 2, "edge attributes")
  
  # print first 5 rows
}
