##
## Start Peach code
##

#' @include reporter.R
NULL

#' Tools for testing expectations
#'
#' Use these expectations to test other expectations.
#'
#' @inheritParams testthat::expect_success
#' @keywords internal
#' @export
expect_success <- function(expr) {
   testthat::expect_success(expr)
}

#' @inheritParams testthat::expect_failure
#' @export
#' @rdname expect_success
expect_failure <- function(expr, message = NULL, ...) {
   testthat::expect_failure(expr, message, ...)
}

##
## End Peach code
##

