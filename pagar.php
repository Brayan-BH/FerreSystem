<?php

include('administrador/config/bd.php');
include('./carrito.php');
include('./template/cabecera.php');

?>

<?php
    
if($_POST){

    $total = 0;
    //Devuelve clave de la session, evitar confusion de otro pedido
    $SID = session_id(); 
    $Correo = $_POST['email'];

    foreach ($_SESSION['carrito'] as $indice => $producto) {

        $total = $total + ($producto['PRECIO']*$producto['CANTIDAD']);

    }
        $sentencia = $conexion->prepare("INSERT INTO `ventas` 
            (`id`, `clavetransaccion`, `paypaldatos`, `fecha`, `correo`, `total`, `status`)
            VALUES (NULL,:clavetransaccion, '',Now(),:correo,:total, 'pendiente');");

            $sentencia->bindParam(":clavetransaccion",$SID);
            $sentencia->bindParam(":correo",$Correo);
            $sentencia->bindParam(":total",$total);
            $sentencia->execute();
            //Devuelve el ultimo Id insertado en la bse de datos (TABLA VENTAS)
            $idVenta = $conexion->lastInsertId();

            foreach ($_SESSION['carrito'] as $indice => $producto) {

                $sentencia = $conexion->prepare("INSERT INTO 
                `detalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) 
                VALUES (NULL,:IDVENTA,:IDPRODUCTOS,:PRECIOUNITARIO, :CANTIDAD, '0');");

                //informacion proviene de la ultima insercion de registro en ventas
                $sentencia->bindParam(":IDVENTA",$idVenta);
                //informacion viene del carrito de compras
                $sentencia->bindParam(":IDPRODUCTOS",$producto['ID']);
                $sentencia->bindParam(":PRECIOUNITARIO",$producto['PRECIO']);
                $sentencia->bindParam(":CANTIDAD",$producto['CANTIDAD']);
                $sentencia->execute();

            }    

    // echo "<h3>".$total."<h3/>";
}

?>
<!-- Include the PayPal JavaScript SDK -->
<script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>
<script>
    // Render the PayPal button into #paypal-button-container
    paypal.Buttons().render('#paypal-button-container');
</script>
<!-- estilo de paypal -->
<style>
        /* Media query for mobile viewport */
        @media screen and (max-width: 400px) {
            #paypal-button-container {
                width: 100%;
            }
        }
        
        /* Media query for desktop viewport */
        @media screen and (min-width: 400px) {
            #paypal-button-container {
                width: 250px;
            }
        }
        #paypal-button-container{
            padding-top: 8px;
            /* margin-left: 34%; */
            margin: 0 auto;
        }

</style>
<div class="d-flex justify-content-center text-center ">
<div class="card">
    <h1 class="display-3">Paso Final</h1>
    <hr class="my-2">
    <div class="card-body">
        <p class="lead"> Estas a punto de pagar con paypal la cantidad de:</p>
            <h4>S/.<?php echo number_format($total,2);?>
                <!-- Set up a container element for the button -->
                <div id="paypal-button-container"></div>
            </h4>
        <p class="card-text">Los productos prodan ser enviados una vez se procese el pago 
            <strong>(Para aclaraciones : brayanbasurto007@gmail.com)</strong></p>
        </p>
    </div>
</div>
</div>
    
<?php include('./template/pie.php');?>
