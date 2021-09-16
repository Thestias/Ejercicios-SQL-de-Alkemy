-- Obtiene las columnas nombre, apellido y fecha de nacimiento, y las ordena por fecha de nacimiento en orden ascendente
SELECT nombre, apellido, fecha_nacimiento FROM PROFESOR ORDER BY fecha_nacimiento ASC;

-- Selecciona los profesores con un salario mayor o igual a 65000
 SELECT nombre, apellido, fecha_nacimiento FROM PROFESOR WHERE salario >= 65000

-- Profesores que nacieron en la decada del 80
SELECT * FROM PROFESOR WHERE fecha_nacimiento like '%198%'

-- Limita el numero de records que se muestran
SELECT * FROM PROFESOR LIMIT 5

-- Selecciona los profesores cuyo apellido empiece con la letra "P"
SELECT * FROM PROFESOR WHERE substr(apellido,1,1) == 'P'

-- Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
SELECT * FROM PROFESOR WHERE fecha_nacimiento like '%198%' AND salario >= 85000
