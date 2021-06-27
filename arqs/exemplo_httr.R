# Exemplo Pokemon ---------------------------------------------------------
library(httr)
library(listviewer)

resposta <- GET("https://pokeapi.co/api/v2/pokemon/ditto")
resposta

ditto_infos <- content(resposta)
jsonedit(ditto_infos)

# Exemplo APOD ----------------------------------------------------------
# https://api.nasa.gov/
# Sys.setenv(NASA_KEY = "89fcjds0asdj03m3xmzj974")
NASA_KEY <- Sys.getenv("NASA_KEY")

params <- list(
  date = "2019-12-31",
  api_key = NASA_KEY # Guardada no meu computador
)
resp <- GET("https://api.nasa.gov/planetary/apod", query = params)
content(resp)$url
