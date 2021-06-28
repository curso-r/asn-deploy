
#* Escreve uma mensagem
#* @param msg A mensagem para escrever
#* @get /echo
function(msg = "") {
  paste0("A mensagem é: '", msg, "'")
}

#* Retorna a soma de dois números
#* @param a O primeiro número
#* @param b O segundo número
#* @post /sum
function(a, b){
  as.numeric(a) + as.numeric(b)
}

#* Plota um histograma
#* @serializer png
#* @get /hist
function(){
  hist(rnorm(1000))
}

#* Hello world em HTML
#* @serializer html
#* @get /html
function(){
  "<html><h1>hello world</h1></html>"
}


#* @post /user
function(req, id, name) {
  list(
    id = id,
    name = name,
    body = req$body,
    raw = req$bodyRaw
  )
}
# curl --data "id=123&name=Jennifer" "http://localhost:8000/user"
