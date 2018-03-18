.onLoad <- function(libname, pkgname) {
  shiny::addResourcePath(prefix = "diffDOM",directoryPath = system.file("diffDOM",package="shinydiffdom"))
}