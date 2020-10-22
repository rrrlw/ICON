capitalize <- function(chr) {
  first_chr <- toupper(substr(chr, 1, 1))
  rest_chr <- substr(chr, 2, nchar(chr))
  return(paste0(first_chr, rest_chr))
}

only_digits_dot <- function(chr) {
  gsub(pattern = "[^0-9\\.]+",
       replacement = "",
       x = chr)
}

only_digits <- function(chr) {
  gsub(pattern = "[^0-9]+",
       replacement = "",
       x = chr)
}

# count number of edges in this GML file
num_edges_gml <- function(filename) {
  # loop is slow, but don't want to overload system
  # so read one line at a time
  count <- 0
  con <- file(filename, open = "r")
  while (TRUE) {
    line <- readLines(con, n = 1)
    if (length(line) == 0) break
    
    if (startsWith(line, "  edge")) count <- count + 1
  }
  close(con)
  
  return(count)
}

# function to convert GML to CSV edgelist
gml_to_edgelist <- function(filename) {
  # read thru file once and get number of edges
  edges <- num_edges_gml(filename)
  
  ans <- data.frame(From = character(edges),
                    To = character(edges),
                    Count = integer(edges),
                    Bid = numeric(edges),
                    stringsAsFactors = FALSE)
  
  counter <- 1
  curr_from <- ""
  curr_to <- ""
  curr_count <- ""
  curr_pct <- ""
  con <- file(filename, open = "r")
  while (TRUE) {
    line <- readLines(con, n = 1)
    if (length(line) == 0) break
    
    # check if relevant line otherwise ignore
    if (startsWith(line, "    source")) {
      curr_from <- only_digits_dot(line)
    } else if (startsWith(line, "    target")) {
      curr_to <- only_digits_dot(line)
    } else if (startsWith(line, "    count")) {
      curr_count <- as.integer(only_digits_dot(line))
    } else if (startsWith(line, "    pctSingleBid")) {
      curr_pct <- as.numeric(only_digits_dot(line))
      
      # add to edge list (pctSingleBid always appears last)
      ans$From[counter] <- curr_from
      ans$To[counter] <- curr_to
      ans$Count[counter] <- curr_count
      ans$Bid[counter] <- curr_pct
      
      # reset curr_* vars and update counter
      curr_from <- ""
      curr_to <- ""
      curr_count <- ""
      curr_pct <- ""
      counter <- counter + 1
    }
  }
  
  close(con)
  return(ans)
}

# countries and abbreviations
# source: https://ted.europa.eu/TED/browse/browseByPD.do
countries <- c("austria", "belgium", "bulgaria",
               "cyprus", "czechia", "germany",
               "denmark", "estonia", "spain",
               "finland", "france", "georgia",
               "hungary", "ireland", "italy",
               "lithuania", "latvia", "netherlands",
               "norway", "poland", "portugal",
               "romania", "sweden", "slovenia",
               "slovakia", "uk")
names(countries) <- c("AT", "BE", "BG",
                      "CY", "CZ", "DE",
                      "DK", "EE", "ES",
                      "FI", "FR", "GR",
                      "HU", "IE", "IT",
                      "LT", "LV", "NL",
                      "NO", "PL", "PT",
                      "RO", "SE", "SI",
                      "SK", "UK")

combos <- expand.grid(names(countries), 2008:2016)
partname <- apply(combos, 1, paste, collapse = "_")
filenames <- paste(partname, "gml", sep = ".")

data_info <- data.frame(Var_name = character(length(filenames)),
                        Edges = integer(length(filenames)),
                        Directed = 1L,
                        Weighted = 1L,
                        Name = character(length(filenames)),
                        Year = integer(length(filenames)),
                        Source = "https://zenodo.org/record/3627216",
                        Description = paste(
                          "A set of bipartite temporal networks representing",
                          "public EU procurement contracts 2008-2016 within",
                          "each EU member nation. Nodes are buyers (public",
                          "institutions such as a ministry or city hall) and",
                          "sellers of services (a private firm). Edges are",
                          "annotated with the volume of contracts between the",
                          "issuer and winner in the given year."),
                        Citation = paste("Wachs J, Fazekas M, Kertesz J.",
                                         "Corruption risk in contracting",
                                         "markets: A network science",
                                         "perspective. International Journal",
                                         "of Data Science and Analytics. 2020.",
                                         "doi: 10.1007/s41060-019-00204-1."))

# go through each file and convert
gen_name <- "procure"
gen_ext <- ".rda"
counter <- 1
for (curr_file in filenames) {
  # components of output file name
  curr_country <- countries[substr(curr_file, 1, 2)]
  curr_year <- only_digits(curr_file)
  
  # construct output file name
  curr_outname <- paste(gen_name, curr_country, curr_year,
                        sep = "_")
  
  # edgelist for current file
  assign(curr_outname,
         gml_to_edgelist(file.path("data-raw", curr_file)))
  
  # save file
  save(list = curr_outname,
       file = file.path("data-host", paste0(curr_outname, ".rda")))
  
  # store info for later use in "data-raw/ICON_data.csv"
  data_info$Var_name[counter] <- curr_outname
  data_info$Edges[counter] <- do.call("nrow", list(as.name(curr_outname)))
  data_info$Name[counter] <- paste(capitalize(curr_country), curr_year,
                                   "Procurement Market")
  data_info$Year[counter] <- curr_year
  
  # update and clean up
  cat(counter, "DONE WITH", curr_outname, "\n")
  counter <- counter + 1
  rm(list = curr_outname)
}
