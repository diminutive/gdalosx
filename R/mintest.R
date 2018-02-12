#' Ti
#'
#' dos tuff
#'
#' details
#' @return text
#' @export
#'
gdalinfotest <- function() {
  if (Sys.info()["sysname"]) {
    out <-   system("gdalinfo --version", intern = TRUE)
  }
  out <- "GDAL"
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
