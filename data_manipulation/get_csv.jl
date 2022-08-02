using CSV
using DataFrames
using Dates



# Lectura de CSV Local

datos = CSV.File("./assets/datos01.csv", DataFrame)

# Data Frame

## Forma Estándar
#  CSV.read(path, DataFrame; header="1", delim=",")
#  CSV.read(path, DataFrame; header="1", delim=";")
#  DataFrame(CSV.File(read, path; header="0", delim=";"))
#  DataFrame(CSV.File("file.csv"))



# Iterar e Imprimir 

for linea in datos
    println("valores: $(linea.ts), $(linea.ro), $(linea.tk)")
end



# Escritura de CSV Local

# path="results/$(Dates.now()).csv"

CSV.write("results/$(Dates.now()).csv", datos)

