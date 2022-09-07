<?php

$servidor = "localhost";
$usuario = "root";
$password = "";
$nombre_bd = "institutos";

$conexion = new mysqli($servidor, $usuario, $password, $nombre_bd);

if ($conexion->connect_error){
    die("Conexion fallida " .$conexion->connect_error);
}else{ 

    echo "<script type='text/javascript'> window.location='../carrera.php';</script>";
}


#RECEPCION DE DATOS ENVIADOS POR EL FORMULARIO

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

$consulta = "INSERT INTO carrera(carrera, ano, resol, resolc, cm, duracion, rm, validez, cohortes, tipo_c) VALUES('$carrera', '$ano', '$resol', '$resolc', '$cm', '$duracion', '$rm', '$validez', '$cohortes', '$tipo_c')";
mysqli_query($conexion, $consulta);
mysqli_close($conexion); 

?>
