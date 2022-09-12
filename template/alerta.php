<?php if($mensaje != "") { ?>
<div class="container">
        <br>
        <div class="alert alert-success">
            <?php echo $mensaje?>   
            <a href="mostrarcarrito.php"><button class="btn btn-success"> Ver Carrito</button></a>
        </div>
    </div>
<?php } ?>