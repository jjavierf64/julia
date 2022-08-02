using CSV
using DataFrames
using Dates



# Lectura de CSV Local

datos = CSV.File("./assets/datos01.csv")

# Data Frame

## Forma Estándar
#  CSV.read(path, DataFrame; header="1", delim=",")
#  CSV.read(path, DataFrame; header="1", delim=";")
#  DataFrame(CSV.File(read, path; header="0", delim=";"))
#  DataFrame(CSV.File("file.csv"))

# CSV.read(path, DataFrame; header=["first","second","third","fourth"])


# Iterar e Imprimir 

for linea in datos
    println("valores: $(linea.ts), $(linea.ro), $(linea.tk)")
end


# Modificación de DataFrames

datosdf = DataFrame(datos; header=["a", "b", "c"])

## Tomar una subsección
#  df[fil:as, colum:nas]

vector_columna_a = datosdf[!, :a]
vector_columna_b = datosdf[!, :b]

df_columna_a = datosdf[!, [:a]]

df_fila_1 = datosdf[1, :]

# Eliminar una fila

datosdf = datosdf[2:end, :]

## Reemplazar de la Columna c, los datos "None" por 1
replace!(df.c, "None" => 1)





# Escritura de CSV Local


# path="results/$(Dates.now()).csv"
CSV.write("results/$(Dates.now()).csv", datos)

