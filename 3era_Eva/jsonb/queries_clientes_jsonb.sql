-- Condición en el where por el valor F del atributo genero del campo contactos
-- **Tenemos que utilizar ->>
SELECT *
FROM Clientes
WHERE contactos ->> 'genero' = 'F'
;

-- En el select también podemos mostrar los campos del campo jsonb, utilizando siempre el operador "->>"
SELECT contactos ->> 'correo' --as Correo /*Si necesitamos pintar varios campos de un campo jsonb, es recomendable darle un alias a cada uno*/
, contactos ->> 'genero'
FROM Clientes
;

-- Where utilizando el operador "@>", a diferencia del operador "->>", solo se puede utilizar en el WHERE
SELECT *
FROM Clientes
--WHERE contactos ->> 'genero' = 'F'
WHERE contactos @> '{"genero": "F"}'
;


--UPDATE del campo jsonb mediante la funcion jsonb_set, Utilizamos también para el where el operador "->>" que nos permite filtrar por los valores del campo jsonb.
UPDATE clientes
SET contactos = jsonb_set(contactos, '{activo}', 'true')
WHERE contactos ->> 'genero' = 'M'
;


-- Filtrar los registros, preguntando si tiene una clave específica el campo jsonb
SELECT id
, nombre
, empresa
, ventas
, contactos
FROM public.clientes
WHERE contactos ? 'activo'
;
