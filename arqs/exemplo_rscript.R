# comentario para exemplo de merge entre dois repos
# o professor alterou exatamente o mesmo arquivo que o Juan
# quero mais um coment
# quero mais um coment3

# quero mais um coment4
# quero mais um coment5

args <- commandArgs(TRUE)

print(args)

valor <- as.numeric(args[1]) + as.numeric(args[2])

print(valor)
cat("OK!\n")
