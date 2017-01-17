#' Expectation: does code produce output/message/warning/error?
#'
#' Use `expect_output()`, `expect_message()`, `expect_warning()`,
#' or `expect_error()` to check for specific outputs. Use
#' `expect_silent()` to assert that there should be no output of
#' any type. The file-based`expect_output_file()` compares the output
#' to the contents of a text file and optionally updates it.
#'
#' Note that warnings are captured by a custom signal handler: this means
#' that `options(warn)` has no effect.
#'
#' @inheritParams testthat::expect_output
#' @inheritParams testthat::expect_output_file
#' @family expectations
#' @examples
#' # Output --------------------------------------------------------------------
#' str(mtcars)
#' expect_output(str(mtcars), "32 obs")
#' expect_output(str(mtcars), "11 variables")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_output(str(mtcars), "11 VARIABLES", ignore.case = TRUE)
#' expect_output(str(mtcars), "$ mpg", fixed = TRUE)
#'
#' # Messages ------------------------------------------------------------------
#'
#' f <- function(x) {
#'   if (x < 0) message("*x* is already negative")
#'   -x
#' }
#' expect_message(f(-1))
#' expect_message(f(-1), "already negative")
#' expect_message(f(1), NA)
#'
#' # You can use the arguments of grepl to control the matching
#' expect_message(f(-1), "*x*", fixed = TRUE)
#' expect_message(f(-1), "NEGATIVE", ignore.case = TRUE)
#'
#' # Warnings --------------------------------------------------------------------
#' f <- function(x) {
#'   if (x < 0) warning("*x* is already negative")
#'   -x
#' }
#' expect_warning(f(-1))
#' expect_warning(f(-1), "already negative")
#' expect_warning(f(1), NA)
#'
#' # You can use the arguments of grepl to control the matching
#' expect_warning(f(-1), "*x*", fixed = TRUE)
#' expect_warning(f(-1), "NEGATIVE", ignore.case = TRUE)
#'
#' # Errors --------------------------------------------------------------------
#' f <- function() stop("My error!")
#' expect_error(f())
#' expect_error(f(), "My error!")
#'
#' # You can use the arguments of grepl to control the matching
#' expect_error(f(), "my error!", ignore.case = TRUE)
#'
#' # Silent --------------------------------------------------------------------
#' expect_silent("123")
#'
#' f <- function() {
#'   message("Hi!")
#'   warning("Hey!!")
#'   print("OY!!!")
#' }
#' \dontrun{
#' expect_silent(f())
#' }

#' @name output-expectations
NULL

#' @inheritParams testthat::expect_output
#' @export
#' @rdname output-expectations
expect_output <- function(object, regexp = NULL, ..., info = NULL, label = NULL) {
   testthat::expect_output(object, regexp, ..., info, label)
}


#' @inheritParams testthat::expect_output_file
#' @export
#' @rdname output-expectations
expect_output_file <- function(object, file, update = FALSE, ..., info = NULL, label = NULL) {
   testthat::expect_output_file(object, file, update, ..., info, label)
}


#' @inheritParams testthat::expect_error
#' @param class class of the error
#' @export
#' @rdname output-expectations
expect_error <- function(object, regexp = NULL, class = NULL, ..., info = NULL,
                         label = NULL) {
   testthat::expect_error(object, regexp, class, ..., info, label)
}

#' @inheritParams testthat::expect_message
#' @export
#' @rdname output-expectations
expect_message <- function(object, regexp = NULL, ..., all = FALSE,
                           info = NULL, label = NULL) {
   testthat::expect_message(object, regexp, ..., all, info, label)
}

#' @inheritParams testthat::expect_warning
#' @export
#' @rdname output-expectations
expect_warning <- function(object, regexp = NULL, ..., all = FALSE,
                           info = NULL, label = NULL) {
   testthat::expect_warning(object, regexp, ..., all, info, label)

}

#' @inheritParams testthat::expect_silent
#' @export
#' @rdname output-expectations
expect_silent <- function(object) {
   testthat::expect_silent(object)
}
