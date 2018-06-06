context("test-mintest.R")

test_that("minimal R test works", {
  expect_equal(mintest(), "nothing")
})

test_that("minimal gdalinfo test works",
          expect_true(grepl("^GDAL", gdalinfotest()))
)
