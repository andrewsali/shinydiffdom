#' @import htmlwidgets
#' @export
diffUI <- function(.html ,width="auto", height="auto") {
  print(.html)
  # pass the data and settings using 'x'
  x <- list(
    html=
      as.character(
        shiny::tags$div(
          .html
        )
      )
  )
  
  # create the widget
  htmlwidgets::createWidget("diffUI", x, width = "auto", height = "auto", package="shinydiffdom")
}

#' @export
diffUIOutput <- function(outputId, width = "auto", height = "auto") {
  shinyWidgetOutput(outputId, "diffUI", width, height, package = "shinydiffdom")
}
#' @export
renderDiffUI <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force 
  shinyRenderWidget(expr, diffUIOutput, env, quoted = TRUE)
}