<?php
ob_start();
session_start();


$mensaje="";


if(isset($_POST['btnAccion'])){


    switch($_POST['btnAccion']){
    
        case 'Agregar':


            if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY ))){

                $ID=openssl_decrypt($_POST['id'],COD,KEY );
                $mensaje.="Ok ID correcto".$ID."<br/>";
                }else{$mensaje.="Ups... ID incorrecto".$ID."<br/>";
            }

            if(is_string( openssl_decrypt($_POST['nombre'],COD,KEY ))){
                $NOMBRE=openssl_decrypt($_POST['nombre'],COD,KEY );
                $mensaje.="Ok nombre correcto".$NOMBRE."<br/>";
            }else{$mensaje.="Ups... nombre incorrecto"."<br/>" ;break;}


            if(is_numeric( openssl_decrypt($_POST['cantidad'],COD,KEY ))){
                $CANTIDAD=openssl_decrypt($_POST['cantidad'],COD,KEY );
                $mensaje.="Ok cantidad correcto".$CANTIDAD."<br/>";
            }else{$mensaje.="Ups... cantidad incorrecto"."<br/>" ;break;}


            if(is_numeric( openssl_decrypt($_POST['precio'],COD,KEY ))){
                $PRECIO=openssl_decrypt($_POST['precio'],COD,KEY );
                $mensaje.="Ok precio correcto".$PRECIO."<br/>";
            }else{$mensaje.="Ups... precio incorrecto"."<br/>" ;break;}

            //validar varaible de session
            if (!isset($_SESSION['carrito'])) {
                
                $producto = array(

                    'ID'=>$ID,
                    'NOMBRE'=>$NOMBRE,
                    'CANTIDAD'=>$CANTIDAD,
                    'PRECIO'=>$PRECIO
                );
                //almacenar en la posicion 0, el primer elemento
                $_SESSION['carrito'][0] =$producto;
                $mensaje = "Producto Agregado al Carrito";

            }else {
                //idProductos->Depositar todos los id's que estan en el carrito de compras
                $idProductos = array_column($_SESSION['carrito'],"ID");
            
                if(in_array($ID,$idProductos)){
                    echo "<script> alert('El producto ya ha sido seleccionado');</script>";
                    $mensaje = "";
                }else{

                //contavilizar el carrito de compras
                $NumeroProductos = count($_SESSION['carrito']);

                $producto = array(

                    'ID'=>$ID,
                    'NOMBRE'=>$NOMBRE,
                    'CANTIDAD'=>$CANTIDAD,
                    'PRECIO'=>$PRECIO
                );
                $_SESSION['carrito'][$NumeroProductos] =$producto;
                $mensaje = "Producto Agregado al Carrito";
                }
            }

            // $mensaje = print_r($_SESSION,true);

        break;

        case "Eliminar":
            if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY ))){

                $ID=openssl_decrypt($_POST['id'],COD,KEY );
                
                //leer todos los datos que esta en la variable session carrito se lee con el indice producto
                foreach ($_SESSION['carrito'] as $indice => $producto) {
                    if($producto['ID']==$ID){
                        unset($_SESSION['carrito'][$indice]);
                        echo "<script>alert('Elemento Borrado...');</script>";
                    }
                }

                }else{$mensaje.="Ups... ID incorrecto".$ID."<br/>";
            }

    }
}

?>