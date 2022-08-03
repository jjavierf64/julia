using Printf
using Statistics
using CSV
using Plots
println("Hello Graph")



datos = CSV.File("./assets/datos01.csv")
x= []
y= []

for row in datos
    append!(x, row[1])
    append!(y, row[2])
end

plot(x,y)