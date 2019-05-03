context("Check binomial functions")

test_that("check bin_choose function", {
  expect_error(bin_choose(5, 6))
  expect_equal(bin_choose(10, 5), 252)
  expect_equal(bin_choose(1, 1), 1)
})

test_that("check bin_probability function", {
  expect_error(bin_probability(5, -5, 0.5))
  expect_equal(bin_probability(2, 5, 0.5), 0.3125)
  expect_error(bin_probability(2, 5, -5))
})

test_that("check bin_distribution function", {
  expect_equal(length(bin_distribution(5, 0.5)), 2)
  expect_equal(class(bin_distribution(5, 0.5)), c("bindis", "data.frame"))
  expect_error(bin_distribution(-5, 0.5))
})

test_that("check bin_cumulative function", {
  expect_equal(length(bin_cumulative(5, 0.5)), 3)
  expect_equal(class(bin_cumulative(5, 0.5)), c("bincum", "data.frame"))
  expect_error(bin_cumulative(-5, 0.5))
})
