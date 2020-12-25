# Gap Minder Data Predictor
**R project to predict nulls values for the gapminder database.**

¡Bienvenido a mi predictor de valores nulls para los datos de Gap Minder!
Este proyecto tiene como finalidad el desarrollo de una aplicación end-to-end basada en R que pueda manejar cualquiera de las bases de datos de gapminder como input para un país y año concreto y devolver un output con un valor predicho a partir de estos.

Por ejemplo, se podría utilizar la tasa de suicidios, el número de embarazos por año y el consumo de petróleo en un país dado, para predecir su rendimiento académico para ese año. Curioso, ¿verdad?

Como puede deducirse, el objetivo del proyecto es el desarrollo en sí del programa, no la fiabilidad de la predicción. La meta es la creación de funciones anidadas con scripts separados que converjan en un script principal y la documentación en logs de los errores. Por ese motivo, aunque los datos generados por el programa parten de un modelo de regresión linear, este no ha sido específicamente ajustado más allá del entrenamiento (no se emplea hiperparametrización ni el manejo de series temporales). Así pues, podríamos decir que los datos obtenidos tienen un fin didáctico y no pretenden ser válidos para ningún tipo de informe o análisis exploratorio con las variables usadas.

**¿Cómo se usa?**
-	En primer lugar, deben descargarse de www.gapminder.org/data las variables que quieran ser usadas como predictores y colocarse en la carpeta /data.
-	En segundo lugar, descargar la variable que quiere ser predicha y colocarla en la misma carpeta.
-	Después, en el archivo config.xml de la carpeta /config se sustituyen en ‘input’ las variables ‘csv’ por los csv predictores, y ‘sep’ con el separador empleado. En ‘output’ el país a predecir, el año y el nombre del csv donde se encuentra en valor nulo que queremos predecir.
-	Por último, ejecutar el programa desde ‘main’ en la /misc.
