test_that("download errors are caught", {
  # expect error if variable of class character is not passed
  expect_error(get_data(5))
  
  # expect error if dataset is not one available in ICON
  expect_error(get_data("ches"))
  
  # expect error if invalid destination directory is selected
  expect_error(get_data("aishihik_intensity", destdir = "fake-directory"))
})

test_that("s3 generic errors are caught", {
  # make data frame that does not have ICON as a class
  test_obj <- data.frame(x = 1:5, y = 6:10)
  
  # expect error since `test_obj` is not of class `ICON`
  expect_error(as.network.ICON(test_obj))
})
