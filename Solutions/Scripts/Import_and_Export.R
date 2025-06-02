# Pre-requisites ----

# List of required packages
packages = c(
  "readxl",
  "dplyr",
  "tidyverse",
  "data.table",
  "here",
  "haven",
  "janitor" # Added janitor for clean_names() function
)

# Install pacman if not already installed
if (!require("pacman")) install.packages("pacman")

# Load the packages with pacman
pacman::p_load(packages, character.only = TRUE, install = TRUE)

# Exercise 1: Import the Data ----

# FIRMS CHARACTERISTICS

# Load the firm-level characteristics (firm_characteristics.csv)
dt_firms = fread(here("quarto_files", "Solutions", "Data", "Raw", "firm_characteristics.csv"))

# Display the first 5 rows
head(dt_firms)

# Clean column names to make them consistent
dt_firms = clean_names(dt_firms)

# VAT DECLARATIONS

# Load the VAT panel data (vat_declarations.dta)
panel_vat = read_dta(here("quarto_files", "Solutions", "Data", "Raw", "vat_declarations.dta"))

# Display the first 5 rows
head(panel_vat)

# Column names look fine, but the bonus question requires us to change firm_id
panel_vat = rename(panel_vat, firm_id = id_firm)

# CIT DECLARATIONS

# Load the CIT panel data (cit_declarations.xlsx)
panel_cit = read_xlsx(here("quarto_files", "Solutions", "Data", "Raw", "cit_declarations.xlsx"), sheet = 2)

# Display the first 5 rows
head(panel_cit)

# Column names look consistent, so no need for further cleaning




# Exercise 2: Write the Data ----

# FIRMS CHARACTERISTICS

# Write the firm-level characteristics (firm_characteristics.format)
# Don't forget to put in the right folder and pick the best format


# VAT DECLARATIONS

# Write the VAT panel data (vat_declarations.format)


# CIT DECLARATIONS

# Write the CIT panel data (cit_declarations.format)