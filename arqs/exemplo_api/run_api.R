
library(plumber)
r <- plumb("exemplo_api.R")

r$handle("GET", "/", function(req, res){
  2000
})

r$run(port = as.integer(Sys.getenv("PORT", unset = 8000)), host = "0.0.0.0")
