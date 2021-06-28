library(plumber)

api <- plumb("arqs/exemplo_api/exemplo_api.R")
pr_run(api, port = 8000)


