# Exemplo Pokemon ---------------------------------------------------------
library(httr) # requests do R
library(listviewer)

resposta <- GET("https://pokeapi.co/api/v2/pokemon/ditto")

ditto_infos <- content(resposta)
listviewer::jsonedit(ditto_infos)


lista <- list(
  a = 1,
  b = list(
    c = 2,
    d = 3,
    e = list(
      f = 5,
      g = 10
    )
  )
)
jsonedit(lista)








habilidade_do_ditto <- content(GET(ditto_infos$abilities[[1]]$ability$url))

jsonedit(habilidade_do_ditto)

# Exemplo APOD ----------------------------------------------------------
# https://api.nasa.gov/
# Sys.setenv(NASA_KEY = "89fcjds0asdj03m3xmzj974")
# system("setx NASA_KEY kefCXhyjynxSFUgJnRBRfRjFwDrgu66q7jyUe6Dg")
NASA_KEY <- Sys.getenv("NASA_KEY")
usethis::edit_r_environ()
Sys.getenv("NASA_KEY")
Sys.getenv("TESTE_KEY")

params <- list(
  date = "2019-12-31",
  api_key = Sys.getenv("NASA_KEY") # Guardada no meu computador
)
resp <- GET("https://api.nasa.gov/planetary/apod", query = params)
resp <- GET("https://api.nasa.gov/planetary/apod?date=2020-12-31&api_key=OVW54tyuro6nwOOMAwTs4jPGFc4GpL5iNwtX6CZm")

jsonedit(content(resp))

content(resp)$url
BROWSE(content(resp)$url)


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

