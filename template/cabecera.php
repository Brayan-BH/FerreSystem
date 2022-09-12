<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ferreteria</title>
    
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="icon" href="/iconos/ferre.png">

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
        <div class="container-fluid">
                <ul class="navbar-nav mr-auto ">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php"><img src="/iconos/logo.png" alt="Logo" width="30px" height="30px">
Ferreteria</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php" >Inicio </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="nosotros.php" >Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="productos.php" >Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="mostrarcarrito.php" >Carrito(
                        <!--muestra cuantos elementos se selecciono -->
                        <?php
                        print_r (empty($_SESSION['carrito']))?0:count($_SESSION['carrito']);
                        ?>)</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="administrador/index.php" >Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    

    <div class="mt-3">

        <div class="row mx-0">