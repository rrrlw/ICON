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
#' under the "Web and Internet" heading associated with the bullet point
#' titled "Internet".
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

#####karate_club#####
#' Zachary's Karate Club (1977)
#'
#' Undirected, unweighted social network of friendships between 34 members of
#' a karate club at a U.S. univesity in the 1970s.
#' Network is formatted as an edgelist. Node labels were not provided in the
#' raw dataset, which can be found at this package's GitHub repo at
#' <https://github.com/rrrlw/ICON> under the "data-raw" directory.
#'
#' On the webpage at the source URL (below), download the linked GML file
#' under the "Social Networks" heading associated with the bullet point
#' titled "Zachary's Karate Club".
#'
#' Citation:
#' Zachary WW. An information flow model for conflict and fission in small
#' groups. Journal of Anthropological Research. 1977; 33: 452-473.
#'
#' @format A data frame with 2 columns and 78 rows:
#' \describe{
#'   \item{Node1}{one of the nodes defining the current edge}
#'   \item{Node2}{other node defining the current edge}
#' }
#' @source \url{https://github.com/gephi/gephi/wiki/Datasets}
"karate_club"

#####power_grid#####
#' Power grid (1998)
#'
#' Undirected, unweighted network representing topology of the Western
#' States Power Grid of the United States. Data compiled by D. Watts and
#' S. Strogatz. Network is formatted as an edgelist. Node labels were not
#' provided in the raw dataset, which can be found at this package's GitHub
#' repo at <https://github.com/rrrlw/ICON> under the "data-raw" directory.
#'
#' On the webpage at the source URL (below), download the linked GML file
#' under the "Infrastructure Networks" heading associated with the bullet point
#' titled "Power grid".
#'
#' Citation:
#' Watts DJ, Strogatz SH. Collective dynamics of 'small-world' networks.
#' Nature. 1998; 393: 440-442.
#'
#' @format A data frame with 2 columns and 6594 rows:
#' \describe{
#'   \item{Node1}{one of the nodes defining the current edge}
#'   \item{Node2}{other node defining the current edge}
#' }
#' @source \url{https://github.com/gephi/gephi/wiki/Datasets}
"power_grid"

#####word_adj#####
#' Word adjacencies (2006)
#'
#' Undirected, unweighted adjacency network of common adjectives and nouns
#' in the novel David Copperfield by Charles Dickens.
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at this package's GitHub
#' repo at <https://github.com/rrrlw/ICON> under the "data-raw" directory.
#'
#' On the webpage at the source URL (below), download the linked GML file
#' under the "Other Networks" heading associated with the bullet point
#' titled "Word adjacencies".
#'
#' Citation:
#' Newman MEJ. Finding community structure in networks using the eigenvectors
#' of matrices. Phys Rev E. 2006; 74: 036104.
#'
#' @format A data frame with 2 columns and 425 rows:
#' \describe{
#'   \item{Node1}{one of the nodes defining the current edge}
#'   \item{Node2}{other node defining the current edge}
#' }
#' @source \url{https://github.com/gephi/gephi/wiki/Datasets}
"word_adj"

#####terrorist_pairs#####
#' Terrorist network (2002)
#'
#' Undirected, unweighted adjacency network of terrorists.
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the ICON database.
#'
#' On the webpage at the source URL (below), download the linked folder
#' under the "Terrorist associations" heading (4th in list).
#'
#' Citation:
#' Krebs V. Mapping networks of terrorist cells. Connections. 2002; 24: 43-52.
#'
#' @format A data frame with 2 columns and 304 rows:
#' \describe{
#'   \item{Node1}{one of the nodes defining the current edge}
#'   \item{Node2}{other node defining the current edge}
#' }
#' @source \url{http://tuvalu.santafe.edu/~aaronc/datacode.htm}
"terrorist_pairs"

#####aishihik_intensity#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 78 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Intensity}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"aishihik_intensity"

#####aishihik_prevalence#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 78 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Prevalence}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"aishihik_prevalence"

#####coldlake_intensity#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 91 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Intensity}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"coldlake_intensity"

#####coldlake_prevalence#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 91 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Prevalence}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"coldlake_prevalence"

#####huron_prevalence#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 316 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Prevalence}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"huron_prevalence"

#####lakewoods_prevalence#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 384 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Prevalence}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"lakewoods_prevalence"

#####mcgregor_intensity#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 114 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Intensity}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"mcgregor_intensity"

#####mcgregor_prevalence#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 114 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Prevalence}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"mcgregor_prevalence"

#####parsnip_intensity#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 158 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Intensity}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"parsnip_intensity"

#####parsnip_prevalence#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 158 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Prevalence}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"parsnip_prevalence"

#####smallwood_intensity#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 53 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Intensity}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"smallwood_intensity"

#####smallwood_prevalence#####
#' Host-parasite web (1955-1983)
#'
#' Undirected, weighted, bipartite adjacency network of Canadian freshwater
#' fish (hosts) and their metazoan parasites (parasites). The name of the
#' lake to which this dataset corresponds is the first word of the dataset
#' (text prior to the underscore).
#' Network is formatted as an edgelist. Node labels (words) were
#' provided in the raw dataset, which can be found at the source URL (below).
#'
#' On the webpage at the source URL (below), select the appropriate named link
#' under the "Data files" heading.
#'
#' Citation:
#' Arai HP, Mudry DR. Protozoan and metazoan parasites of fishes from the
#' headwaters of the Parsip and McGregor Rivers, British Columbia: a study
#' of possible parasite transfaunations. Canadian Journal of Fisheries and
#' Aquatic Sciences. 1983; 40: 1676-1684.
#'
#' Arthur JR, Margolic L, Arai HP. Parasites of fishes of Aishihik and
#' Stevens Lakes, Yukon Territory, and potential consequences of their
#' interlake transfer through a proposed water diversion for hydroelectrical
#' purposes. Journal of the Fisheries Research Board of Canada. 1976; 33:
#' 2489-2499.
#'
#' Bangham RV. Studies on fish parasites of Lake Huron and Manitoulin Island.
#' American Midland Naturalist. 1955; 53: 184-194.
#'
#' Chinniah VC, Threlfall W. Metazoan parasites of fish from the Smallwood
#' Reservoir, Labrador, Canada. Journal of Fish Biology. 1978; 13: 203-213.
#'
#' Dechtiar AO. Parasites of fish from Lake of the Woods, Ontario. Journal of
#' the Fisheries Research Board of Canada. 1972; 29: 275-283.
#'
#' Leong TS, Holmes JC. Communities of metazoan parasites in open water fishes
#' of Cold Lake, Alberta. Journal of Fish Biology. 1981; 18: 693-713.
#'
#' @format A data frame with 3 columns and 53 rows:
#' \describe{
#'   \item{Fish}{Canadian freshwater fish host}
#'   \item{Parasite}{Metazoan parasite}
#'   \item{Prevalence}{Edge weight, see source URL and citations for definition}
#' }
#' @source \url{https://www.nceas.ucsb.edu/interactionweb/html/canadian_fish.html}
"smallwood_prevalence"
