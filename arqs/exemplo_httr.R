# Exemplo Pokemon ---------------------------------------------------------
library(httr)
library(listviewer)

resposta <- httr::GET("https://pokeapi.co/api/v2/pokemon/ditto")

ditto_infos <- content(resposta)
jsonedit(list(a = 1, b = list(c = 2, d = 3)))

ditto_infos$abilities[[1]]$ability$url

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
resp <- GET("https://api.nasa.gov/planetary/apod?date=2019-12-31&api_key=kefCXhyjynxSFUgJnRBRfRjFwDrgu66q7jyUe6Dg", query = params)
content(resp)$url
BROWSE(content(resp)$url)

# Exemplo Azure Blob Storage --------------------------------------------


# Exemplo Slack (bônus/show-off - não reprodutível) ---------------------------------
# https://app.slack.com/client/T0135BCRH2R/C013KBF2PSM
incoming_webhook_url <- Sys.getenv("INCOMING_WEBHOOK_URL")
POST(
  incoming_webhook_url,
  body = list(text  = "aloalo"),
  encode = "json"
)

# Espaço para a nossa API -------------------------------------------------
eco <- GET("http://127.0.0.1:8000/echo", query = list(msg = "OK"))

dados <- list(
  a = 100,
  b = 200
)

soma <- POST("https://plumberzinho-2ttjicpeda-uc.a.run.app/sum",
             body = dados,
             encode = "json")
content(soma)

