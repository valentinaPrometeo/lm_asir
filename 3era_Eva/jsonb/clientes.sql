--CLIENTES: id, nombre, empresa, ventas, contactos  


-- CREATE TABLE Clientes (
-- 	id SERIAL PRIMARY KEY,
-- 	nombre VARCHAR(50) NOT NULL,
-- 	empresa VARCHAR(250) NULL,
-- 	ventas int NULL,
-- 	contactos jsonb NULL
-- );


INSERT INTO Clientes (nombre, empresa, ventas, contactos)
VALUES (
	'Valve'
	, 'Valve'
	, 30
	, '{
		"nombre":"John",
		"apellidos":"Doe",
		"genero": "M",
		"correo": "john.doe@mail.com",
		"telefono": "555888777",
		"direccion": "123 Pelham"
    }' 
);
INSERT INTO Clientes (nombre, empresa, ventas, contactos)
VALUES (
	'Valve'
	, 'Valve'
	, 30
	, '{
		"nombre":"Jane",
		"apellidos":"Doe",
		"genero": "F",
		"correo": "jane.doe@mail.com",
		"telefono": "777888999",
		"direccion": "321 Pelham"
    }' 
)
;