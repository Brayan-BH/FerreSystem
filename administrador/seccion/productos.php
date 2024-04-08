<?php include('../template/cabecera.php'); ?>
<?php
//Condicion ternario
$txtID = (isset($_POST['txtID'])) ? $_POST['txtID'] : "";
$txtNombre = (isset($_POST['txtNombre'])) ? $_POST['txtNombre'] : "";
$txtImagen = (isset($_FILES['txtImagen']['name'])) ? $_FILES['txtImagen']['name'] : "";
$txtPrecio = (isset($_POST['txtPrecio'])) ? $_POST['txtPrecio'] : "";
$txtStock = (isset($_POST['txtStock'])) ? $_POST['txtStock'] : "";
$txtDescripcion = (isset($_POST['txtDescripcion'])) ? $_POST['txtDescripcion'] : "";
$accion = (isset($_POST['accion'])) ? $_POST['accion'] : "";

// echo $txtID."<br/>";
// echo $txtDescripcion."<br/>";
// echo $txtImagen."<br/>";
// echo $accion."<br/>";

//Conexcion a la base de datos
include('../config/bd.php');


switch ($accion) {

        case "Agregar":
            $sentenciaSQL = $conexion->prepare("INSERT INTO `productos` (nombre, imagen, precio, stock, descripcion) VALUES (:nombre, :imagen, :precio, :stock, :descripcion);");
            $sentenciaSQL->bindParam(':nombre', $txtNombre);
            $sentenciaSQL->bindParam(':precio', $txtPrecio);
            $sentenciaSQL->bindParam(':stock', $txtStock);
            $sentenciaSQL->bindParam(':descripcion', $txtDescripcion);
    
            // Verificar si se ha cargado una imagen
            if ($txtImagen != "") {
                // Obtener la extensión del archivo
                $extension = pathinfo($_FILES["txtImagen"]["name"], PATHINFO_EXTENSION);
                // Generar un nombre único para la imagen
                $nombreArchivo = time() . "_" . uniqid() . "." . $extension;
                // Directorio de destino para la imagen
                $directorio_destino = "../img/";
                // Ruta completa de la imagen
                $ruta_destino = $directorio_destino . $nombreArchivo;
                // Mover la imagen al directorio de destino
                move_uploaded_file($_FILES["txtImagen"]["tmp_name"], $ruta_destino);
                // Asignar el nombre de la imagen al campo en la base de datos
                $sentenciaSQL->bindParam(':imagen', $nombreArchivo);
            } else {
                // Si no se cargó una imagen, asignar un valor predeterminado
                $nombreArchivo = "imagen.jpg";
                $sentenciaSQL->bindParam(':imagen', $nombreArchivo);
            }
    
            // Ejecutar la consulta
            $sentenciaSQL->execute();
    
            // Redireccionar a la página de productos
            header("Location:productos.php");
            break;
    

            case "Modificar":
                // Preparar la consulta para actualizar los campos del producto
                $sentenciaSQL = $conexion->prepare("UPDATE productos SET nombre = :nombre, precio = :precio, stock = :stock, descripcion = :descripcion WHERE id=:id");
                $sentenciaSQL->bindParam(':nombre', $txtNombre);
                $sentenciaSQL->bindParam(':precio', $txtPrecio);
                $sentenciaSQL->bindParam(':stock', $txtStock);
                $sentenciaSQL->bindParam(':descripcion', $txtDescripcion);
                $sentenciaSQL->bindParam(':id', $txtID);
                $sentenciaSQL->execute();
            
                if ($txtImagen != "") {
                    // Generación del nuevo nombre de archivo para la imagen
                    $extension = pathinfo($_FILES["txtImagen"]["name"], PATHINFO_EXTENSION);
                    $nombreArchivo = time() . "_" . uniqid() . "." . $extension;
            
                    // Mover la nueva imagen al directorio
                    $ruta_destino = "../img/" . $nombreArchivo;
                    move_uploaded_file($_FILES["txtImagen"]["tmp_name"], $ruta_destino);
            
                    // Obtener el nombre de la imagen actual en la base de datos
                    $sentenciaSQL = $conexion->prepare("SELECT imagen FROM productos WHERE id=:id");
                    $sentenciaSQL->bindParam(':id', $txtID);
                    $sentenciaSQL->execute();
                    $producto = $sentenciaSQL->fetch(PDO::FETCH_ASSOC);
            
                    // Si existe una imagen previa y no es la imagen por defecto, intentar eliminarla
                    if ($producto && $producto['imagen'] != "imagen.jpg") {
                        $ruta_imagen_anterior = "../img/" . $producto["imagen"];
                        if (file_exists($ruta_imagen_anterior)) {
                            unlink($ruta_imagen_anterior);
                        }
                    }
            
                    // Actualizar el campo de la imagen en la base de datos
                    $sentenciaSQL = $conexion->prepare("UPDATE productos SET imagen = :imagen WHERE id=:id");
                    $sentenciaSQL->bindParam(':imagen', $nombreArchivo);
                    $sentenciaSQL->bindParam(':id', $txtID);
                    $sentenciaSQL->execute();
                }
                header("Location:productos.php");
                break;
            
    case "Cancelar":
        header("Location:productos.php");
        // echo "Presionado botón Cancelar";
        break;

    case "Seleccionar":
        $sentenciaSQL = $conexion->prepare("SELECT * FROM productos WHERE id=:id");
        $sentenciaSQL->bindParam(':id', $txtID);
        $sentenciaSQL->execute();
        $productos = $sentenciaSQL->fetch(PDO::FETCH_LAZY); //cargar los datos uno a uno 

        $txtNombre = $productos['nombre'];
        $txtImagen = $productos['imagen'];
        $txtPrecio = $productos['precio'];
        $txtStock = $productos['stock'];
        $txtDescripcion = $productos['descripcion'];

        // echo "Presionado botón Seleccionar";
        break;

    case "Borrar":
        $sentenciaSQL = $conexion->prepare("SELECT imagen FROM productos WHERE id=:id");
        $sentenciaSQL->bindParam(':id', $txtID);
        $sentenciaSQL->execute();
        $productos = $sentenciaSQL->fetch(PDO::FETCH_LAZY);

        if (isset($productos["imagen"]) && ($productos["imagen"] != "imagen.jpg")) {

            if (file_exists("https://ferresystem.up.railway.app/img/" . $productos["imagen"])) {

                unlink("https://ferresystem.up.railway.app/img/" . $productos["imagen"]);
            }
        }

        $sentenciaSQL = $conexion->prepare("DELETE FROM productos WHERE id=:id");
        $sentenciaSQL->bindParam(':id', $txtID);
        $sentenciaSQL->execute();

        header("Location:productos.php");

        break;
}
$sentenciaSQL = $conexion->prepare("SELECT * FROM productos");
$sentenciaSQL->execute();
$listaProductos = $sentenciaSQL->fetchAll(PDO::FETCH_ASSOC); //recuperar todos los registros para mostrarlo
?>

<div class="col-3">

    <div class="card">
        <div class="card-header">
            Datos del Producto
        </div>
        <div class="card-body">

            <form method="POST" action="" enctype="multipart/form-data">

                <div class="form-group">
                    <!-- <label for="txtID">ID:</label> -->
                    <input type="hidden" class="form-control" required readonly value="<?php echo $txtID; ?>" name="txtID" id="txtID" placeholder="ID">
                </div>

                <div class="form-group">
                    <label for="txtNombre">Nombre:</label>
                    <input type="text" class="form-control" required value="<?php echo $txtNombre; ?>" name="txtNombre" id="txtNombre" placeholder="Nombre">
                </div>

                <div class="form-group">
                    <label for="txtPrecio">Precio:</label>
                    <input type="text" class="form-control" required value="<?php echo $txtPrecio; ?>" name="txtPrecio" id="txtNombre" placeholder="Precio">
                </div>

                <div class="form-group">
                    <label for="txtStock">stock:</label>
                    <input type="text" class="form-control" required value="<?php echo $txtStock; ?>" name="txtStock" id="txtStock" placeholder="Stock">
                </div>

                <div class="form-group">
                    <label for="txtDescripcion">Descripcion</label>:</label>
                    <input type="text" class="form-control" value="<?php echo $txtDescripcion; ?>" name="txtDescripcion" id="txtDescripcion" placeholder="Descripción">
                </div>

                <div class="form-group">
                    <label for="txtImagen">Imagen:</label>

                    <br>

                    <?php if ($txtImagen != "") { ?>

                        <img class="img-thumbnail rounded mb-3" src="https://ferresystem.up.railway.app/img/<?php echo $txtImagen; ?>" width="100" alt="">

                    <?php } ?>

                    <input type="file" class="form-control" name="txtImagen" id="txtID" placeholder="Imagen">
                </div>

                <div class="btn-group" role="group" aria-label="">
                    <button name="accion" value="Agregar" <?php echo ($accion == "Seleccionar") ? "disabled" : "" ?> class="btn btn-success mr-2" type="submit">Agregar</button>
                    <button name="accion" value="Modificar" <?php echo ($accion != "Seleccionar") ? "disabled" : "" ?> class="btn btn-warning mr-2" type="submit">Modificar</button>
                    <button name="accion" value="Cancelar" <?php echo ($accion != "Seleccionar") ? "disabled" : "" ?> class="btn btn-info mr-2" type="submit">Cancelar</button>
                </div>

                <a href="reportes.php" target="_blank"><i class="fa fa-file-pdf fa-lg"> Reportes</i></a>

            </form>

        </div>
    </div>



</div>

<div class="col-9">

    <table class="table table-dark" id="tabla">
        <thead class="thead-light">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Imagen</th>
                <th>Precio</th>
                <th>Stock</th>
                <th>Descripción</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($listaProductos as $productos) { ?>
                <tr>
                    <td><?php echo $productos['id']; ?></td>
                    <td><?php echo $productos['nombre']; ?></td>
                    <td>

                        <img class="img-thumbnail rounded" src="https://ferresystem.up.railway.app/img/<?php echo $productos['imagen']; ?>" width="80" alt="60">

                    <td><?php echo "S./" . $productos['precio']; ?></td>
                    <td><?php echo $productos['stock']; ?></td>
                    <td><?php echo $productos['descripcion']; ?></td>

                    </td>

                    <td>
                        <form method="post">

                            <input type="hidden" name="txtID" id="txtID" value="<?php echo $productos['id']; ?>" />
                            <input type="submit" name="accion" value="Seleccionar" class="btn btn-success   " />
                            <input type="submit" name="accion" value="Borrar" class="btn btn-danger" />
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
        perPage: 5,
        perPageSelect: [5, 10, 15, 20]

    });
</script>

<?php include('../template/pie.php'); ?>