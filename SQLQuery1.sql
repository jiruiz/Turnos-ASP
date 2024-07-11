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
    ('Juan', 'P�rez', 'Soporte t�cnico', 123456789, 'juan@example.com', 'Comentario sobre el servicio'),
    ('Mar�a', 'Gonz�lez', 'Ventas', 987654321, 'maria@example.com', 'Consulta sobre productos'),
    ('Carlos', 'Mart�nez', 'Atenci�n al cliente', 555555555, 'carlos@example.com', 'Solicitud de informaci�n');


SELECT * FROM datosTurno;