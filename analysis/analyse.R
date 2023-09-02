library(tidyverse)
library(skimr)

data <- read_csv("data/clean/edx_cleaned.csv")


# skimr -------------------------------------------------------------------
skim(data)

data |> 
  group_by(stem) |> skim()

# Deskriptive Statistik kontinuierliche Daten -----------------------------
jmv::descriptives(
  data = data,
  vars = vars(p_female, age_mean, weekly_effort),
  variance = TRUE)


# Deskriptive Statistik nominalskalierte Daten ----------------------------
jmv::descriptives(
  data = data,
  vars = vars(stem, course_subject),
  freq = TRUE)


# Weekly Effort stem/ no-stem ---------------------------------------------
jmv::descriptives(
  formula = weekly_effort ~ stem,
  data = data,
  n = FALSE,
  missing = FALSE,
  median = FALSE,
  sd = FALSE,
  min = FALSE,
  max = FALSE)
