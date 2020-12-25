path <- '~\\GitHub\\gapminder-data-predicter\\'

setwd(path)

lapply(paste0('R\\', list.files(path = 'R\\', recursive = TRUE)), source)

inputarNansApp(path)
getwd()
