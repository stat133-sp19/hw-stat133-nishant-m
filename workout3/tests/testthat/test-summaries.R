context("Check summary measures functions")

test_that("aux_mean checks", {
  expect_equal(aux_mean(50, 0.1), 5)
  expect_equal(aux_mean(0, 0), 0)
  expect_false(aux_mean(5, 0.3) == 2)
})

test_that("aux_variance checks", {
  expect_equal(aux_variance(10, 0.3), 2.1)
  expect_equal(aux_variance(0, 0), 0)
  expect_false(aux_variance(5, 0.3) == 2)
})

test_that("aux_mode checks", {
  expect_equal(aux_mode(10, 0.3), 3)
  expect_equal(aux_mode(0, 0), 0)
  expect_false(aux_mode(5, 0.3) == 1)
})

test_that("aux_skewness checks", {
  expect_true(aux_skewness(10, 0.3) - 0.2760262 < 0.1)
  expect_false(aux_skewness(10, 0.3) == 0.2760262)
  expect_true(aux_skewness(1, 1) == -Inf)
})

test_that("aux_kurtosis checks", {
  expect_true(aux_kurtosis(10, 0.3) + 0.1238095 < 0.1)
  expect_false(aux_kurtosis(10, 0.3) == 0)
  expect_true(aux_skewness(0, 0) == Inf)
})
