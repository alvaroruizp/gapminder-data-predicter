


generarModelo <- function(df) {
  # Convertimos a tipo dataframe
  df <- as.data.frame(df)
  
  # Separamos X e y
  X <- df[,2:ncol(df)]
  y <- df[,1]
  
  # Generamos el modelo
  model <- lm(y ~., X)
  
  return(model)
}


train_test_split <- function(df) {
  smp_size <- floor(0.75 * nrow(df))
  
  set.seed(42)
  train_ind <- sample(seq_len(nrow(df)), size = smp_size)
  
  train <- df[train_ind, ]
  test <- df[-train_ind, ]
  
  
  return(list(train, test))
}

