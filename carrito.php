<?php
ob_start();
session_start();

$mensaje="";

// Inicialización de variables para evitar el error "Undefined variable"
$ID = "";
$NOMBRE = "";
$CANTIDAD = "";
$PRECIO = "";

if(isset($_POST['btnAccion'])){
    switch($_POST['btnAccion']){
        case 'Agregar':
            if(is_numeric(openssl_decrypt($_POST['id'],COD,KEY))){
                $ID = openssl_decrypt($_POST['id'],COD,KEY);
                $mensaje.="Ok ID correcto ".$ID."<br/>";
            }else{
                $mensaje.="Ups... ID incorrecto ".$ID."<br/>";
            }

            if(is_string(openssl_decrypt($_POST['nombre'],COD,KEY))){
                $NOMBRE = openssl_decrypt($_POST['nombre'],COD,KEY);
                $mensaje.="Ok nombre correcto ".$NOMBRE."<br/>";
            }else{
                $mensaje.="Ups... nombre incorrecto"."<br/>";
                break;
            }

            if(is_numeric(openssl_decrypt($_POST['cantidad'],COD,KEY))){
                $CANTIDAD = openssl_decrypt($_POST['cantidad'],COD,KEY);
                $mensaje.="Ok cantidad correcto ".$CANTIDAD."<br/>";
            }else{
                $mensaje.="Ups... cantidad incorrecto"."<br/>";
                break;
            }

            if(is_numeric(openssl_decrypt($_POST['precio'],COD,KEY))){
                $PRECIO = openssl_decrypt($_POST['precio'],COD,KEY);
                $mensaje.="Ok precio correcto ".$PRECIO."<br/>";
            }else{
                $mensaje.="Ups... precio incorrecto"."<br/>";
                break;
            }

            if (!isset($_SESSION['carrito'])) {
                $producto = array(
                    'ID' => $ID,
                    'NOMBRE' => $NOMBRE,
                    'CANTIDAD' => $CANTIDAD,
                    'PRECIO' => $PRECIO
                );
                $_SESSION['carrito'][0] = $producto;
                $mensaje = "Producto agregado al carrito";
            } else {
                $idProductos = array_column($_SESSION['carrito'], "ID");
                
                if(in_array($ID, $idProductos)){
                    echo "<script>alert('El producto ya ha sido seleccionado');</script>";
                    $mensaje = "";
                }else{
                    $NumeroProductos = count($_SESSION['carrito']);
                    $producto = array(
                        'ID' => $ID,
                        'NOMBRE' => $NOMBRE,
                        'CANTIDAD' => $CANTIDAD,
                        'PRECIO' => $PRECIO
                    );
                    $_SESSION['carrito'][$NumeroProductos] = $producto;
                    $mensaje = "Producto agregado al carrito";
                }
            }
        break;

        case "Eliminar":
            if(is_numeric(openssl_decrypt($_POST['id'],COD,KEY))){
                $ID = openssl_decrypt($_POST['id'],COD,KEY);
                
                foreach ($_SESSION['carrito'] as $indice => $producto){
                    if($producto['ID'] == $ID){
                        unset($_SESSION['carrito'][$indice]);
                        echo "<script>alert('Elemento borrado...');</script>";
                    }
                }
            }else{
                $mensaje.="Ups... ID incorrecto ".$ID."<br/>";
            }
        break;
    }
}