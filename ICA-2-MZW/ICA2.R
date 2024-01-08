library(DBI)
library(RSQLite)
library(dplyr)

Icadb <- dbConnect(SQLite(), "ICA_2023.sqlite")

dbListTables(Icadb)
dbListFields(Icadb, "Projects")

Projects <- tbl(Icadb, "Projects")
Projects
projects_df <- collect(Projects)
projects_df