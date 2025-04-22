
# 1. un codigo que multiplique los vectores punto a punto y sume los resultados

# Con ciclo for
a <- c(3, 2, 4)
b <- c(1, 2, 3)

suma <- 0
producto <- 0

if (length(a) == length(b)){
  for(i in 1:length(b)){
    producto <- a[i] * b[i]
    suma <- suma + producto
  }
  print(suma)
  
}else{
  print("Los vectores tienen distintos tamaños")
}


# Con ciclo while

a <- c(3, 2, 4)
b <- c(1, 2, 3)

suma <- 0
producto <- 0
i <- 1

if (length(a) == length(b)) {
  while (i <= length(a)) {
    producto <- a[i] * b[i]
    suma <- suma + producto
    i <- i + 1
  }
  print(suma)
} else {
  print("Los vectores tienen distintos tamaños")
}

##################
# 2. un codigo que calcule el maximo de un vector

# Con ciclo for
a <- c(-3, 2, -4)

mayor <- a[1]

for(num in a){
  if(num > mayor){
    mayor <- num
  }
}
cat("El maximo del vector es:", mayor, "\n")



# Con ciclo while
a <- c(-3, 2, -4)
mayor <- a[1]
i <- 2  

while (i <= length(a)) {
  if (a[i] > mayor) {
    mayor <- a[i]
  }
  i <- i + 1
}

cat("El maximo del vector es:", mayor, "\n")




####################
# 3. un codigo que ordene un vector de menor a mayor

# Con ciclo for

a <- c(3, 2, 4, -2, 8, 6)
n <- length(a)

for(i in 1:(n-1)){
  for(j in 1:(n-i)){
    if(a[j] > a[j+1]){
      temp <- a[j]
      a[j] <- a[j+1]
      a[j+1] <- temp
    }
  }
}

print(a)


# Con ciclo while

a <- c(3, 2, 4, -2, 8, 6)
n <- length(a)
i <- 1

while (i <= n - 1) {
  j <- 1
  while (j <= n - i) {
    if (a[j] > a[j + 1]) {
      temp <- a[j]
      a[j] <- a[j + 1]
      a[j + 1] <- temp
    }
    j <- j + 1
  }
  i <- i + 1
}

print(a)

