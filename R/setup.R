setup <- function(path, script, ...) {
  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # Set up folders
  dir.create(file.path(path, "1. Communications"), showWarnings = FALSE)
  dir.create(file.path(path, "2. Documentation"), showWarnings = FALSE)
  dir.create(file.path(path, "3. Scripts"), showWarnings = FALSE)
  dir.create(file.path(path, "4. Working"), showWarnings = FALSE)
  dir.create(file.path(path, "5. Output"), showWarnings = FALSE)
  
  script_temp <- "##########################################################
# Name of file
# Data release (if applicable)
# Original author(s)
# Original date
# Latest update author (if not using version control)
# Latest update date (if not using version control)
# Latest update description (if not using version control)
# Type of script (e.g. extraction, preparation, modelling)
# Written/run on (e.g. R Studio SERVER)
# Version of R that the script was most recently run on
# Description of content
# Approximate run time
##########################################################


### 1 - Housekeeping ----
# This section should be the only section of the script which requires manual changes 
# for future updates and includes:
#   loading packages
#   setting filepaths and extract dates
#   functions (defined here or sourced from another file)
#   setting plot parameter
#   specifying codes (e.g. ICD-10 codes)


### 2 Section Heading ----


### 3 Section Heading ----


### END OF SCRIPT ###"
  
  writeLines(script_temp, con = file.path(path, "3. Scripts", paste0(script,".R")))
}
