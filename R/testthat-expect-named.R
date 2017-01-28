##
## Start Peach code
##

#' Expectation: does object have names?
#'
#' You can either check for the presence of names (leaving `expected`
#' blank), specific names (by suppling a vector of names), or absence of
#' names (with `NULL`).
#'
#' @inheritParams testthat::expect_named
#' @family expectations
#' @import testthat
#' @export
#' @examples
#' x <- c(a = 1, b = 2, c = 3)
#' expect_named(x)
#' expect_named(x, c("a", "b", "c"))
#'
#' # Use options to control sensitivity
#' expect_named(x, c("B", "C", "A"), ignore.order = TRUE, ignore.case = TRUE)
#'
#' # Can also check for the absence of names with NULL
#' z <- 1:4
#' expect_named(z, NULL)
expect_named <- function(object, expected, ignore.order = FALSE,
                         ignore.case = FALSE, info = NULL,
                         label = NULL) {
   testthat::expect_named(object, expected, ignore.order, ignore.case,
                          info, label)

}

##
## End Peach code
## 
