-- crear la base de datos 
CREATE DATABASE felipe_castaneda_357;
--conectarse a la BBDD
\c felipe_castaneda_357
-- Crea una tabla llamada clientes, con una columna llamada email de tipo varchar(50),
-- una columna llamada nombre de tipo varchar sin limitación, una columna llamada
-- teléfono de tipo varchar(16), un campo llamado empresa de tipo varchar(50) y una
-- columna de tipo smallint, para indicar la prioridad del cliente. Ahí se debe ingresar un
-- valor entre 1 y 10, donde 10 es más prioritario. (2 Puntos)

CREATE TABLE clientes (
    email VARCHAR(50),
    nombre VARCHAR,
    telefono VARCHAR(16),
    empresa VARCHAR(50),
    prioridad smallint
);

-- Ingresa 5 clientes distintos con distintas prioridades, el resto de los valores los
-- puedes inventar. (1 Puntos)

INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) VALUES ('email1@email.com','Pedro', '1111111', 'empresa1', 2);
INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) VALUES ('email2@email.com','Juan', '2222222', 'empresa2', 4);
INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) VALUES ('email3@email.com','Diego', '3333333', 'empresa3', 6);
INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) VALUES ('email4@email.com','Rodrigo', '4444444', 'empresa4', 8);
INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) VALUES ('email5@email.com','Sergio', '5555555', 'empresa5', 10);

-- 8. Selecciona los tres clientes de mayor prioridad. (2 Puntos)
SELECT * from clientes ORDER BY prioridad DESC LIMIT 3;

-- 9. Selecciona, de la tabla clientes, una prioridad o una empresa, de forma que el
-- resultado devuelva 2 registros. (2 Puntos)

Select * from clientes WHERE empresa = 'empresa1' OR prioridad=10;

-- 10. Sal de postgreSQL
