#' Dependencies for "office-ui-fabric-react"
#'
#' @return htmltools::htmlDependency
#' @export
roffice_deps <- function() {
  htmltools::htmlDependency(
    name = "office-ui-fabric-react",
    version = "6.118.0",
    src = "htmlwidgets/office-ui-fabric-react",
    script = "office-ui-fabric-react.js",
    package = "roffice"
  )
}
