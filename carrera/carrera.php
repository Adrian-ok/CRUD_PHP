<?php
$servidor = "localhost";
$usuario = "root";
$password = "";
$nombre_bd = "institutos";

$conexion = new mysqli($servidor, $usuario, $password, $nombre_bd);

if ($conexion->connect_error){
    die("Conexion fallida " .$conexion->connect_error);
    
}else{ 

    echo "";
}

$duracion=$_GET['duracion'];
$nombre=$_GET['nombre'];
$resolm=$_GET['resolm'];

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema Instituto</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <!--CSS Custom-->
    <link rel="stylesheet" href="../main_style.css">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</head>

<body class="bg-light">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
          <a class="navbar-brand" href="../index.html">
            <img src="../img/pagina-de-inicio.png" width="40">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto" id="link_container">
              <a class="nav-link active" href="#">Campo</a>
              <a class="nav-link active" href="carrera.php">Carrera</a>
              <a class="nav-link active" href="#">Materia</a>
              <a class="nav-link active" href="#">Tipo Materia</a>
            </div>
          </div>
        </div>
    </nav>

    <div class="container my-3">
        <div class="row">
            <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
                <button class="btn btn-success"><a href="alta/form_alta.php" style="text-decoration: none; color:white;">Añadir Carrera</a></button>

                <form class="form-control" action="carrera.php" method="GET" id="form_filtro">

                    <input class="form-control" type="text" placeholder="Duracion" name="duracion">
                    <input class="form-control" type="text" placeholder="Nombre" name="nombre">
                    <input class="form-control" type="text" placeholder="Resolucion" name="resolm">

                    <div class="d-grid gap-2">
                        <button class="btn btn-outline-primary" type="sumbit">Filtrar</button>
                    </div>
                </form>
                


            </div>

            <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
                <?php
                if($duracion=="" and $nombre=="" and $resolm==""){$sql = "SELECT * FROM carrera";}
                else{
                    if($duracion!="" and $nombre=="" and $resolm==""){
                        $sql = "SELECT * FROM carrera WHERE duracion='".$duracion."';";
                    }
                    else{
                        if($duracion=="" and $nombre!="" and $resolm==""){
                            $sql = "SELECT * FROM carrera WHERE carrera LIKE'%".$nombre."%';";
                        }
                        else{
                            if($duracion=="" and $nombre=="" and $resolm!=""){
                                $sql = "SELECT * FROM carrera WHERE rm LIKE'%".$resolm."%';";
                            }
                        }
                    }
                }
                $res = $conexion->query($sql);
                ?>

                <table class="table table-secondary table-hover">
                    <thead>
                        <tr>
                            <th>Carrera</th>
                            <th>Año</th>
                            <th>Resolucion</th>
                            <th>Resol_C</th>
                            <th>cm</th>
                            <th>Duracion</th>
                            <th>rm</th>
                            <th>Validez</th>
                            <th>Cohortes</th>
                            <!--<th>Tipo_C</th>-->	
                            <th>Acciones</th>
                        </tr>	
                    </thead>

                    <?php

                    while( $fila = $res->fetch_assoc()){

                    ?>

                    <tbody>
                        <tr>
                            <td><?php echo $fila['carrera'];?></td>
                            <td><?php echo $fila['ano'];?></td>
                            <td><?php echo $fila['resol'];?></td>
                            <td><?php echo $fila['resolc'];?></td>
                            <td><?php echo $fila['cm'];?></td>
                            <td><?php echo $fila['duracion'];?></td>
                            <td><?php echo $fila['rm'];?></td>
                            <td><?php echo $fila['validez'];?></td>
                            <td><?php echo $fila['cohortes'];?></td>

                            <td>
                                <a href="modificacion/modi_c.php?v1=<?php echo $fila['id_carrera'];?>
                                &v2=<?php echo $fila['carrera'];?>
                                &v3=<?php echo $fila['ano'];?>
                                &v4=<?php echo $fila['resol'];?>
                                &v5=<?php echo $fila['resolc'];?>
                                &v6=<?php echo $fila['cm'];?>
                                &v7=<?php echo $fila['duracion'];?>
                                &v8=<?php echo $fila['rm'];?>
                                &v9=<?php echo $fila['validez'];?>
                                &v10=<?php echo $fila['cohortes'];?>
                                &v11=<?php echo $fila['tipo_c'];?>">
                                <img src="../img/editar.png" width="30">
                                </a>

                                <a data-bs-toggle="modal" data-bs-target="#modal_baja"><img src="../img/borrar.png" width="30"></a>
                            </td>

                    <?php
                    }
                    ?>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>

    <div class="modal fade" id="modal_baja" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Eliminar Registro</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Realmente desea eliminar el registro</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                <button class="btn btn-primary"><a href="baja/borrar.php?v1=<?php echo $fila['id_carrera'];?>" style="text-decoration: none; color:white;">Eliminar</a></button>
            </div>
            </div>
        </div>
    </div>


</body>
</html>