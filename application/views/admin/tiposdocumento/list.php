
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
       <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
         Tipos de Documento
         <small>Listado</small>
         </h1>
           
            <!-- Main content -->
            <section class="content">
                <!-- Default box -->
                <div class="box box-solid">
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-12">
                                <a href="#" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Tipo Documento</a>
                            </div>
                        </div>
                        <hr>
                <div class="row">
                    <div class="col-md-12">
                        <table id="example1" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Consecutivo</th>
                                    <th>Nombre</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if(!empty($tiposdocumentos)):?>
                                    <?php foreach($tiposdocumentos as $tiposdocumento):?>
                                        <tr>
                                            <td><?php echo $tiposdocumento->id;?></td>
                                            <td><?php echo $tiposdocumento->nombre;?></td>
                                            
                                            <td>
                                                <div class="btn-group">
                                                    <a href="#" class="btn btn-info"><span class="fa fa-eye"></span></a>
                                                       
                                                    <a href="#" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                                                    <a href="#" class="btn btn-danger"><span class="fa fa-remove"></span></a>
                                                </div>
                                            </td>
                                        </tr>
                                    <?php endforeach;?>
                                <?php endif;?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
                    <!-- /.box-body -->
        </div>
                <!-- /.box -->
    </section>
            <!-- /.content -->
</div>

