#' Expectation: is the object equal to a reference value stored in a file?
#'
#' This expectation is equivalent to [expect_equal()], except that the
#' expected value is stored in an RDS file instead of being specified literally.
#' This can be helpful when the value is necessarily complex. If the file does
#' not exist then it will be created using the value of the specified object,
#' and subsequent tests will check for consistency against that generated value.
#' The test can be reset by deleting the RDS file.
#'
#' It is important to initialize the reference RDS file within the source
#' package, most likely in the `tests/testthat` directory. Testing spawned
#' by [devtools::test()], for example, will accomplish this. But note that
#' testing spawned by `R CMD check` and [devtools::check()] will NOT.
#' In the latter cases, the package source is copied to an external location
#' before tests are run. The resulting RDS file will not make its way back into
#' the package source and will not be available for subsequent comparisons.
#'
#' @inheritParams testthat::expect_equal_to_reference
#' @family expectations
#' @export
#' @examples
#' \dontrun{
#' expect_equal_to_reference(1, "one.rds")
#' }
expect_equal_to_reference <- function(object, file, ..., info = NULL,
                                      label = NULL, expected.label = NULL) {

   testthat::expect_equal_to_reference(object, file, ..., info, label, expected.label)
}
