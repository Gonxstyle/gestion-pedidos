SELECT * FROM usuarios;
SELECT * FROM pedidos;
SELECT * FROM productos;

SELECT id_usuario FROM usuarios order by id_usuario DESC limit 1;

select 
pedidos.id_pedido as Pedido, 
productos.nombre_producto as Artículos,
detalles.cantidad as CANT, 
productos.precio_producto as Precio
from pedidos
join detalles
on pedidos.id_pedido = detalles.id_pedido
join productos
on productos.id_producto = detalles.id_producto;




select 
pedidos.id_pedido as pedido, 
productos.nombre_producto as articulo,
detalles.cantidad as cantidad, 
productos.precio_producto as precio
from pedidos
join detalles
on pedidos.id_pedido = detalles.id_pedido
join productos
on productos.id_producto = detalles.id_producto
;

