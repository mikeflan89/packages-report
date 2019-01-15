## remember to restart R here!

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

ipt<-read.csv(here::here("data/installed-packages.csv"),
              sep = "^")

## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
library(dplyr)
apt <- ipt %>%
  filter(Priority=="") %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

write.table(apt,
            here::here("data/add-on-packages.csv"),
            sep = "^",
            quote = F,
            row.names = F,
            na = "")

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write.table(apt_freqtable,
            here::here("data/add-on-packages-freqtable.csv"),
            sep = "^",
            quote = F,
            row.names = F,
            na = "")

## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
