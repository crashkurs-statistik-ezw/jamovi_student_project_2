library(assertr)
library(tidyverse)

# Gereinigter Datensatz laden ---------------------------------------------
dframe <- read_csv("data/clean/edx_cleaned_r.csv") 


# Daten einsehen ----------------------------------------------------------
glimpse(dframe)
view(dframe)


# Data Quality Checks ausführen -------------------------------------------
dframe |> 
  verify(has_only_names("id", "p_female", "age_mean",
                        "prerequisites",
                        "stem", "weekly_effort", 
                        "course_subject")) |> 
  assert(within_bounds(0, 1), p_female) |>
  assert(within_bounds(20, 37), age_mean) |>
  assert(in_set(c(0)), prerequisites) |> 
  assert(is_uniq, id) |> 
  assert_rows(num_row_NAs, within_bounds(0, 3), everything())

