SELECT * FROM usuarios;
SELECT * FROM pedidos;
SELECT * FROM productos;

select 
pedidos.id_pedido as pedido, 
productos.nombre_producto as articulo,
detalles_pedidos.cantidad_detalles as cantidad, 
productos.precio_producto as precio
from pedidos
join detalles_pedidos
on pedidos.id_pedido = detalles_pedidos.id_pedido
join productos
on productos.id_producto = detalles_pedidos.id_producto
;

