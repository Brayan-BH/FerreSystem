<?php
//session start  => toda la informacion se guarda en la sesión
session_start();
include './config/bd.php';

$mensaje = "";

if ($_POST) {
    $usuario = $_POST['usuario'];
    $contrasena = $_POST['contraseña'];

    // Encriptar la contraseña antes de realizar la consulta
    $contrasena_encriptada = password_hash($contrasena, PASSWORD_DEFAULT);

    try {
        $sql = "SELECT * FROM usuarios WHERE usuario = :usuario";
        $consulta = $conexion->prepare($sql);
        $consulta->execute(['usuario' => $usuario]);

        $resultado = $consulta->fetch(PDO::FETCH_ASSOC);

        if ($resultado && password_verify($contrasena, $resultado['contraseña'])) {
            $_SESSION['usuario'] = "ok";
            $_SESSION['nombreUsuario'] = $resultado['nombre'];
            header("Location: inicio.php");
            exit; // Terminar el script después de redirigir
        } else {
            $mensaje = "Error: El usuario o contraseña son incorrectos";
        }
    } catch (Exception $ex) {
        echo "Ocurrió un error al intentar conectar con la base de datos: " . $ex->getMessage();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
    <div class="col">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 mt-5">
                <div class="card">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                        <?php if(isset($mensaje)){?>
                        <div class="alert alert-danger" role="alert">
                            <?php echo $mensaje;?>
                        </div>
                        <?php } ?>
                        <form class="d-flex flex-column" method="POST" action="index.php">
                            <label>Usuario</label>
                            <input type="text" class="form-control" name="usuario" placeholder="Escribe tu usuario">
                            <label for="exampleInputPassword1">Contraseña:</label>
                            <input type="password" class="form-control" name="contraseña" placeholder="Escribe tu contraseña">
                            <button type="submit" class="btn btn-primary mt-2">Ingresar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
