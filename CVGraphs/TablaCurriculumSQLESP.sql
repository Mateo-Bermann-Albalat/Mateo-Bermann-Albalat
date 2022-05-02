-- Creamos la tabla
CREATE TABLE "Gestión de datos con SQL" (
    Proceso  VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE ,
    Uso VARCHAR(150) NOT NULL UNIQUE ,
    Nivel VARCHAR(30) NOT NULL);
-- La rellenamos con información
INSERT INTO "Gestión de datos con SQL" (Proceso,Uso,Nivel)
    VALUES
        ('Extracción de datos',
         'Seleccionar las variables relevantes',
         'Avanzado'),
        ('Limpieza de datos',
         'Garantizar la usabilidad de la información',
         'Avanzado'),
        ('Diseño de base de datos ',
         'Crear una estructura para los datos generados ',
         'Intermedio'),
        ('Creación de un sistema de apoyo al usuario',
         'Facilitar la autonomía de los usuarios finales',
         'Bajo');
-- Escogemos todos los datos y cambiamos el título
SELECT Proceso AS "Proceso mediante SQL",Uso AS "Uso", Nivel as Nivel
FROM "Gestión de datos con SQL" ;
-- Y eliminamos la tabla ya que solo nos interesa la consulta
DROP TABLE "Gestión de datos con SQL"