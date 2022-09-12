<?php
    $host = "localhost";
    $bd = "sistema";
    $usuario = "root";
    $password = "mysql";

    define("KEY","sistema");
    define("COD","AES-128-ECB");
    // define("COD","AES-128-ECB");//metodo de encriptacion

    try {

        $conexion = new PDO("mysql:host=$host;dbname=$bd",$usuario,$password);

        // if($conexion){echo "conectado a sistema";}

    } catch (Exception $ex) {

        echo $ex->getMessage();
    }
    ?>