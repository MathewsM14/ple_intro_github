
library(dplyr)
library(tidyr)


conos <- tibble(
  Sabor = c('mora', 'vainilla','chocolate', 'mora', 'chocolate'),
  Precio = c(3500, 4700, 6500, 5200, 5700)
)


valoracion <- tibble(
  Tipo = c('mora','chocolate', 'vainilla'),
  Calificacion = c(2.5, 3.5, 4)
)

# Hacer merge tipo pandas
clasificado <- conos %>% left_join(valoracion, by = c("Sabor" = "Tipo"))

clasificado


# Agregar la columna Precio / Puntuacion
clasificado <- clasificado %>% mutate(`Precio/Puntuacion` = Precio / Calificacion)

clasificado


#Filtrar

clasificado %>% filter(Sabor == 'mora')


#GroupBy

helados <- tibble(
  Sabor = c('mora', 'vainilla', 'chocolate', 'mora', 'chocolate', 'vainilla'),
  Precio = c(3500, 4700, 6500, 5200, 5700, 4800),
  Ciudad = c('Bogota', 'Bogota', 'Cali', 'Medellin', 'Bogota', 'Cali')
)

#equivalente .mean()
helados %>%group_by(Sabor) %>%summarise(Precio_promedio = mean(Precio))

#equivalente .count()
helados %>%group_by(Ciudad) %>%summarise(Sabor_count = n())

#equivalente .size()
helados %>%count(Ciudad)


#agrupar por varias estadisticas

helados %>%
  group_by(Sabor) %>%
  summarise(
    mean = mean(Precio),
    max = max(Precio),
    min = min(Precio),
    count = n()
  )


#DropNA y Fillna

datos <- tibble(
  Nombre = c('Ana', 'Luis','Carlos', 'Marta', NA),
  Edad = c(25, NA, 30, 22, 28),
  Ciudad = c('Bogota', 'Cali', NA, 'Medellin', 'Cali')
)

datos %>%filter(!is.na(Edad))

datos_completo <- datos %>%
  mutate(
    across(where(is.character), ~replace_na(.x, 'Desconocido')),
    Edad = if_else(is.na(Edad), mean(Edad, na.rm = TRUE), Edad)
  )

datos_completo

datos %>%mutate(Edad = if_else(is.na(Edad), mean(Edad, na.rm = TRUE), Edad))


