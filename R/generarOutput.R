
generarOutput <- function(model, X_pred) {
  X_pred <- as.data.frame(t(X_pred))
  names(X_pred) <- names(model$model)[-1]
  
  y_pred <- predict(model, X_pred)
  
  print(summary(model))

  print(paste('Predicción de:', config$output$pred_csv,
              'para', config$output$country,
              'en', config$output$year,
              'es:', y_pred))  
  
  return(y_pred)
  
}
