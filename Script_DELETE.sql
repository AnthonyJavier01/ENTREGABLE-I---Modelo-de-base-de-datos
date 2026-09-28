-- Script para eliminar lógicamente registros
  
UPDATE Categorias
SET
Deleted = GETDATE(),
WHERE CategoriaId = 1;
GO

UPDATE Productos
SET
Deleted = GETDATE(),
WHERE ProductoId = 1;
GO
  
UPDATE Clientes
SET
Deleted = GETDATE(),
WHERE ClienteId = 1;
GO
  
UPDATE Ordenes
SET
Deleted = GETDATE(),
WHERE OrdenId = 1;
GO

UPDATE OrdenDetalle
SET
Deleted = GETDATE(),
WHERE DetalleId = 1;
GO

-- Script para eliminar datos fisicamente

DELETE FROM OrdenDetalle
WHERE DetalleId = 1;
GO
 
DELETE FROM Ordenes
WHERE OrdenId = 1;
GO

DELETE FROM Productos
WHERE ProductoId = 1;
GO
 
DELETE FROM Clientes
WHERE ClienteId = 1;
GO
 
DELETE FROM Categorias
WHERE CategoriaId = 1;
GO