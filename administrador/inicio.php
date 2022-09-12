<?php include('template/cabecera.php');?>

<link rel="stylesheet" href="../css/estiloAdmin/bootstrap.min.css">

<div class="card">
    <div class="card-body">
    <div class="col-md-12 text-info">
                <div class="jumbotron jumbotron">
                <h1 class="display-1 text-success">Bienvenido <?php echo $nombreUsuario;?> 
                    <br>
                    <img class="img-thumbnail bg-dark" width="100" src="../img/admin.png" alt="">
                </h1>
                <p class="lead">Vamos a administrar nuestros productos en el sitio web</p>
                <hr class="my-3">
                <p>More info</p>
                <p class="lead">
                    <a class="btn btn-primary btn-lg" href="seccion/productos.php" role="button">Administrar</a>
                </p>
                
            </div>
        </div>
    </div>
</div>
        
<?php include('template/pie.php');?>