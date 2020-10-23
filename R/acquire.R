#' Download and Load Complex Network Datasets
#'
#' Downloads the binary complex network dataset (rda format), then loads
#' the dataset into the R environment, and deletes the downloaded file
#' from the user's file system.
#'
#' @param dataset_name dataset variable name (corresponds to var_name in ICON_data)
#' @param destdir location to temporarily download binary file
#' @param envir environment to which data should be loaded
#'
#' @importFrom utils download.file
#' @export
#' @examples
#' \dontrun{
#' # load single dataset
#' get_data("chess")
#'
#' # load multiple datasets
#' get_data(c("karate_club", "word_adj"))
#'
#' # fail to load dataset not in the ICON R package
#' get_data("not_a_dataset")
#' }
get_data <- function(dataset_name, destdir = ".",
                     envir = parent.frame()) {
  # confirm dataset_name is a dataset made available in ICON
  if (class(dataset_name) != "character") {
    stop("dataset_name parameter must be of class character")
  }
  if (sum(dataset_name %in% ICON::ICON_data$Var_name) < length(dataset_name)) {
    wrong_data <- dataset_name[!(dataset_name %in% ICON_data$Var_name)]
    stop(paste0(wrong_data, " not in ICON data package."))
  }

  # confirm that destfile is a valid location
  if (!dir.exists(destdir)) {
    stop("destfile parameter must be a valid directory")
  }

  # download, read, delete file(s)
  TEMPLATE_URL <- "https://github.com/rrrlw/ICON/raw/master/data-host/DATASET_NAME.rda"
  vapply(X = dataset_name,
         FUN.VALUE = logical(1),
         FUN = function(name) {
           # download file
           curr_url <- gsub(pattern = "DATASET_NAME",
                            replacement = name,
                            x = TEMPLATE_URL,
                            fixed = TRUE)

           file_name <- file.path(destdir, paste(name, ".rda", sep = ""))
           utils::download.file(curr_url,
                                destfile = file_name,
                                quiet = TRUE)

           # load it into global environment
           base::load(file_name, envir = envir)
           
           # add "ICON" class to loaded data frame
           assign(name,
                  do.call("as.ICON", list(as.name(name))),
                  envir = envir)

           # delete downloaded file to keep side effects minimal
           base::file.remove(file_name)
         }
        ) -> tmp

  # ending messages
  cat("DATASET(S)", dataset_name, "LOADED")
}
