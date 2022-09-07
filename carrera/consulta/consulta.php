<?php

include("../../conexion.php")

?>

<?php

$sql = "SELECT * FROM carrera ";
$res = $conexion->query($sql);


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
          <a class="navbar-brand" href="../../index.html">
            <img src="../../img/pagina-de-inicio.png" width="40">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto" id="link_container">
              <a class="nav-link active" href="#">Campo</a>
              <a class="nav-link active" href="../carrera.php">Carrera</a>
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
                <form class="d-flex" role="search" id="form_filtro" method="$_GET">
                    <input class="form-control me-2" type="search" placeholder="Filtrar PHP" name="busqueda">
                    <button class="btn btn-outline-primary" type="submit" name="btn_filtro">Filtrar</button>
                </form>
                
                <form class="d-flex" role="search" id="form_filtro">
                    <input class="form-control me-2" type="search" placeholder="Filtrar JS">
                </form>
                <button class="btn btn-success"><a href="consulta/consulta.php" style="text-decoration: none; color:white;">Filtrar</a></button>

            </div>

            <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
                <?php
                $where="";

                if (isset($_GET['btn_filtrar'])){
                    $buscar = $_GET['buscar'];

                    if (isset($_GET['buscar']))
                    {
                        $where="WHERE carrera.carrera LIKE'%'".$buscar."%' OR ano LIKE'%".$buscar."%'";
                    }


                }



                <?php
                if ($busqueda==""){$sql = "SELECT * FROM carrera";}
                else{$sql = "SELECT * FROM carrera where duracion='".$busqueda."';";}

                $res = $conexion->query($sql);
                ?>

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
                                <img src="../../img/editar.png" width="30">
                                </a>

                                <a href=""><img src="../img/borrar.png" width="30"></a>
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



</body>
</html>