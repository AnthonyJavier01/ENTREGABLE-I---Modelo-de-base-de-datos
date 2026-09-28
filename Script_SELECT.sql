-- Script para visualizar datos de las tablas


/* Categorias */

SELECT
CategoriaId,
Nombre,
Descripcion,
Created,
Updated
FROM Categorias
WHERE Deleted IS NULL;
GO

/* Productos */

SELECT
P.ProductoId,
P.Nombre,
P.Precio,
P.Stock,
C.Nombre AS Categoria,
P.Created,
P.Updated
FROM Productos P
INNER JOIN Categorias C
ON P.CategoriaId = C.CategoriaId
WHERE P.Deleted IS NULL
AND C.Deleted IS NULL;
GO
 
 
/* Clientes */
 
SELECT
ClienteId,
Nombre,
Apellido,
DNI,
Email,
Telefono,
Created,
Updated
FROM Clientes
WHERE Deleted IS NULL;
GO
 
 
/* Ordenes */
 
SELECT
O.OrdenId,
C.Nombre + ' ' + C.Apellido AS Cliente,
C.DNI,
O.FechaOrden,
O.Total,
O.Created,
O.Updated
FROM Ordenes O
INNER JOIN Clientes C
ON O.ClienteId = C.ClienteId
WHERE O.Deleted IS NULL
AND C.Deleted IS NULL;
GO
 
 
/* OrdenDetalle */
 
SELECT
OD.DetalleId,
OD.OrdenId,
P.Nombre AS Producto,
OD.Cantidad,
OD.PrecioUnitario,
OD.SubTotal,
OD.Created,
OD.Updated
FROM OrdenDetalle OD
INNER JOIN Productos P
ON OD.ProductoId = P.ProductoId
INNER JOIN Ordenes O
ON OD.OrdenId = O.OrdenId
WHERE OD.Deleted IS NULL
AND P.Deleted IS NULL
AND O.Deleted IS NULL;
GO
 
 
/* Consulta General de Ventas */
 
SELECT
O.OrdenId,
C.Nombre + ' ' + C.Apellido AS Cliente,
C.DNI,
P.Nombre AS Producto,
OD.Cantidad,
OD.PrecioUnitario,
OD.SubTotal,
O.Total,
O.FechaOrden
FROM Ordenes O
INNER JOIN Clientes C
ON O.ClienteId = C.ClienteId
INNER JOIN OrdenDetalle OD
ON O.OrdenId = OD.OrdenId
INNER JOIN Productos P
ON OD.ProductoId = P.ProductoId
WHERE O.Deleted IS NULL
AND C.Deleted IS NULL
AND OD.Deleted IS NULL
AND P.Deleted IS NULL;
GO