library(AzureStor)

# conexao com o storage ---------------------------------------------------

key = Sys.getenv('AZURE_STORAGE_KEY')

blob_con = blob_endpoint(
  endpoint = "https://asnrocksstorage.blob.core.windows.net/",
  key = key
)

# criacao/conexao com o blob container ------------------------------------
list_storage_containers(blob_con)
container_name = "data"
container_client = tryCatch(
  expr = {
    create_blob_container(blob_con, name = container_name)
  },
  error = function(e) {
    blob_container(blob_con, name = container_name)
  }
)


container_client = blob_container(blob_con, name = "data")



list_blobs(container_client)

# upload de arquivos no blob container ------------------------------------
storage_write_csv(mtcars, container_client, file = "mtcars_20221020.csv")

download.file("https://avatars.githubusercontent.com/u/1925102", "prof_athos.png", method = "curl")

storage_upload(container_client,  "hist.png", "hist_do_pc_do_athos.png")
storage_upload(container_client,  "data/auto.xlsx", "auto.xlsx")

# download de um arquivo do blob container --------------------------------
storage_download(container_client,  "auto.xlsx", "data/auto.xlsx", overwrite = TRUE)
library(readxl)
auto = read_excel("data/auto.xlsx")
