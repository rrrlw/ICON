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

#####network_coauthors#####
#' Coauthorships in Network Science (2006)
#'
#' Undirected, weighted coauthorship network of scientists working on network
#' theory, compiled by M. Newman in May 2006. Network is formatted as an
#' edgelist. See the cited journal article below to understand how edge weight
#' was calculated. Each node is also associated with researcher names - these
#' have been omitted from the dataset loaded by this R pacakge. However,
#' this information can be found in the raw dataset at this package's GitHub
#' repo at <https://github.com/rrrlw/ICON> under the "data-raw" directory.
#'
#' On the webpage at the source URL (below), download the linked GML file
#' under the "Social Networks" heading associated with the bullet point
#' titled "Coauthorships in network science".
#'
#' Citation:
#' Newman MEJ. Finding community structure in networks using the eigenvectors
#' of matrices. Phys Rev E. 2006; 74: 036104.
#'
#' @format A data frame with 3 columns and 2742 rows:
#' \describe{
#'   \item{Node1}{one of the nodes defining the current edge}
#'   \item{Node2}{other node defining the current edge}
#'   \item{Weight}{edge weight}
#' }
#' @source \url{https://github.com/gephi/gephi/wiki/Datasets}
"network_coauthors"

#####les_miserables#####
#' Les Miserables (1993)
#'
#' Undirected, weighted coappearance network of characters in the novel Les
#' Miserables. Network is formatted as an edgelist. See the cited journal
#' article below to understand how edge weight was calculated. Each node is
#' also associated with character names - these have been omitted from the
#' dataset loaded by this R pacakge. However, this information can be found
#' in the raw dataset at this package's GitHub repo at
#' <https://github.com/rrrlw/ICON> under the "data-raw" directory.
#'
#' On the webpage at the source URL (below), download the linked GML file
#' under the "Social Networks" heading associated with the bullet point
#' titled "Les Miserables".
#'
#' Citation:
#' Knuth DE. The Stanford GraphBase: A Platform for Combinatorial Computing.
#' Reading, MA: Addison-Wesley; 1993.
#'
#' @format A data frame with 3 columns and 254 rows:
#' \describe{
#'   \item{Node1}{one of the nodes defining the current edge}
#'   \item{Node2}{other node defining the current edge}
#'   \item{Weight}{edge weight}
#' }
#' @source \url{https://github.com/gephi/gephi/wiki/Datasets}
"les_miserables"

#####internet_routers#####
#' Internet Routers (1993)
#'
#' Undirected, unweighted network that is a symmetrized snapshot of the
#' structure of the Internet at the level of autonomous systems, reconstructed
#' from BGP tables posted by the University of Oregon Route Views Project at
#' <http://routeviews.org>. This was created by Mark Newman in 2006.
#' Network is formatted as an edgelist. Each node is
#' also associated with numerical labels - these have been omitted from the
#' dataset loaded by this R pacakge. However, this information can be found
#' in the raw dataset at this package's GitHub repo at
#' <https://github.com/rrrlw/ICON> under the "data-raw" directory.
#'
#' On the webpage at the source URL (below), download the linked GML file
#' under the "Social Networks" heading associated with the bullet point
#' titled "Les Miserables".
#'
#' Citation:
#' Newman M. Internet (2006). University of Oregon Route Views Project.
#' <http://routeviews.org>
#'
#' @format A data frame with 2 columns and 48436 rows:
#' \describe{
#'   \item{Node1}{one of the nodes defining the current edge}
#'   \item{Node2}{other node defining the current edge}
#' }
#' @source \url{https://github.com/gephi/gephi/wiki/Datasets}
"internet_routers"
