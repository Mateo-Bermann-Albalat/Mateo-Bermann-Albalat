-- We create the table
CREATE TABLE "Data Management with SQL" (
    Process  VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE ,
    Use VARCHAR(150) NOT NULL UNIQUE ,
    Level VARCHAR(30) NOT NULL);
-- We fill it with information
INSERT INTO "Data Management with SQL" (Process,Use,Level)
    VALUES
        ('Data extraction',
         'Choosing the relevant variables',
         'Advanced'),
        ('Data cleaning',
         'Guarantee usability of the data',
         'Advanced'),
        ('Database design',
         'Making a structrure for the generated data',
         'Intermediate'),
        ('User support interface',
         'Increase final user autonomy',
         'Low');
-- Choose all the columns and change the titles
SELECT Process AS "Process through SQL",Use AS "Use", Level as "Level"
FROM "Data Management with SQL" ;
-- And delete the table
DROP TABLE "Data Management with SQL"