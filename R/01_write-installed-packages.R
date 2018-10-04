## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

pkgs <- installed.packages()

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

library(dplyr)
pkgs <- as_tibble(pkgs) %>% 
  select(package = Package, lib = LibPath, version = Version,
         type = Priority, built = Built)

readr::write_tsv(pkgs, here::here("data/installed-packages.tsv"))

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

## YES overwrite the file that is there now (or delete it first)
## that came from me (Jenny)
## it an example of what yours should look like and where it should go
