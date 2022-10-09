library(tidyverse)
library(listviewer)
library(jsonlite)
library(purrr)

# json complexo da internet (futebol americano) -----------------------------------------------
json <- fromJSON(url("https://site.web.api.espn.com/apis/fitt/v3/sports/football/nfl/qbr?region=us&lang=en&qbrType=seasons&seasontype=2&isqualified=true&sort=schedAdjQBR%3Adesc&season=2019"))

json2 <- fromJSON("football.json")
jsonedit(json2)

toJSON()

as_tibble(json$currentSeason)




# data.frame com json dentro das celulas -------------------------
dados_com_json_na_celula <- read_csv("data/data_with_json_cells.csv")
cat(dados_com_json_na_celula$totals[1])
fromJSON(dados_com_json_na_celula$totals[1])
fromJSON(dados_com_json_na_celula$totals[2])



