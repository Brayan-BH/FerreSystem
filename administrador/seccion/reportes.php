<?php

ob_start();
 //Bloquear la informacion
session_start();
if (!isset($_SESSION['usuario'])) {
    header('Location:../index.php');
}else {
    if ($_SESSION['usuario']=="ok") {
        $nombreUsuario = $_SESSION["nombreUsuario"];
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- boostrap css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" 
    integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"><link rel="stylesheet" href="../../css/estiloAdmin/bootstrap.min.css">    <title>Reporte</title>
</head>
<body>

<?php 

include('../config/bd.php');

    $sentenciaSQL = $conexion->prepare("SELECT * FROM productos");
    $sentenciaSQL->execute();
    $listaProductos = $sentenciaSQL->fetchAll(PDO::FETCH_ASSOC);//recuperar todos los registros para mostrarlo


?>
<h1 class="text-center">Reporte de Productos</h1>
    <table class="table table-bordered table-striped table-dark" id="tabla">
        <thead class="thead-light">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Imagen</th>
                <th>Precio</th>
                <th>Stock</th>
                <th>Descripcion</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($listaProductos as $productos){?>
            <tr>
                <td><?php echo $productos['id'];?></td>
                <td><?php echo $productos['nombre'];?></td>
                <td>
                    <img class="" src="http://<?php echo $_SERVER['HTTP_HOST'];?>/img/<?php echo $productos['imagen'];?>" width="120" alt="">                 
                </td>
                <td><?php echo "S./".$productos['precio'];?></td>
                <td><?php echo $productos['stock'];?></td>
                <td><?php echo $productos['descripcion'];?></td>

            </tr>
            <?php } ?>
        </tbody>
    </table> 
    
</body>
</html>
<?php
//variable a almacenar el documento HTML
$html = ob_get_clean();
// echo $html;


//incluir el archivo DOMPDF
require_once '../libreria/dompdf/autoload.inc.php';
use Dompdf\Dompdf;
$dompdf = new Dompdf();

//activar opcion para mostrar imagenes en la lista
$options = $dompdf->getOptions();
$options->set(array('isRemoteEnabled'=>true));
$dompdf->setOptions($options);

$dompdf->loadHtml($html);

//formato carta
$dompdf->setPaper('letter');
// $dompdf->setPaper('A4','landscape'); Formato Horizontal

$dompdf->render();

$dompdf->stream("archivo_.pdf",array("Attachment"=>false));

?>