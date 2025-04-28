
# Crear el vector de palabras
words <- c('nombre', 'Pronombres', 'verbo', 'adverbio', 'adjetivo')

# Acceder al quinto elemento (R empieza a contar desde 1)
words[5]

# Invertir el vector
rev(words)

# Crear el vector de números
numbers <- c(1, 3, 5.3)

# Mostrar el vector
numbers

# Sumar los elementos
sum(numbers)

# Obtener el tamaño (número de elementos)
length(numbers)

# Calcular la media
mean(numbers)

# Contar cuántos elementos son diferentes de cero
sum(numbers != 0)

# Redondear los números
round(numbers)

# Suma acumulativa
cumsum(numbers)

# Asignar el número redondeado a la posición 3
numbers[3] <- round(numbers[3])

# Mostrar el vector actualizado
numbers

# Ordenar los números
sort(numbers)

################Tablas

# Cargar librería
library(tibble)
library(dplyr)

# Crear el data frame
conos <- tibble(
  Sabor = c('mora', 'vainilla', 'chocolate', 'mora', 'chocolate'),
  Precio = c(3500, 4700, 6500, 5200, 5700)
)

# Ver la columna 'Precio'
conos$Precio

# Ver columnas 'Sabor' y 'Precio'
conos %>% select(Sabor, Precio)

# Invertir el orden de las filas
conos %>% slice(n():1)

# Filas de la 2 a la 3 (en R empieza desde 1)
conos %>% slice(2:3)

# Ordenar por 'Sabor' descendente
conos %>% arrange(desc(Sabor))

# Primeras 2 filas
head(conos, 2)

# Última fila
tail(conos, 1)

# Una fila aleatoria
conos %>% slice_sample(n = 1)

# Resumen estadístico de columnas numéricas
summary(conos)

# Información de estructura del data frame
glimpse(conos)

# Índices (en R, filas vienen indexadas automáticamente)
rownames(conos)

# Acceder a la fila 3
conos %>% slice(3)

# Desde la fila 2 hasta el final
conos %>% slice(2:n())

# Igual, usando `slice`
conos %>% slice(2:n())

# Filas específicas: 2 y 5
conos %>% slice(c(2, 5))

# Elemento en fila 3, columna 2 (Precio en fila 3)
conos[[3, 2]]

# Alternativamente también:
conos$Precio[3]

# Cambiar el índice a 'Sabor'
conos_i <- conos %>% column_to_rownames('Sabor')

# Ver el nuevo data frame
conos_i

# Ver columna 'Precio' en el nuevo data frame
conos_i[, 'Precio']

# Índices del nuevo data frame
rownames(conos_i)

# Precio donde el Sabor es 'chocolate'
conos_i['chocolate', 'Precio']

# Alternativamente
conos_i['vainilla', 'Precio']

# Filtrar precios mayores a 5000 (devuelve TRUE/FALSE)
conos$Precio > 5000

# Filtrar filas donde precio > 5000
conos %>% filter(Precio > 5000)



