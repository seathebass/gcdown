# from https://github.com/rstudio/bookdown/blob/master/R/utils.R
gcdown_file <- function(...) {
  system.file(..., package = "gcdown", mustWork = TRUE)
}

# from https://github.com/rstudio/bookdown/blob/master/R/skeleton.R
gcdown_skeleton <- function(path = getwd()) {

  # ensure directory exists
  #  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # copy 'resources' folder to path
  resources <- gcdown_file("rstudio", "templates", "project", "resources")

  R.utils::copyDirectory(
    from = resources,
    to = path,
    recursive = TRUE
  )
}
