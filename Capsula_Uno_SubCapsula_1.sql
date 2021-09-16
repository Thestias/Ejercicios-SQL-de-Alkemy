-- Creando tabla
CREATE TABLE CURSO (
 "Código de curso" INTEGER PRIMARY KEY AUTOINCREMENT,
 Nombre VARCHAR NOT NULL,
 Descripcion VARCHAR,
 Turno VARCHAR NOT NULL
)

-- Creando columna Cupo
ALTER TABLE CURSO 
ADD Cupo INT;

-- Añadiendo data
INSERT INTO CURSO ("Código de curso", nombre, descripcion, turno, cupo)
VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35), (102, "Matemática Discreta","","Tarde",30)

-- Testeando que las constraints se añadieron correctamente
INSERT INTO CURSO ("Código de curso", nombre, descripcion, turno, cupo)
VALUES (101, null,"Algoritmos y Estructuras de Datos","Mañana",35)

INSERT INTO CURSO ("Código de curso", nombre, descripcion, turno, cupo)
VALUES (101, "Matematica","Algoritmos y Estructuras de Datos","Mañana",35)

-- Modificando el cupo de los cursos
UPDATE CURSO
SET cupo = 25

-- Borrando el curso Algoritmos
DELETE FROM CURSO WHERE nombre == 'Algoritmos'
