/* Renombrar una tabla */

ALTER TABLE usuarios RENAME TO users; 

/* Cambiar el nombre una columna */

ALTER TABLE usuarios CHANGE direccion dir VARCHAR(50); 

/* Agregar columnas */

ALTER TABLE usuarios ADD edad INT NOT NULL;

/* Borrar un columna */

ALTER TABLE usuarios DROP edad;