#' Expectation: does a vector have the specified length?
#'
#' @inheritParams testthat::expect_length
#' @param n Expected length.
#' @family expectations
#' @export
#' @examples
#' expect_length(1, 1)
#' expect_length(1:10, 10)
#'
#' \dontrun{
#' expect_length(1:10, 1)
#' }
expect_length <- function(object, n) {
   testthat::expect_length(object, n)
}
