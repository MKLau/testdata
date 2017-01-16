#' Evaluate a promise, capturing all types of output.
#'
#' These functions allow you to capture the side-effects of a function call
#' including printed output, messages and warnings. They are used to evaluate
#' code for [expect_output()], [expect_message()],
#' [expect_warning()], and [expect_silent()].
#'
#' @param code Code to evaluate. This should be an unevaluated expression.
#' @param print If `TRUE` and the result of evaluating `code` is
#'   visible this will print the result, ensuring that the output of printing
#'   the object is included in the overall output
#' @export
#' @import testthat
#' @return A list containing
#'  \item{result}{The result of the function}
#'  \item{output}{A string containing all the output from the function}
#'  \item{warnings}{A character vector containing the text from each warning}
#'  \item{messages}{A character vector containing the text from each message}
#' @examples
#' evaluate_promise({
#'   print("1")
#'   message("2")
#'   warning("3")
#'   4
#' })
evaluate_promise <- function(code, print = FALSE) {
   testthat::evaluate_promise(code, print)
}

#' @import testthat
#' @export
#' @rdname evaluate_promise
capture_messages <- function(code) {
   testthat::capture_messages(code)
}

#' @import testthat
#' @export
#' @rdname evaluate_promise
capture_warnings <- function(code) {
   testthat::capture_warnings(code)
}

#' @import testthat
#' @export
#' @rdname evaluate_promise
capture_output <- function(code, print = FALSE) {
   testthat::capture_output(code, print)
}
