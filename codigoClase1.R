
a <- c(3,2,4)
b <- 1:3

b[a[3]]

length(a) #longitud del vector

for(var in a){
  print(var)
}

for(var in b){
  print(var)
}

cat("texto", a[1], "\n")
cat("texto", b[1], "\n")

for(vara in a){
  for (varb in b){
    cat("vara:",vara, "varb:", varb, "\n" )
  }
}




# un codigo que multiplique los vectores punto a punto y sume los resultados

a <- c(3, 2, 4)
b <- c(1, 2, 3)

longituda <- length(a)
longitud <- length(b)
suma <- 0
producto<- 0

rango <- 1:longitud
if (longitud == longituda){
  for(i in rango){
    producto <- a[i] * b[i]
    suma <- suma + producto
  }
  
  print(suma)
  
}else{
  print("Los vectores tienen distintos tamaños")
}



# un codigo que calcule el maximo de un vector

a <- c(-3, -2, -4)

mayor <- a[1]

for(num in a){
  if(num > mayor){
    mayor <- num
  }
}
cat("El maximo del vector es:", num, "\n")


# un codigo que ordene un vector de menor a mayor

a <- c(3, 2, 4)
cont = 1

for(i in 1:length(a)){
  menor <- a[i]
  for (num in a){
    if(num > menor){
      menor <- num
    }
    a[cont] = menor
    cont = cont +1
  }

}

print(a)



