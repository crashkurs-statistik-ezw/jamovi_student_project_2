library(assertr)
library(tidyverse)

# Gereinigter Datensatz laden ---------------------------------------------
dframe <- read_csv("data/clean/") 


# Daten einsehen ----------------------------------------------------------
glimpse(dframe)
view(dframe)


# Data Quality Checks ausführen -------------------------------------------
dframe |> 
  # TODO

