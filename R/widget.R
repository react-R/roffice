#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
officeuiwidget <- function(...) {
  htmlwidgets::createWidget(
    name = 'officeuiwidget',
    list(tag = reactR::component("Fragment", c(list(...)))),
    width = NULL,
    height = NULL,
    package = 'roffice',
    elementId = NULL
  )
}

# Magical
officeuiwidget_html <- function(id, style, class, ...) {
  htmltools::tagList(
    reactR::html_dependency_corejs(),
    reactR::html_dependency_react(),
    reactR::html_dependency_reacttools(),
    roffice_deps(),
    htmltools::tags$div(id = id, class = class)
  )
}
