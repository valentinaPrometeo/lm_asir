/*
    Tabla productos:
     - producto VARCHAR(250)
     - caracteristicas JSONB (color, marca, material)

    Insertar 3 registros nuevos;
*/

CREATE TABLE Productos (
	id SERIAL PRIMARY KEY,
	producto VARCHAR(50) NOT NULL,	
	caracteristicas jsonb NULL
);


INSERT INTO Productos (producto, caracteristicas)
VALUES (
	'Camisa'
	, '{
		"color":"Azul marino",
		"marca":"H&M",
		"material":"lino"
    }' 
);

INSERT INTO Productos (producto, caracteristicas)
VALUES
(
	'Portatil'
	, '{
		"color": "Negro",
		"marca": "Asus",
		"material": "Plastico"
    }' 
);

INSERT INTO Productos (producto, caracteristicas)
VALUES
(
	'Cuaderno'
	, '{
		"color":"Verde",
		"marca":"Rubio",
		"material":"Papel"
    }'  
)
;

-- Seleccionar el producto y el color
SELECT producto, caracteristicas ->> 'color' as color
from productos;


-- Where que filtre un registro de los 3 por el valor de la marca
SELECT * from productos
WHERE caracteristicas ->> 'marca' = 'Asus'
;

-- UPDATE DONDE, EN LOS REGISTROS QUE TENGAN UN MATERIAL 'LINO' AÑADIR UNA CLAVE CON jsonb_set llamada 'sensible' con valor true
UPDATE productos
SET caracteristicas = jsonb_set(caracteristicas, '{sensible}', 'true')
WHERE caracteristicas ->> 'material' = 'lino'
;