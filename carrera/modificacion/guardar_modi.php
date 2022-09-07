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

    echo "<script type='text/javascript'> window.location='../carrera.php';</script>";
}

#RECIBO LOS DATOS

$id_carrera=$_POST['id_carrera'];
$carrera=$_POST['carrera'];
$ano=$_POST['ano'];
$resol=$_POST['resol'];
$resolc=$_POST['resolc'];
$cm=$_POST['cm'];
$duracion=$_POST['duracion'];
$rm=$_POST['rm'];
$validez=$_POST['validez'];
$cohortes=$_POST['cohortes'];
$tipo_c=$_POST['tipo_c'];


?>

<?php	
$consulta = "UPDATE carrera SET carrera='$carrera', ano='$ano', resol='$resol', resolc='$resolc', cm='$cm', duracion='$duracion', rm='$rm', validez='$validez', cohortes='$cohortes', tipo_c='$tipo_c' WHERE id_carrera='$id_carrera';";
mysqli_query($conexion, $consulta);
mysqli_close($conexion); 
?>