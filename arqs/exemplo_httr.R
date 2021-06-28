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
# system("setx NASA_KEY kefCXhyjynxSFUgJnRBRfRjFwDrgu66q7jyUe6Dg")
NASA_KEY <- Sys.getenv("NASA_KEY")

params <- list(
  date = "2019-12-31",
  api_key = NASA_KEY # Guardada no meu computador
)
resp <- GET("https://api.nasa.gov/planetary/apod", query = params)
content(resp)$url

# Exemplo Slack (bônus/show-off - não reprodutível) ---------------------------------
# https://app.slack.com/client/T0135BCRH2R/C013KBF2PSM
incoming_webhook_url <- Sys.getenv("INCOMING_WEBHOOK_URL")
POST(incoming_webhook_url, body = list(text  = content(resp)$url), encode = "json")

# Espaço para a nossa API -------------------------------------------------

