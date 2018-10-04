## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

apt_freqtable <- readr::read_tsv(here::here("data/add-on-packages-freqtable.tsv"))

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

## if you use ggplot2, code like this will work:
library(ggplot2)
p <- ggplot(apt_freqtable, aes(x = built, y = n)) +
  geom_bar(stat = "identity")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

library(R.devices)
R.devices::suppressGraphics(
  ggsave(here::here("figs/built-barchart.png"), p)
)

## YES overwrite the file that is there now
## that came from me (Jenny)
