#import and clean

library(palmerpenguins)
library (ggplot2)
library(janitor)
library (dplyr)
library(stringr)
library(imguR)
library(grDevices)
library(png)
library(grid)
library(rgl)
library(lindia)


#create cleaning function
cleaning <- function(raw) {
  raw %>%
    clean_names() %>%
    remove_empty(c("rows", "cols")) %>%
    select(-starts_with("Delta")) %>%
    select(-comments) %>%
    na.omit()
}

penguins <- cleaning(penguins_raw)
#test to see new names
# names(penguins)
