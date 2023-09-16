library(tidyverse)
library(janitor)
library(assertr)

raw_data <- read_csv("data/raw/edXSample.csv")



raw_data_cleaned <- raw_data |> 
  mutate(id = row_number()) |> 
  clean_names() |> 
  select(id, p_female, age_mean, prerequisites, stem,
         weekly_effort, course_subject) |> 
  dplyr::filter(
    age_mean >= 20 & age_mean <= 37,
    prerequisites == 0) 

write_csv(raw_data_cleaned, "data/clean/edx_cleaned_r.csv")

