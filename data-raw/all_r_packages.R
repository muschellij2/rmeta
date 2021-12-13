## code to prepare `all_r_packages` dataset goes here
library(dplyr)
url = "http://rpkg.gepuro.net/download"
df = jsonlite::read_json(url, simplifyVector = TRUE, flatten = TRUE)
df = df$pkg_list

all_r_packages = df
usethis::use_data(all_r_packages, overwrite = TRUE)
