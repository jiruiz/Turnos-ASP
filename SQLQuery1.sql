CREATE DATABASE templateDB;

use templateDB;
SELECT * FROM datosTurno;

CREATE TABLE datosTurno (
    ID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Servicio VARCHAR(50),
    Telefono INT,
    Mail VARCHAR(50),
    Comentario VARCHAR(500)
);
INSERT INTO datosTurno (Nombre, Apellido, Servicio, Telefono, Mail, Comentario)
VALUES 
    ('Juan', 'Pérez', 'Soporte técnico', 123456789, 'juan@example.com', 'Comentario sobre el servicio'),
    ('María', 'González', 'Ventas', 987654321, 'maria@example.com', 'Consulta sobre productos'),
    ('Carlos', 'Martínez', 'Atención al cliente', 555555555, 'carlos@example.com', 'Solicitud de información');


SELECT * FROM datosTurno;