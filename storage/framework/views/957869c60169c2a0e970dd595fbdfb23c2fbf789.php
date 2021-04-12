<?php $__env->startSection('page_title', 'Viendo Investigaciones'); ?>

<?php $__env->startSection('page_header'); ?>
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="voyager-browser"></i> Investigaciones
        </h1>
        <a href="<?php echo e(route('proyectos.create')); ?>" class="btn btn-success btn-add-new">
            <i class="voyager-plus"></i> <span><?php echo e(__('voyager::generic.add_new')); ?></span>
        </a>
        
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="page-content browse container-fluid">
        <?php echo $__env->make('voyager::alerts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table id="dataTable" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Área</th>
                                        <th>Nombre</th>
                                        <th>Estado actual</th>
                                        <th>Avance</th>
                                        <th class="actions text-right">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__empty_1 = true; $__currentLoopData = $registros; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                    <tr>
                                        <td><?php echo e($item->id); ?></td>
                                        <td><?php echo e($item->area); ?></td>
                                        <td><?php echo e($item->nombre); ?></td>
                                        <td><?php echo e($item->estado); ?></td>
                                        <td><?php echo e($item->avance); ?>%</td>
                                        <td class="no-sort no-click text-right" id="bread-actions">
                                            <a href="#" class="btn btn-sm btn-success btn-fase view" data-toggle="modal" data-target="#fasesModal" data-id="<?php echo e($item->id); ?>" data-detalles="<?php echo e($item->detalles); ?>" data-monto="<?php echo e($item->monto); ?>" data-monto="<?php echo e($item->monto); ?>"> <i class="voyager-list"></i> <span>Fases</span></a>
                                            <a href="#" class="btn btn-sm btn-dark btn-observaciones view" data-toggle="modal" data-target="#detallesModal" data-id="<?php echo e($item->id); ?>"> <i class="voyager-list"></i> <span>Observaciones</span></a>
                                            <a href="<?php echo e(route('proyectos.show', ['id' => $item->id])); ?>" class="btn btn-sm btn-warning view"> <i class="voyager-eye"></i> <span>Ver</span></a>
                                            <a href="<?php echo e(route('proyectos.edit', ['id' => $item->id])); ?>" class="btn btn-sm btn-primary edit"> <i class="voyager-edit"></i> <span>Editar</span></a>
                                            <a href="#" data-toggle="modal" data-target="#modal_delete" data-id="<?php echo e($item->id); ?>" class="btn btn-sm btn-danger delete"> <i class="voyager-trash"></i> <span>Borrar</span></a>
                                        </td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>

                                    <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <form id="form-fases" action="<?php echo e(route('store_detalle')); ?>" method="post" enctype="multipart/form-data">
        <div class="modal modal-success fade" id="fasesModal" tabindex="-1" role="dialog" aria-labelledby="fasesModalTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title"><i class="voyager-move"></i> Cambiar fase del proyecto</h4>
                </div>
                <div class="modal-body">
                    <?php echo csrf_field(); ?>
                    <input type="hidden" name="id">
                    <div class="form-group">
                        <label>Fase</label>
                        <select name="proyectos_estado_id" id="proyectos_estado_id" class="form-control" required>
                            
                        </select>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Monto a ejecutar</label>
                            <div class="input-group">
                                <input type="number" min="1" step="1" name="monto_ejecutado" id="input-monto_ejecutado" class="form-control" required>
                                <span class="input-group-addon" id="basic-addon1">Bs.</span>
                            </div>
                            <label class="label-monto"></label>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Porcentaje de avance <b class="label-avance"></b></label>
                            <div class="input-group">
                                <input type="number" min="1" step="1" name="avance" class="form-control" required>
                                <span class="input-group-addon" id="basic-addon1">%</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Observaciones</label>
                        <textarea name="observaciones" class="form-control" rows="10" placeholder="Describe las observaciones del cambio de fase del proyecto..."></textarea>
                    </div>
                    <div class="form-group">
                        <label>Archivo</label>
                        <input type="file" name="archivo" accept="application/pdf">
                    </div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="submit" class="btn btn-success">Aceptar</button>
                </div>
            </div>
            </div>
        </div>
    </form>

    
    <form id="form-observaciones" action="<?php echo e(route('store_observaciones')); ?>" method="post">
        <div class="modal modal-primary fade" id="detallesModal" tabindex="-1" role="dialog" aria-labelledby="detallesModal" aria-hidden="true">
            <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title"><i class="voyager-list"></i> Agregar observacion</h4>
                </div>
                <div class="modal-body">
                    <?php echo csrf_field(); ?>
                    <input type="hidden" name="id">
                    <div class="form-group">
                        <label>Título</label>
                        <input type="text" name="titulo" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Detalle</label>
                        <textarea name="detalle" class="form-control" rows="10" placeholder="Describe los detalles de la observación..."></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-dark">Aceptar</button>
                </div>
            </div>
            </div>
        </div>
    </form>

    
    <div class="modal modal-danger fade" tabindex="-1" id="modal_delete" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title"><i class="voyager-trash"></i> Estás seguro que quieres eliminar este poyecto?</h4>
                </div>
                <div class="modal-footer">
                    <form action="<?php echo e(route('proyectos.destroy', ['id' => '__id'])); ?>" id="delete_form" method="POST">
                        <?php echo csrf_field(); ?>
                        <?php echo e(method_field('DELETE')); ?>

                        <input type="submit" class="btn btn-danger pull-right delete-confirm" value="Sí, ¡Bórralo!">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('css'); ?>
    <link rel="stylesheet" href="<?php echo e(voyager_asset('lib/css/responsive.dataTables.min.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript'); ?>
    <script src="<?php echo e(voyager_asset('lib/js/dataTables.responsive.min.js')); ?>"></script>
    <script>
        $(document).ready(function () {
            $('#dataTable').DataTable({"order":[],"language":{"sEmptyTable":"No hay datos disponibles en la tabla","sInfo":"Mostrando _START_ a _END_ de _TOTAL_ entradas","sInfoEmpty":"Mostrando 0 a 0 de 0 entradas","sInfoFiltered":"(Filtrada de _MAX_ entradas totales)","sInfoPostFix":"","sInfoThousands":",","sLengthMenu":"Mostrar _MENU_ entradas","sLoadingRecords":"Cargando...","sProcessing":"Procesando...","sSearch":"Buscar:","sZeroRecords":"No se encontraron registros coincidentes","oPaginate":{"sFirst":"Primero","sLast":"\u00daltimo","sNext":"Siguiente","sPrevious":"Anterior"},"oAria":{"sSortAscending":": Activar para ordenar la columna ascendente","sSortDescending":": Activar para ordenar la columna descendente"}},"columnDefs":[{"targets":-1,"searchable":false,"orderable":false}]});

            $('.btn-fase').click(function(){
                $('#form-fases input[name="id"]').val($(this).data('id'));
                let detalles = $(this).data('detalles');
                let monto = parseFloat($(this).data('monto'));
                let porcentaje = detalles[detalles.length-1].avance;
                let proyectos_estado_id = detalles[detalles.length-1].proyectos_estado_id;
                let monto_ejecutado = 0;

                detalles.map(item => {
                    monto_ejecutado += parseFloat(item.monto_ejecutado)
                });

                $('.label-monto').text(`${(monto-monto_ejecutado).toFixed(2)} Bs. de ${(monto).toFixed(2)} Bs.`);
                $('#input-monto_ejecutado').prop('max', (monto-monto_ejecutado));
                $('.label-avance').text(` (${porcentaje}%)`);

                let estado = <?php echo json_encode($estados_proyectos, 15, 512) ?>;
                let options = '';
                let activo = '';
                estado.map(item => {
                    if(item.id > proyectos_estado_id){
                        options += `<option value="${item.id }" ${activo}>${item.nombre}</option>`;
                        activo = 'disabled';
                    }
                });
                $('#proyectos_estado_id').html(options);
            });

            $('.btn-observaciones').click(function(){
                $('#form-observaciones input[name="id"]').val($(this).data('id'));
            });

            $('.delete').click(function(){
                let action = $('#delete_form').attr('action');
                $('#delete_form').attr('action',  action.replace('__id', $(this).data('id')));
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('voyager::master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\proyectos\resources\views/proyectos/proyectos_index.blade.php ENDPATH**/ ?>