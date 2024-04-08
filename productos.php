<?php include('template/cabecera.php'); ?>


<?php
include('administrador/config/bd.php');

$sentenciaSQL = $conexion->prepare("SELECT * FROM productos");
$sentenciaSQL->execute();
$listaProductos = $sentenciaSQL->fetchAll(PDO::FETCH_ASSOC); //recuperar todos los registros para mostrarlo
?>

<?php include('./carrito.php'); ?>
<?php include('./template/alerta.php') ?>
<div class="container">
    <h1 class="text-center">Lista de Productos</h1>
</div>
<?php foreach ($listaProductos as $productos) { ?>

<style>
    /* #card-shadow{
        filter: drop-shadow(8px 8px 4px #FAEA10);
    } */
    #img-filter{
        filter: drop-shadow(8px 8px 4px #FAEA10);
    }
</style>

    <!-- presentacion de productos -->

    <div class="col-md-3 my-2">
        <div class="card" id="card-shadow">
            <img class="card-img" id="img-filter" title="<?php echo $productos['nombre']; ?>" src="./img/<?php echo $productos['imagen']; ?>" alt="<?php echo $productos['nombre']; ?>" height="310px">
            <div class="card-body">
                <p class="font-weight-bold text-black">
                    Nombre:
                </p>
                <h4 class="card-title"><?php echo $productos['nombre']; ?></h4>
                <p class="font-weight-bold text-black">
                    Precio:
                </p>
                <h4 class="card-title"><?php echo "S./ ".$productos['precio']; ?></h4>
                <p class="font-weight-bold text-black">
                    Stock:
                </p>
                <h4 class="card-title"><?php echo $productos['stock']; ?></h4>

                <form action="" method="POST">
                    <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($productos['id'], COD, KEY); ?>">
                    <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($productos['nombre'], COD, KEY); ?>">
                    <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($productos['precio'], COD, KEY); ?>">
                    <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1, COD, KEY); ?>">
                    <div>
                        <p><i class="fas fa-check bg-success"></i>Disponible para Despacho</p>
                        <p><i class="fas fa-check bg-success"></i>Disponible para Retiro</p>
                    </div>
                    <button class="btn btn-primary" name="btnAccion" value="Agregar" type="submit">
                        <i class="fas fa-shopping-cart"></i> Añadir al carrito
                    </button>
                </form>

            </div>
        </div>
    </div>


    <script>
        $(function() {

            $('[data-toggle="popover"]').popover()
        })
    </script>

<?php } ?>

<?php include('template/pie.php') ?>