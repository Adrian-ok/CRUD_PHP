<?php

$servidor = "localhost";
$usuario = "root";
$password = "";
$nombre_bd = "institutos";

$conexion = new mysqli($servidor, $usuario, $password, $nombre_bd);

if ($conexion->connect_error){
    die("Conexion fallida " .$conexion->connect_error);
}else{
    #echo "ok";
}

?>