<?php
    $host = "roundhouse.proxy.rlwy.net";
    $port = 52653;
    $bd = "railway";
    $usuario = "root";
    $password = "ZtYptTjbyYufXtqsZMxUsrSUDVsAPnug";

    define("KEY","sistema");
    define("COD", "AES-256-CBC"); // Considera usar un modo más seguro que ECB
    // define("COD","AES-128-ECB");//metodo de encriptacion

    try {

        $conexion = new PDO("mysql:host=$host;port=$port;dbname=$bd",$usuario,$password);

        // if($conexion){echo "conectado a sistema";}

    } catch (Exception $ex) {

        echo $ex->getMessage();
    }
