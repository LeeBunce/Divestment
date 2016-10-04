# Tidy data

# Packages ----------------------------------------------------------------
library(readr)
library(dplyr)

# Load data ---------------------------------------------------------------
march2014 <- read_csv("data/March 2014.csv", col_types = cols(
  holding = "n",
  market_value = "n"
)) %>%
  mutate(date = "2014-03-31")

march2015 <- read_csv("data/March 2015.csv", col_types = cols(
  holding = "n",
  market_value = "n"
)) %>%
  mutate(date = "2015-03-31")

march2016 <- read_csv("data/March 2016.csv", col_types = cols(
  holding = "n",
  market_value = "n"
)) %>%
  mutate(date = "2016-03-31")

# Merge data --------------------------------------------------------------

lpf <- bind_rows(march2014, march2015, march2016) %>% 
  arrange(asset_name, date)

# Tidy up -----------------------------------------------------------------
rm(march2014, march2015, march2016)