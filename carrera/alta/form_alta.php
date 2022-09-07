<?php

include("../../conexion.php")

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
    <link rel="stylesheet" href="../../main_style.css">
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
        <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4"></div>

            <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
                <form class="form-control" action="alta.php" method="post">

                  <div class="mb-1">
                      <label for="carrera" class="form-label">Nombre Carrera</label>
                      <input type="text" class="form-control" id="carrera" name="carrera" autofocus >

                      <label for="ano" class="form-label">Años</label>
                      <input type="number" class="form-control" id="ano" name="ano">

                      <label for="resol" class="form-label">Resolucion</label>
                      <input type="text" class="form-control" id="resol" name="resol">

                      <label for="resolc" class="form-label">Resolucion C</label>
                      <input type="text" class="form-control" id="resolc" name="resolc">

                      <label for="cm" class="form-label">Cantidad Materias</label>
                      <input type="number" class="form-control" id="cm" name="cm">

                      <label for="duracion" class="form-label">Duracion</label>
                      <input type="number" class="form-control" id="duracion" name="duracion">

                      <label for="rm" class="form-label">RM</label>
                      <input type="text" class="form-control" id="rm" name="rm">

                      <label for="validez" class="form-label">Validez</label>
                      <input type="text" class="form-control" id="validez" name="validez">

                      <label for="cohortes" class="form-label">Cohortes</label>
                      <input type="text" class="form-control" id="cohortes" name="cohortes">

                      <label for="tipo_c" class="form-label">Tipo Carrera</label>
                      <select id="tipo_C" class="form-select" name="tipo_c">
                        <option> 1 </option>
                        <option> 2 </option>
                      </select>

                      <button class="btn btn-primary" type="submit" id="btn_guardar">Guardar</button>
                  </div>
                 
                </form>

            </div>

            <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4"></div>
        </div>
    </div>



</body>
</html>