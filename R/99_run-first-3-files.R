library(fs)
library(purrr)
library(here)

source(here("R/01_write-installed-packages.R"))
source(here("R/02_wrangle-packages.R"))
source(here("R/03_barchart-packages-built.R"))

rmarkdown::render(here("README.md"))
file_delete("README.html")
