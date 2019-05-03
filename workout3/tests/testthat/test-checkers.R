context("Check checker functions")

test_that("check_prob values", {
  expect_true(check_prob(0.5))
  expect_error(check_prob(-5))
  expect_error(check_prob(5))
})

test_that("check_trials values", {
  expect_true(check_trials(5))
  expect_error(check_trials(-5))
  expect_error(check_trials('a'))
})

test_that("check_success values", {
  expect_true(check_success(5, 6))
  expect_error(check_success(-5, 0))
  expect_error(check_success('a', 9))
})
