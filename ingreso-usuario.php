<?php 

$nombre_usuario = $_POST['nombre_usuario'];
$email_usuario = $_POST['email_usuario'];
include 'db/conexion.php';


$insertar_usuario ="INSERT INTO usuarios
VALUES
(NULL,'$nombre_usuario','$email_usuario')";
mysqli_query($conexion,$insertar_usuario);

$id_usuario =     mysqli_insert_id($conexion);





$insertar_pedido = "INSERT INTO pedidos VALUES 
(NULL,$id_usuario,NULL,'no')";
$datos = mysqli_query($conexion, $insertar_pedido);

$id_pedido =     mysqli_insert_id($conexion);



echo "Hola $nombre_usuario tienes id $id_usuario y tu numero de pedido es $id_pedido.";
?>