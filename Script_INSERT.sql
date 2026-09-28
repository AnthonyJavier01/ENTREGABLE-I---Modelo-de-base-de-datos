-- Script para insertar datos en las tablas
 
INSERT INTO Categorias
(
Nombre,
Descripcion
)
VALUES
('Laptops','Equipos portátiles'),
('Celulares','Teléfonos móviles'),
('Accesorios','Periféricos');
GO
 
INSERT INTO Productos
(
Nombre,
Precio,
Stock,
CategoriaId
)
VALUES
('Laptop Dell',3500.00,10,1),
('iphone 15',4500.00,20,2),
('Mouse Logitech',80.00,50,3);
GO
 
INSERT INTO Clientes
(
Nombre,
Apellido,
Email,
Telefono,
DNI
)
VALUES
('Juan','Perez','juan@gmail.com','999111222','34567855'),
('Maria','Lopez','maria@gmail.com','999222333','23456578');
GO
 
INSERT INTO Ordenes
(
ClienteId,
Total
)
VALUES
(1,3580.00);
GO
 
INSERT INTO OrdenDetalle
(
OrdenId,
ProductoId,
Cantidad,
PrecioUnitario,
SubTotal
)
VALUES
(1,1,1,3500.00,3500.00),
(1,3,1,80.00,80.00);
GO