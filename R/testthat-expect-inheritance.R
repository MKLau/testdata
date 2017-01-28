##
## Begin Peach code
##

#' Expectation: does the object inherit from a S3 or S4 class, or a base type?
#'
#' Tests whether or not an object inherits from any of a list of classes, or
#' is an instance of a base type. `expect_null()` is a special case designed
#' for detecting `NULL`.
#'
#' `expect_is()` is an older form. I'd recommend using `expect_s3_class()`
#' or `expect_s4_class()` in order to more clearly convey intent.
#'
#' @inheritParams testthat::expect_null
#' @seealso [inherits()]
#' @family expectations
#' @examples
#' expect_is(1, "numeric")
#' a <- matrix(1:10, nrow = 5)
#' expect_is(a, "matrix")
#'
#' expect_is(mtcars, "data.frame")
#' # alternatively for classes that have an is method
#' expect_true(is.data.frame(mtcars))
#'
#' f <- factor("a")
#' expect_is(f, "factor")
#' expect_s3_class(f, "factor")
#' expect_type(f, "integer")
#'
#' expect_null(NULL)
#'
#' @name inheritance-expectations
NULL

#' @inheritParams testthat::expect_null
#' @export
#' @rdname inheritance-expectations
expect_null <- function(object, info = NULL, label = NULL) {
   testthat::expect_null(object, info, label)
}

#' @inheritParams testthat::expect_type
#' @export
#' @rdname inheritance-expectations
expect_type <- function(object, type) {
   testthat::expect_type(object, type)
}

#' @inheritParams testthat::expect_is
#' @export
#' @rdname inheritance-expectations
expect_is <- function(object, class, info = NULL, label = NULL) {
   testthat::expect_is(object, class, info, label)
}

#' @inheritParams testthat::expect_s3_class
#' @export
#' @rdname inheritance-expectations
expect_s3_class <- function(object, class) {
   testthat::expect_s3_class(object, class)
}

#' @inheritParams testthat::expect_s4_class
#' @export
#' @rdname inheritance-expectations
expect_s4_class <- function(object, class) {
  testthat::expect_s4_class(object, class)
}

##
## End Peach code
##
