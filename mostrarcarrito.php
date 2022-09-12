<?php include('administrador/config/bd.php');?>
<?php include('template/cabecera.php');?>
<?php include('./carrito.php');?>



<div class=" mx-3 col-6">
<?php if (!empty($_SESSION['carrito'])) {
    
?>
<h3 class="text-center">Lista del carrito</h3>
<table class="table table-ligth table-bordered ">
    <thead>
        <tr>
            <th width="40%">Descripcion</th>
            <th width="15%" class="text-center">Cantidad</th>
            <th width="20%" class="text-center">Precio</th>
            <th width="20%" class="text-center">Total</th>
            <th width="5%">---</th>
        </tr>

        <?php $total = 0;?>
        <?php foreach ($_SESSION['carrito'] as $indice=>$producto){?>
        <tr>
            <td width="40%"><?php echo $producto['NOMBRE'];?></td>
            <td width="15%" class="text-center"><?php echo $producto['CANTIDAD'];?></td>
            <td width="20%" class="text-center"><?php echo $producto['PRECIO'];?></td>
            <td width="20%" class="text-center"><?php echo number_format($producto['PRECIO']*$producto['CANTIDAD'],2);?></td>
            <td width="5%">
                <form action="" method="post">

                <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['ID'],COD,KEY) ;?>">
                    <button 
                        type="submit" 
                        name="btnAccion"
                        value="Eliminar"
                        class="btn btn-danger">
                        Eliminar</button>
                </form> 
            </td>

        </tr>
        <?php $total = $total+($producto['PRECIO']*$producto['CANTIDAD']);?>
        <?php } ?>
        <tr>
            <td colspan="3" class="text-end"><h3>Total</h3></td>
            <td  class="text-end"><h3>S./<?php echo number_format($total,2)?></h3></td>
            <td></td>
        </tr>
    </thead>
</table>
</div>
<!-- Contacto del cliente (correo) -->

<div class="col-5 card text-center">
<form action="pagar.php" method="post">
    <!-- <div class="alert alert-success" role="alert"> -->
            <div class="card-header">Información</div>
                <div class="card-body">
                    <div class="form-group">
                            <label for="my-input">Correo</label>
                            <input 
                                type="email" 
                                class="form-control bg-gradient mt-1" 
                                name="email" 
                                id="email"
                                placeholder="Escriba su correo electronico"
                                required
                            >
                    </div>
                        <small
                            id="emailHelp"
                            class="from-text text-muted"
                        >
                            Los productos se enviaran a este correo 
                        </small>
                </div>
                <button 
                    type="submit"
                    name="btnAccion"
                    class="btn btn-primary mb-3" 
                    value="proceder"
                >
                    Pagar
                </button>
                <!-- </div> -->
            </form>
</div>

    
<?php }else{ ?>
    <div class="alert alert-success">
        No hay productos en el carrito
    </div>
    <?php } ?>
<?php include('template/pie.php')?>