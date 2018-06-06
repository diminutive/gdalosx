#' Ti
#'
#' dos tuff
#'
#' details
#' @return text
#' @export
#'
gdalinfotest <- function() {
  if (Sys.info()["sysname"] %in% c("Linux", "Darwin")) {
    out <-   system("gdalinfo --version", intern = TRUE)
  } else {
    out <- NA
  }
  out
}

#' nothing at all
#'
#' returns a string
#' @return character
#' @export
#'
#' @examples
#' mintest()
mintest <- function() {
  "nothing"
}
