test_that("Testing Scaling function", {
  expect_equal(myscale(10,"log"),log(10)) #Calculation should be correct
  expect_error(myscale(c(4,5,6),"linear")) #"linear" is not a accept algorithm
})
