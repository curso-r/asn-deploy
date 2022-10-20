# Parte1) Exercício de plumber -------------------------------------
# 1) combo usethis para criar projetos (create_project(), use_git(), use_github() ...)
# 2) crie um arquivo endpoints.R
# 3) crie um endpoint GET que receba um argumento chamado obj
# 4) "Decore" a documentação com #* iformando os parâmetros e o Título.
# 5) crie um arquivo run.R
# 6) crie um código para inicializar a api do endpoints.R
# teste usando httr::GET() e httr::content() (pode testar no navegador também)

# Parte 2) Exercício de Docker ---------------------------------------
# Criar um Dockerfile
# - (FROM) use a imagem rstudio/plumber
# - (COPY) copie os dois arquivos do plumber (o dos endpoints e o do plumb) para o container
# - (EXPORT) exponha a porta 8080
# - (CMD) faça o comando padrão rodar o arquivo que faz o plumb. DICA: o handler é o Rscript

# Parte 3) Exercício Deploy ------------------------------------------
# Jogar os arquivos pro Github
# Criar um Cloud Run no google cloud platform
# Testar se está funcionando




# DICA: visite https://github.com/curso-r/asn-deploy para inspirações =P

# Linhas gerais
# ML(codigo) -> plumber -> dockerfile -> github ---> colocar no Cloud Run ---> GATILHO no Cloud Build + Github Actions (automatico) --> GET()
