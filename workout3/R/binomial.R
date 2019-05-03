# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

library(ggplot2)

### 1.1 - PRIVATE CHECKER FUNCTIONS
# private function check_prob to make sure probability is valid
check_prob = function(prob) {
  if(prob < 0 | prob > 1 | !is.numeric(prob)) {
    stop("invalid prob value")
  }
  return(TRUE)
}

# private function check_trials to test if trials is a valid value for # of trials
check_trials = function(trials) {
  if(trials < 0 | !is.numeric(trials)) {
    stop("invalid trials value")
  }
  return(TRUE)
}

# private function check_success to test if success values are valid compared to trials
check_success = function(success, trials) {
  if(!is.numeric(success) | any(success) < 0) {
    stop("invalid success value")
  }
  if(any(success) > trials) {
    stop("success cannot be greater than trials")
  }
  return(TRUE)
}

### 1.2 - PRIVATE AUXILIARY FUNCTIONS
# aux mean function, mean = np
aux_mean = function(trials, prob) {
  val = trials * prob
  return(val)
}

# aux variance function, var = np(1-p)
aux_variance = function(trials, prob) {
  val = trials * prob * (1 - prob)
  return(val)
}

# aux mode function, mode = round(np + p)
aux_mode = function(trials, prob) {
  val = round(trials * prob + prob)
  return(val)
}

# aux skewness function, skewness = 1-2p / sqrt(variance(n, p))
aux_skewness = function(trials, prob) {
  val = (1 - 2 * prob) / (sqrt(aux_variance(trials, prob)))
  return(val)
}

# aux kurtosis function, kurtosis =
aux_kurtosis = function(trials, prob) {
  val = (1- 6 * prob * (1 - prob)) / aux_variance(trials, prob)
  return(val)
}

### 1.3 - FUNCTION BIN_CHOOSE()
#' @title bin choose
#' @description calculates the number of combinations in which k success can occur in n trials
#' @param n number of trials
#' @param k number of successes
#' @return computed number of combinations
bin_choose = function(n, k) {
  if(k > n) {
    stop("k cannot be greater than n")
  }
  val = factorial(n) / (factorial(k) * (factorial(n-k)))
  return(val)
}

### 1.4 - FUNCTION BIN_PROBABILITY()
#' @title binomial probability
#' @description calculates binomial probability
#' @param success number of successes
#' @param trials number of trials
#' @param prob probabilities
#' @return binomial probability
bin_probability = function(success, trials, prob) {
  check_trials(trials)
  check_prob(prob)
  check_success(success, trials)
  val = bin_choose(trials, success) * (prob ^ success) * (1 - prob) ^ (trials - success)
  return(val)
}

### 1.5 - FUNCTION BIN_DISTRIBUTION()
#' @title binomial distribution
#' @description calculates binomial distribution
#' @param trials number of trials
#' @param prob probabilities
#' @return binomial distribution
bin_distribution = function(trials, prob) {
  success_vals = c(0:trials)
  probabilities = bin_probability(0:trials, trials, prob)
  df = data.frame("success" = success_vals, "probability" = probabilities)
  class(df) = c("bindis", "data.frame")
  return(df)
}

# NEED HELP??
#plot.bindis(dat) {
#ggplot(data = dat, aes(x = dat$successes, y = dat$probabilities)) +
#  geom_bar()
#}
#a = bin_distribution(trials = 5, prob = 0.5)
#plot(a)

### 1.6 - FUNCTION BIN_CUMULATIVE()
#' @title cumulative binomial probabilities
#' @description calculates cumulative binomial probabilities
#' @param trials number of trials
#' @param prob probabilities
#' @return data frame of cumulative binomial probabilities
bin_cumulative = function(trials, prob) {
  success_vals = c(0:trials)
  probabilities = bin_probability(0:trials, trials, prob)
  cumulative = c(0:trials)
  for(i in 0:(trials+1)) {
    cumulative[i] = sum(bin_probability(0:(i-1), trials, prob))
  }
  df = data.frame("success" = success_vals, "probability" = probabilities, "cumulative" = cumulative)
  class(df) = c("bincum", "data.frame")
  return(df)
}
bin_cumulative(trials = 5, prob = 0.5)

### 1.7 - FUNCTION BIN_VARIABLE()
#' @title bin variable function
#' @description returns binvar object
#' @param trials number of trials
#' @param prob probability of success
#' @return binomial random variable object
#'
bin_variable = function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  object = list(trials = trials, prob = prob)
  class(object) = "binvar"
  return(object)
}

#' @export
print.binvar = function(x, ...) {
  cat('"Binomial Variable"\n\n')
  cat('Parameters: \n')
  cat(sprintf('- number of trials: %s', x$trials))
  cat(sprintf('\n- prob of success: %s', x$prob))
}

#' @export
summary.binvar = function(x, ...) {
  df = data.frame(
    trials = x$trials,
    prob = x$prob,
    mean = aux_mean(x$trials, x$prob),
    variance = aux_variance(x$trials, x$prob),
    mode = aux_mode(x$trials, x$prob),
    skewness = aux_skewness(x$trials, x$prob),
    kurtosis = aux_kurtosis(x$trials, x$prob)
  )
  object = list(dat = df)
  class(object) = "summary.binvar"
  object
}

#' @export
print.summary.binvar = function(x, ...) {
  cat('Summary Binomial\n\n')
  cat('Parameters: \n')
  cat(sprintf('- number of trials: %s', x$dat$trials))
  cat(sprintf('\n- prob of success: %s', x$dat$prob))
  cat('\n\n Measures: \n')
  cat(sprintf('- mean: %s', x$dat$mean))
  cat(sprintf('\n- variance: %s', x$dat$variance))
  cat(sprintf('\n- mode: %s', x$dat$mode))
  cat(sprintf('\n- skewness: %s', x$dat$skewness))
  cat(sprintf('\n- kurtosis: %s', x$dat$kurtosis))
}

### 1.8 - FUNCTIONS OF MEASURES
bin_mean = function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_mean(trials, prob))
}

bin_variance = function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_variance(trials, prob))
}

bin_mode = function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_mode(trials, prob))
}

bin_skewness = function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_skewness(trials, prob))
}

bin_kurtosis = function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_kurtosis(trials, prob))
}



