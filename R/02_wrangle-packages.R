## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

pkgs <- readr::read_tsv(here::here("data/installed-packages.tsv"))

## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
library(dplyr)
apt <- pkgs %>%
  filter(is.na(type)) %>%
  select(package, built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

readr::write_tsv(apt, here::here("data/add-on-packages.tsv"))

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

readr::write_tsv(apt_freqtable, here::here("data/add-on-packages-freqtable.tsv"))

## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples
