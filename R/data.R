#####chess#####
#' Kaggle Chess Players (2010)
#'
#' A directed, signed network (edgelist) among chess players (nodes) giving
#' the chess match outcomes (edges), for game-by-game results among the
#' world's top chess players. The direction of edge (i,j) denotes white
#' player (i) and black player (j). Each edge is timestamped (approximate).
#' Edge sign is +1 for a win by white, 0 for draw, and -1 for a win by black.
#' The dataset is anonymous: the identity of the players in unknown and
#' timestamps are approximate.
#'
#' Citation:
#' "Chess ratings- Elo versus the Rest of the World." Kaggle (2010).
#'
#' @format A data frame with 65053 games and 4 variables:
#' \describe{
#'   \item{White}{ID of white player}
#'   \item{Black}{ID of black player}
#'   \item{Result}{+1 for white win; 0 for draw; -1 for black win}
#'   \item{Timestamp}{one month precision, may be shifted towards future by
#'     unknown amount}
#' }
#' @source \url{https://www.kaggle.com/c/chess/data}
"chess"

#####seed_disperse#####
#' Seed-disperser web (1988)
#'
#' A bipartite network of bird and plant interactions. Data was recorded
#' by counting number of visits of each bird species to each plant species.
#' The original data format (interaction frequency matrix) has been
#' converted to an edgelist of interaction counts.
#'
#' Of note, pairs with zero interactions have been omitted. As a result, a
#' small subset of birds and plants that were in the original matrix are
#' not present in this dataset (i.e. birds that did not interact with any
#' plants and vice versa). Additionally, only the common names of the bird
#' and plant species are included. For the scientific names (genus and
#' species), please see the original data source (link below).
#'
#' Citation:
#' Snow BK, Snow DW (1988). Birds and Berries. Calton, England.
#'
#' @format A data frame with 3 columns and 211 rows:
#' \describe{
#'   \item{Bird}{common name of bird speces}
#'   \item{Plant}{common name of plant species}
#'   \item{Visits}{number of times the bird species was observed to
#'   interact with the plant species}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/snow_snow_1988.htm}
"seed_disperse"

#####yeast_ppi#####
#' Yeast Interactome (2007)
#'
#' Undirected, unweighted network of protein-protein interactions in
#' Saccharamyces cerevisiae (budding yeast), measured by co-complex
#' associations identified by high-throughput affinity purification
#' and mass spectrometry (AP/MS). Network is formatted as an edgelist.
#'
#' On the webpage at the source URL (below), select the "Combined-AP/MS"
#' link to download the original, raw dataset.
#'
#' Citation:
#' Collins SR, Kemmeren P, Zhao XC, et al. Toward a comprehensive atlas
#' of the physical interactome of Saccharomyces cerevisiae. Mol Cell
#' Proteomics. 2007; 6(3): 439-450.
#'
#' @format A data frame with 2 columns and 9070 rows:
#' \describe{
#'   \item{Protein1}{first protein in protein-protein interaction}
#'   \item{Protein2}{second protein in protein-protein interaction}
#' }
#' @source \url{http://interactome.dfci.harvard.edu/S_cerevisiae/index.php?page=download}
"yeast_ppi"
