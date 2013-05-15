new_source <- function(...) {
  structure(list(...), class = c("source", "ops"))
}

source_vars <- function(x) UseMethod("source_vars")
source_name <- function(x) UseMethod("source_name")

as.source <- function(x, ...) UseMethod("as.source")
#' @S3method as.source source
as.source.source <- function(x, ...) x

is.source <- function(x) inherits(x, "source")

#' @S3method print source
print.source <- function(x, ...) {
  cat("Source: ", source_name(x), "\n")
}
