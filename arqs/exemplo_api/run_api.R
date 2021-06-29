# library(plumber)
#
# api <- plumb("arqs/exemplo_api/exemplo_api.R")
# pr_run(api, port = 8000)
#
#
library(plumber)
r <- plumb("exemplo_api.R")
r$run(port = 8000, host = "0.0.0.0")
