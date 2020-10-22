# S3 generic method for constructing an ICON object from data.frame
# INTERNAL USE ONLY - DO NOT EXPORT (WOULD NEED EXTENSIVE MODIFICATIONS)
as.ICON <- function(df) {
  class(df) <- c("ICON", "data.frame")
  return(df)
}
