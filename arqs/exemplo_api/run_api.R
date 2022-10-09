
library(plumber)
r <- plumb("arqs/exemplo_api/exemplo_api.R")

r$handle("GET", "/", function(req, res){
  200
})

r$run(port = as.integer(Sys.getenv("PORT", unset = 8000)), host = "0.0.0.0")
