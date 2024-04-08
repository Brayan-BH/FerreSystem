<?php include('template/cabecera.php') ?>

<style>
    #parpadeo {

        animation-name: parpadeo;
        animation-duration: 1s;
        animation-timing-function: linear;
        animation-iteration-count: infinite;

        -webkit-animation-name: parpadeo;
        -webkit-animation-duration: 1s;
        -webkit-animation-timing-function: linear;
        -webkit-animation-iteration-count: infinite;
    }

    @-moz-keyframes parpadeo {
        0% {
            opacity: 1.0;
        }

        50% {
            opacity: 0.0;
        }

        100% {
            opacity: 1.0;
        }
    }

    @-webkit-keyframes parpadeo {
        0% {
            opacity: 1.0;
        }

        50% {
            opacity: 0.0;
        }

        100% {
            opacity: 1.0;
        }
    }

    @keyframes parpadeo {
        0% {
            opacity: 1.0;
        }

        50% {
            opacity: 0.0;
        }

        100% {
            opacity: 1.0;
        }
    }

    #parpadeo:hover {
        background-color: #6060AE;
    }
    #banner{
        /* filter: drop-shadow(8px 8px 4px #FAEA10); */
        box-shadow: 8px 8px 8px 4px #FAEA10;
    }
</style>
<div class="container">
    <div class="jumbotron text-center">
        <h1 class="display-3">Bienvenidos al sitio de Productos</h1>
        <p class="lead">Cosulta Productos de Ferreteria</p>
        <hr class="my-2">
        <div class="container">
            <img class="img-thumbnail rounded mx-auto d-block mt-3 mb-5" width="" src="img/banner-ferreteria.jpg" alt="banner" id="banner">

        </div>
    
        <p class="lead">Más información</p>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="productos.php" role="button" id="parpadeo">Nuestros Productos</a>
        </p>
    </div>
</div>

<?php include('template/pie.php') ?>