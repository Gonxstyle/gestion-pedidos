<?php 
echo var_dump($_POST);
$nombre_usuario = $_POST['nombre_usuario'];
$email_usuario = $_POST['email_usuario'];
include 'db/conexion.php';
$consulta ="INSERT INTO usuarios
VALUES
(NULL,'$nombre_usuario','$email_usuario')";
mysqli_query($conexion,$consulta);
?>