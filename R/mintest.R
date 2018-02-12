#' Ti
#'
#' dos tuff
#'
#' details
#' @return text
#' @export
#'
gdalinfotest <- function() {
  system("gdalinfo --version", intern = TRUE)
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
