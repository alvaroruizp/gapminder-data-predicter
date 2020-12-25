

# Creamos una variable config
leerConfig <- function(path) {
  library(XML)
  
  # Especificamos ruta de config
  url <- '\\config\\config.xml'
  config_path <- paste0(path, url)
  
  # Parseamos a lista
  config <- XML::xmlToList(xmlParse(paste0(path, url)))
  
  # Transformamos lista de csv a predicir en vector
  csv_list <- strsplit(config$input$csv, ',')[[1]]
  config$input$csv <-  del_spaces(csv_list)
  
  return(config)
}



# Eliminamos espacios en blanco
del_spaces <- function(csv_names) {
  for (i in seq(length(csv_names))) {
    csv_names[i] <-  trimws(csv_names[i])
  }
  return(csv_names)
}


  
