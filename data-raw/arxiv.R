# read in file
arxiv_astroph <- read.table("data-raw/arxiv_astroph.txt",
                            header = FALSE,
                            col.names = c("Node1", "Node2"),
                            colClasses = c("character", "character"),
                            stringsAsFactors = FALSE,
                            skip = 4)
arxiv_condmat <- read.table("data-raw/arxiv_condmat.txt",
                            header = FALSE,
                            col.names = c("Node1", "Node2"),
                            colClasses = c("character", "character"),
                            stringsAsFactors = FALSE,
                            skip = 4)
arxiv_grqc <- read.table("data-raw/arxiv_grqc.txt",
                         header = FALSE,
                         col.names = c("Node1", "Node2"),
                         colClasses = c("character", "character"),
                         stringsAsFactors = FALSE,
                         skip = 4)
arxiv_hepph <- read.table("data-raw/arxiv_hepph.txt",
                          header = FALSE,
                          col.names = c("Node1", "Node2"),
                          colClasses = c("character", "character"),
                          stringsAsFactors = FALSE,
                          skip = 4)
arxiv_hepth <- read.table("data-raw/arxiv_hepth.txt",
                          header = FALSE,
                          col.names = c("Node1", "Node2"),
                          colClasses = c("character", "character"),
                          stringsAsFactors = FALSE,
                          skip = 4)

# save as rda
save(arxiv_astroph, file = "data-host/arxiv_astroph.rda")
save(arxiv_condmat, file = "data-host/arxiv_condmat.rda")
save(arxiv_grqc, file = "data-host/arxiv_grqc.rda")
save(arxiv_hepph, file = "data-host/arxiv_hepph.rda")
save(arxiv_hepth, file = "data-host/arxiv_hepth.rda")
