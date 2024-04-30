## Acceso a la DATA ####
# Instalar y cargar el paquete googlesheets4
if (!requireNamespace("googlesheets4", quietly = TRUE)) {
  install.packages("googlesheets4")
}
library(googlesheets4)

# Configurar la autenticación
# Esto abrirá una página en el navegador para que inicies sesión en tu cuenta de Google
gs4_auth()

# Leer los datos de la hoja de cálculo
sheet_url <- "https://docs.google.com/spreadsheets/d/1E_JWm4vF41BseLDe5-WI-yy7CptzhW5GuOUWxdliNmg/edit?usp=sharing"
datos <- read_sheet(sheet_url)

# Ver los datos
print(datos)

## Calculo simple ####
# Calculando la media de una columna llamada 'PRECIO_KG'
media_PRECIO_KG <- mean(datos$PRECIO_KG, na.rm = TRUE)
print(media_PRECIO_KG)
