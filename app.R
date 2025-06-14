# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file
if (!require("idepGolem", quietly = TRUE)){
  devtools::install_github("Bees-GO/idepGolem", upgrade = "never", force = TRUE)
  # If only re-install idepGolem from local, you can run the command below:
  # install.packages(".", repos = NULL, type = "source", upgrade = "never", force = TRUE)
}

#pkgload::load_all(export_all = FALSE,helpers = FALSE,attach_testthat = FALSE)
options( "golem.app.prod" = TRUE)
# Loading all packages ----
library(shiny)
library(shinyjs)
library(shinyFiles)
library(shinycssloaders)
library(dplyr)
library(httr)
library(jsonlite)
idepGolem::run_app() # add parameters here (if any)
