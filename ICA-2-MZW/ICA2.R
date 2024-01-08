library(DBI)
library(RSQLite)
library(dplyr)

Icadb <- dbConnect(SQLite(), "ICA_2023.sqlite")

dbListTables(Icadb)