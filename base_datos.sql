




/* ------------------------------ CREATE ---------------------- */

SHOW DATABASES; /* para ver todas las base de datos actuales */

DROP DATABASE primer_db; /* para eliminar una base de datos */

CREATE DATABASE primer_db;

USE primer_db; /* para usar una base de datos */

/* para crear una tabla en una base de datos */
CREATE TABLE empleado (
    id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);







/* inserta un nuevo registro en una tabla */
INSERT INTO empleado (nombre) 
    VALUES ("Erick");

INSERT INTO empleado (nombre) 
    VALUES ("Juan perez");

/* agregar una columna */
ALTER TABLE empleado
ADD COLUMN antiguedad INT DEFAULT 0;

INSERT INTO empleado (nombre) 
    VALUES ("Esteban");

/* ------------------------------ FIN CREATE ---------------------- */

/* ------------------------------ READ ---------------------- */

/* para mostrar todas las tablas en una base de datos */
SHOW TABLES;

/* describe una tabla */
DESCRIBE empleado;

/* muestra todo el contenido de los registros en una tabla */
SELECT * FROM empleado;

/* Para mostrar cualquier registro que coincida con la condicion*/
SELECT * FROM empleado WHERE id = 2;


/* Limita la cantidad de resultados */
SELECT * FROM empleado WHERE id = 2 LIMIT 2;

/* Indica desde donde comenzar a mostrar resultados */
SELECT * FROM empleado WHERE id = 2 LIMIT 2 OFFSET 1;

/* ------------------------------ FIN READ ---------------------- */



/* ------------------------------ UPDATE ---------------------- */


UPDATE empleado SET nombre = "Estela", antiguedad = 2 WHERE nombre="Erick";

ALTER TABLE empleado MODIFY nombre DATE;

/* mysql */
/* ALTER TABLE empleado RENAME COLUMN nombre TO fecha_ingreso DATE; */

/* mariadb */
ALTER TABLE empleado CHANGE nombre fecha_ingreso DATE DEFAULT FECHA_ACTUAL;


UPDATE empleado SET fecha_ingreso = "2024-06-07" WHERE id=2;



/* ------------------------------ FIN UPDATE ---------------------- */





/* ------------------------------ DELETE ---------------------- */
DELETE FROM empleado WHERE id = 2;


/* ------------------------------ FIN DELETE ---------------------- */