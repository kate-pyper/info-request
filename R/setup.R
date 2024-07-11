setup <- function(path, ...) {
  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # Set up folders
  dir.create(file.path(path, "1. Communications"), showWarnings = FALSE)
  dir.create(file.path(path, "2. Documentation"), showWarnings = FALSE)
  dir.create(file.path(path, "3. Scripts"), showWarnings = FALSE)
  dir.create(file.path(path, "4. Working"), showWarnings = FALSE)
  dir.create(file.path(path, "5. Output"), showWarnings = FALSE)
}
