test_that("as.network.ICON generic works", {
  # setup ICON/data.frame object
  NROW <- 25
  test_obj <- data.frame(x = as.integer(runif(NROW, 1, 10)),
                         y = as.integer(runif(NROW, 11, 20)),
                         attrib = rnorm(NROW))
  class(test_obj) <- c("ICON", "data.frame")
  
  # coerce to network object and get relabeling key-pair vector
  converted <- network::as.network(test_obj,
                                   directed = TRUE,
                                   return_relabeled = TRUE)
  converted_network <- converted$network
  converted_relabel <- converted$label
  
  # test if everything worked as expected
  expect_equal(network::get.edge.attribute(converted_network, "attrib"),
               test_obj$attrib)
  expect_true(network::get.network.attribute(converted_network, "n") <= 20)
  expect_equal(network::network.edgecount(converted_network),
               NROW)
  expect_equal(network::get.network.attribute(converted_network, "directed"),
               TRUE)
  expect_equal(network::get.network.attribute(converted_network, "bipartite"),
               FALSE)
  expect_equal(network::get.network.attribute(converted_network, "hyper"),
               FALSE)
  expect_equal(network::get.network.attribute(converted_network, "loops"),
               FALSE)
  
  names(converted_relabel) <- NULL
  expect_equal(converted_relabel,
               seq_len(length(converted_relabel)))
})
