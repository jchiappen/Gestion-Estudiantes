CREATE DATABASE Gestion_estudiantes;

CREATE TABLE Estudiantes(
	id  INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Correo VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Cursos (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    Nombre VARCHAR(255) NOT NULL,
	Descripción VARCHAR(255) NOT NULL
);

CREATE TABLE Profesores (
	id INT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(255) NOT NULL,
	Correo VARCHAR (255) UNIQUE NOT NULL
); 


ALTER TABLE Estudiantes
ADD Curso_id INT;

INSERT INTO Estudiantes (Nombre, Correo)
VALUES
('Juan Pérez', 'juan.perez@example.com'),
('María López', 'maria.lopez@example.com'),
('Carlos Sánchez', 'carlos.sanchez@example.com'),
('Ana Torres', 'ana.torres@example.com'),
('Pedro Gómez', 'pedro.gomez@example.com'),
('Sofía Fernández', 'sofia.fernandez@example.com'),
('Luis Martínez', 'luis.martinez@example.com'),
('Laura Díaz', 'laura.diaz@example.com'),
('Javier García', 'javier.garcia@example.com'),
('Elena Morales', 'elena.morales@example.com');


INSERT INTO Cursos (Nombre, Descripción)
VALUES
('Matemáticas Básicas', 'Introducción a los conceptos fundamentales de matemáticas.'),
('Física General', 'Estudio de los principios básicos de la física.'),
('Química Orgánica', 'Exploración de las moléculas orgánicas y sus reacciones.'),
('Historia Universal', 'Análisis de eventos históricos significativos.');


INSERT INTO Profesores (Nombre, Correo)
VALUES
('Laura Herrera', 'laura.herrera@example.com'),
('Carlos Ramírez', 'carlos.ramirez@example.com'),
('Andrea González', 'andrea.gonzalez@example.com'),
('Miguel Torres', 'miguel.torres@example.com');

UPDATE estudiantes
SET curso_id = 1 WHERE id IN (1,3,6,9); 


CREATE VIEW Reporte_alumnos_matriculados AS
SELECT e.Nombre AS estudiante,e.Correo,c.Nombre AS nombre_curso
FROM estudiantes e
INNER JOIN cursos c ON (e.id = c.id);

CREATE VIEW Reporte AS
SELECT e.Nombre AS estudiante,e.Correo,c.Nombre AS nombre_curso
FROM estudiantes e
LEFT JOIN cursos c ON (e.id = c.id);

UPDATE estudiantes
SET curso_id = 2 WHERE id IN (2,4,5,8);


SELECT*FROM estudiantes;
SELECT*FROM cursos;
SELECT*FROM Reporte_alumnos_matriculados;
SELECT*FROM Reporte