USE test;

# CRUD -> Create, Read, Update, Delete

# * comodin para traer todos los campos
SELECT id,name,birthday FROM transfer;
SELECT * FROM transfer;

# Ingresar datos
INSERT INTO transfer(id,name,birthday,age,married,amount) VALUES (102,"Tzuzul","1998-05-10",24,false,50);

# Editar registros
#UPDATE transfer SET amount=100.99; # Esta sentencia actualiza todos los registros
UPDATE transfer SET amount=100.99 WHERE id=100;

# Eliminar registros
DELETE FROM transfer WHERE id=100;