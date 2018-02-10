#' Ti
#'
#' dos tuff
#'
#' details
#' @return text
#' @export
#'
#' @examples
#' mintest()
mintest <- function() {
  system("gdalinfo --version", intern = TRUE, show.output.on.console = TRUE)
}
