<?php

$servidor = "localhost";
$usuario = "root";
$password = "";
$nombre_bd = "institutos";

$conexion = new mysqli($servidor, $usuario, $password, $nombre_bd);

if ($conexion->connect_error){
    die("Conexion fallida " .$conexion->connect_error);
}else{

    #SCRIP QUE VUELVE A LA DIRECCION QUE LE INDIQUES ''OJO CON LA RUTA'' 

    echo "OK";
}



$id_carrera=$_GET['v1'];

?>

<?php
$consulta="DELETE FROM carrera WHERE id_carrera = $id_carrera;";
$consulta = $conexion->query($consulta);	
?>