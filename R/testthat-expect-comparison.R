##
## Begin Peach code
##

#' Expectation: is returned value less or greater than specified value?
#'
#' @inheritParams testthat::expect_lt
#' @family expectations
#' @examples
#' a <- 9
#' expect_lt(a, 10)
#'
#' \dontrun{
#' expect_lt(11, 10)
#' }
#'
#' a <- 11
#' expect_gt(a, 10)
#' \dontrun{
#' expect_gt(9, 10)
#' }
#' @name comparison-expectations
NULL

#' @export
#' @rdname comparison-expectations
expect_lt <- function(object, expected, label = NULL, expected.label = NULL) {
  testthat::expect_lt(object, expected, label, expected.label)
}

#' @export
#' @rdname comparison-expectations
expect_lte <- function(object, expected, label = NULL, expected.label = NULL) {
  testthat::expect_lte(object, expected, label, expected.label)
}

#' @export
#' @rdname comparison-expectations
expect_gt <- function(object, expected, label = NULL, expected.label = NULL) {
  testthat::expect_gt(object, expected, label, expected.label)
}

#' @export
#' @rdname comparison-expectations
expect_gte <- function(object, expected, label = NULL, expected.label = NULL) {
  testthat::expect_gte(object, expected, label, expected.label)
}

##
## End Peach code
##
