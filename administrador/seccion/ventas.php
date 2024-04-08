<?php include('../template/cabecera.php'); ?>

<?php

//Condicion ternario
$txtID = (isset($_POST['txtID'])) ? $_POST['txtID'] : "";
$txtClaveTransaccion = (isset($_POST['txtClaveTransaccion'])) ? $_POST['txtClaveTransaccion'] : "";
$txtFecha = (isset($_POST['txtFecha'])) ? $_POST['txtFecha'] : "";
$txtCorreo = (isset($_POST['txtCorreo'])) ? $_POST['txtCorreo'] : "";
$txtEstado = (isset($_POST['txtEstado'])) ? $_POST['txtEstado'] : "";
$accion = (isset($_POST['accion'])) ? $_POST['accion'] : "";


// echo $txtID."<br/>";
// echo $txtDescripcion."<br/>";
// echo $txtImagen."<br/>";
// echo $accion."<br/>";

//Conexcion a la base de datos
include('../config/bd.php');


switch ($accion) {

        // case "Agregar":
        //     $sentenciaSQL = $conexion->prepare("INSERT INTO `productos` (nombre,imagen,precio,stock,descripcion) VALUES (:nombre,:imagen,:precio,:stock,:descripcion);");
        //     $sentenciaSQL->bindParam(':nombre', $txtNombre);
        //     $sentenciaSQL->bindParam(':precio', $txtPrecio);
        //     $sentenciaSQL->bindParam(':stock', $txtStock);
        //     $sentenciaSQL->bindParam(':descripcion', $txtDescripcion);

        //     $fecha = new DateTime();
        //     $nombreArchivo = ($txtImagen != "") ? $fecha->getTimestamp() . "_" . $_FILES["txtImagen"]["name"] : "imagen.jpg";

        //     $tmpImagen = $_FILES["txtImagen"]["tmp_name"];

        //     if ($tmpImagen != "") {

        //         move_uploaded_file($tmpImagen, "../../img/".$nombreArchivo);
        //     }

        //     $sentenciaSQL->bindParam(':imagen', $nombreArchivo);

        //     $sentenciaSQL->execute();

        //     header("Location:productos.php");

        //     break;

        // case "Modificar":
        //     $sentenciaSQL = $conexion->prepare("UPDATE productos SET nombre = :nombre, precio = :precio, stock = :stock, descripcion = :descripcion WHERE id=:id");
        //     $sentenciaSQL->bindParam(':nombre', $txtNombre);
        //     $sentenciaSQL->bindParam(':precio', $txtPrecio);
        //     $sentenciaSQL->bindParam(':stock', $txtStock);
        //     $sentenciaSQL->bindParam(':descripcion', $txtDescripcion);
        //     $sentenciaSQL->bindParam(':id', $txtID);
        //     $sentenciaSQL->execute();

        //     if ($txtImagen != "") {

        //         $fecha = new DateTime();
        //         $nombreArchivo = ($txtImagen != "") ? $fecha->getTimestamp() . "_" . $_FILES["txtImagen"]["name"] : "imagen.jpg";
        //         $tmpImagen = $_FILES["txtImagen"]["tmp_name"];
        //         //copiado de la imagen al directorio
        //         move_uploaded_file($tmpImagen, "../../img/" . $nombreArchivo);

        //         $sentenciaSQL = $conexion->prepare("SELECT imagen FROM productos WHERE id=:id");
        //         $sentenciaSQL->bindParam(':id', $txtID);
        //         $sentenciaSQL->execute();
        //         $productos = $sentenciaSQL->fetch(PDO::FETCH_LAZY);

        //         if (isset($productos["imagen"]) && ($productos["imagen"] != "imagen.jpg")) {

        //             if (file_exists("../../img/" . $productos["imagen"])) {

        //                 unlink("../../img/" . $productos["imagen"]);
        //             }
        //         }


        //         $sentenciaSQL = $conexion->prepare("UPDATE productos SET imagen = :imagen WHERE id=:id");
        //         $sentenciaSQL->bindParam(':imagen', $nombreArchivo);
        //         $sentenciaSQL->bindParam(':id', $txtID);
        //         $sentenciaSQL->execute();
        //     }
        //     header("Location:productos.php");

        //     // echo "Presionado botón Modificar";
        //     break;


        // case "Seleccionar":
        //     $sentenciaSQL = $conexion->prepare("SELECT * FROM productos WHERE id=:id");
        //     $sentenciaSQL->bindParam(':id', $txtID);
        //     $sentenciaSQL->execute();
        //     $productos = $sentenciaSQL->fetch(PDO::FETCH_LAZY); //cargar los datos uno a uno 

        //     $txtNombre = $productos['nombre'];
        //     $txtImagen = $productos['imagen'];
        //     $txtPrecio = $productos['precio'];
        //     $txtStock = $productos['stock'];
        //     $txtDescripcion = $productos['descripcion'];

        //     // echo "Presionado botón Seleccionar";
        //     break;

        // case "Cancelar":
        //     header("Location:productos.php");
        //     // echo "Presionado botón Cancelar";
        //     break;

    case "Delete":

        $sentenciaSQL = $conexion->prepare("DELETE FROM ventas WHERE id=:id");
        $sentenciaSQL->bindParam(':id', $txtID);
        $sentenciaSQL->execute();

        header("Location:ventas.php");

        break;
}
$sentenciaSQL = $conexion->prepare("SELECT * FROM ventas");
$sentenciaSQL->execute();
$listaVentas = $sentenciaSQL->fetchAll(PDO::FETCH_ASSOC); //recuperar todos los registros para mostrarlo
?>

<div class="col-4">

    <div class="card">
        <!-- <div class="card-header">
            Datos de la Venta
        </div> -->
        <div class="card-body">

            <form method="POST" action="" enctype="multipart/form-data">

                <div class="form-group">
                    <!-- <label for="txtID">ID:</label> -->
                    <input type="hidden" class="form-control" required readonly value="<?php echo $txtID; ?>" name="txtID" id="txtID" placeholder="ID">
                </div>

                <!-- <div class="form-group">
                    <label for="txtClaveTransaccion">ClaveTransaccion:</label>
                    <input type="text" class="form-control" required value="<?php echo $txtClaveTransaccion; ?>" name="txtClaveTransaccion" id="txtClaveTransaccion" placeholder="ClaveTransaccion" id="txtClaveTransaccion">
                </div>

                <div class="form-group">
                    <label for="txtFecha">Fecha:</label>
                    <input type="text" class="form-control" required value="<?php echo $txtFecha; ?>" name="txtFecha" id="txtFecha" placeholder="Fecha">
                </div>

                <div class="form-group">
                    <label for="txtCorreo">txtCorreo:</label>
                    <input type="email" class="form-control" required value="<?php echo $txtCorreo; ?>" name="txtCorreo" id="txtCorreo" placeholder="Correo">
                </div>

                <div class="form-group">
                    <label for="txtTotal">Total:</label>
                    <input type="text" class="form-control" value="<?php echo $txtTotal; ?>" name="txtTotal" id="txtTotal" placeholder="Total">
                </div>
                <div class="form-group">
                    < for="txtEstado">Estado:</label>
                    <input type="text" class="form-control" value="<?php echo $txtEstado; ?>" name="txtEstado" id="txtEstado" placeholder="Estado">
                </div>

                <div class="btn-group" role="group" aria-label="">
                    <button name="accion" value="Agregar" <?php echo ($accion == "Seleccionar") ? "disabled" : "" ?> class="btn btn-success mr-2" type="submit">Agregar</button>
                    <button name="accion" value="Modificar" <?php echo ($accion != "Seleccionar") ? "disabled" : "" ?> class="btn btn-warning mr-2" type="submit">Modificar</button>
                    <button name="accion" value="Cancelar" <?php echo ($accion != "Seleccionar") ? "disabled" : "" ?> class="btn btn-info mr-2" type="submit">Cancelar</button>
                </div> -->

                <a href="#" target="_blank"><i class="fa fa-file-pdf fa-lg"> Reportes</i></a>

            </form>

        </div>
    </div>



</div>

<div class="col-12">

    <table class="table table-dark" id="tabla">
        <thead class="thead-light">
            <tr>
                <th>ID</th>
                <th>Clavetransaccion</th>
                <th>Fecha</th>
                <th>Correo</th>
                <th>Total</th>
                <th>Estado</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($listaVentas as $ventas) { ?>
                <tr>
                    <td><?php echo $ventas['id']; ?></td>
                    <td><?php echo $ventas['clavetransaccion']; ?></td>
                    <td><?php echo $ventas['fecha']; ?></td>
                    <td><?php echo $ventas['correo']; ?></td>
                    <td><?php echo "S./" . $ventas['total']; ?></td>
                    <td><?php echo $ventas['status']; ?></td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="txtID" id="txtID" value="<?php echo $ventas['id']; ?>" />
                            <!-- <input type="submit" name="accion" value="Seleccionar" class="btn btn-success   " /> -->
                            <input type="submit" name="accion" value="Delete" class="btn btn-danger" />
                        </form>

                    </td>

                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>

<script>
    var tabla = document.querySelector("#tabla");

    var dataTable = new DataTable(tabla, {
        perPage: 10,
        perPageSelect: [5, 10, 15, 20]

    });
</script>

<?php include('../template/pie.php'); ?>