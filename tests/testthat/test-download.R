test_that("download from host works", {
  # don't use internet connection on CRAN
  skip_on_cran()
  
  # download dataset (small: < 1 KB)
  ICON::get_data("aishihik_intensity", envir = .GlobalEnv)
  
  # make sure download went fine
  expect_equal(nrow(aishihik_intensity), 78)
  expect_equal(ncol(aishihik_intensity), 3)
  expect_equal(colnames(aishihik_intensity),
               c("Fish", "Parasite", "Intensity"))
  expect_equal(class(aishihik_intensity$Fish), "character")
  expect_equal(class(aishihik_intensity$Parasite), "character")
  expect_equal(class(aishihik_intensity$Intensity), "numeric")
  expect_equal(class(aishihik_intensity), c("ICON", "data.frame"))
})
