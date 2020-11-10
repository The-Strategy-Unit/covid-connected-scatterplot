# create an environment to store setup objects
setup_env <- new.env()

# packages
library("tidyverse")
library("lubridate")
library("ggrepel")
library("gganimate")
library("gifski")
# library("zoo")  # not loaded

# setup
inOffice      <- FALSE
.baseDir      <- ifelse(inOffice, "Z:/Strategic Analytics/", "C:/Projects/")
.projDir      <- paste0(.baseDir, "2011-covid-connected-scatterplot/")
.rawDir       <- paste0(.projDir, "_rawData/")
.datDir       <- paste0(.projDir, "R-data/")
.testDir      <- paste0(.projDir, "R-tests/")
.figDir       <- paste0(.projDir, "figures/")

setwd(.projDir)

# parameters

# fonts
library("extrafont")
loadfonts(device = "win", quiet = TRUE)
loadfonts(device = "pdf", quiet = TRUE)
Sys.setenv(R_GSCMD = "C:/Program Files/gs/gs9.53.3/bin/gswin64c.exe")

# scales

# functions

# set the default theme
source("R-functions/theme_covid.R")
setup_env$theme_report <- theme_covid
theme_set(setup_env$theme_report())

# load additional files

attach(setup_env)

