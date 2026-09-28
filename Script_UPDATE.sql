-- Script para actualizar datos de las tablas
 
UPDATE Categorias
SET
Nombre = 'Computadoras',
Descripcion = 'Equipos de escritorio y portátiles',
Updated = GETDATE()
WHERE CategoriaId = 1;
GO
  
UPDATE Productos
SET
Nombre = 'Laptop Dell Inspiron',
Precio = 3700.00,
Stock = 15,
Updated = GETDATE()
WHERE ProductoId = 1;
GO

UPDATE Clientes
SET
Nombre = 'Juan Carlos',
Apellido = 'Perez Gomez',
Email = 'juan.perez@gmail.com',
Telefono = '987654321',
Updated = GETDATE()
WHERE ClienteId = 1;
GO
  
UPDATE Ordenes
SET
Total = 3780.00,
Updated = GETDATE()
WHERE OrdenId = 1;
GO
 
UPDATE OrdenDetalle
SET
Cantidad = 1,
PrecioUnitario = 3700.00,
SubTotal = 3700.00,
Updated = GETDATE()
WHERE DetalleId = 1;
GO