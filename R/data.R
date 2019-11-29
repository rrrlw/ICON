#####CHESS#####
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
