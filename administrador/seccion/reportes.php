<?php

//Bloquear la informacion
session_start();
if (!isset($_SESSION['usuario'])) {
    header('Location:../index.php');
} else {
    if ($_SESSION['usuario'] == "ok") {
        $nombreUsuario = $_SESSION["nombreUsuario"];
    }
}


require '../../vendor/autoload.php';

    include('../config/bd.php');

    $sentenciaSQL = $conexion->prepare("SELECT * FROM productos");
    $sentenciaSQL->execute();
    $listaProductos = $sentenciaSQL->fetchAll(PDO::FETCH_ASSOC); //recuperar todos los registros para mostrarlo


    $html = '<h1>Reporte de Productos</h1>
    <table>
        <thead>
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
        ';

            foreach ($listaProductos as $productos){
               $html.='
                <tr>
                    <td> '.$productos['id'].'</td>
                    <td> '.$productos['nombre'].'</td>
                    <td>
                    <img src="../../img/'.$productos['imagen'].'" width="100" alt="">
                    </td>
                    <td> '."S./" . $productos['precio'].'</td>
                    <td> '.$productos['stock'].'</td>
                    <td> '.$productos['descripcion'].'</td>

                </tr>';
            }
                $html.='
        </tbody>
    </table>';

        $mpdf = new \Mpdf\Mpdf([
            'tempDir' => $_SERVER["DOCUMENT_ROOT"] . "/tmp",
            'size' => 'A4',
            'margin_left' => 5,
            'margin_right' => 5,
            'margin_top' => 23,
            'margin_bottom' => 5,
            'margin_header' => 1,
            'margin_footer' => 1,
            'default_font' => 'sans-serif',
        ]);
// p /> vertical alignment
// L /> horizontal alignment
$stylesheet = file_get_contents('./css/reportes.css');
$mpdf->WriteHTML($stylesheet, 1);

$mpdf -> AddPage("P");
$mpdf -> SetTitle("Reporte de Productos");

$mpdf->WriteHTML($html, 2);
$mpdf->Output("reporte.pdf", "I");
// echo ($html);
