library(tidyverse)

# Directorio que contiene los archivos
directorio <- ""

# Lista de todos los archivos en el directorio
archivos <- list.files(directorio)

dataframes <- list()

# Recorre cada nombre de archivo
for (archivo in archivos) {
  ruta_archivo <- file.path(directorio, archivo)
  tryCatch({
    df <- read.delim(ruta_archivo, header = FALSE, quote= "")
    dataframes[[archivo]] <- df
    cat("Leído el archivo:", archivo, "\n")
  }, error = function(e) {
    cat("Error al leer el archivo:", archivo, "\n")
  })
}






