# Tidy data

# Packages ----------------------------------------------------------------
library(readr)
library(dplyr)

# Load data ---------------------------------------------------------------
march2014 <- read_csv("data/March 2014.csv")
march2015 <- read_csv("data/March 2015.csv")
march2016 <- read_csv("data/March 2016.csv")

names(march2014) <- c("asset_name", "holding", "market_value", "energy", "coal", "oil_gas")
names(march2015) <- c("asset_category", "asset_name", "holding", "market_value", "both", "oil_gas", "coal", "arms", "tobacco")
names(march2016) <- c("asset_category", "asset_name", "holding", "market_value", "coal", "oil_gas", "either", "arms", "tobaco")
