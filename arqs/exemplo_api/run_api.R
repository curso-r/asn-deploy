
library(plumber)
r <- plumb("exemplo_api.R")

p$handle("GET", "/", function(req, res){
  200
})

r$run(port = as.integer(Sys.getenv("PORT", unset = 8000)), host = "0.0.0.0")
