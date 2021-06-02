#' @exportS3Method knitr::knit_print my_foo

knit_print.my_foo <- function(x, ...) {
  message("knit_print method")
  structure(x, class = "knit_asis")
}

#' @exportS3Method print my_foo
print.my_foo <- function(x, ...) {
  message("print method")
  structure(x, class = "knit_asis")
}

#' @export
hello <- function() {
  out <- "<h1>Hello</h1>"
  class(out) <- "my_foo"
  out
}
